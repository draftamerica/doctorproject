require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require 'rake'
require './models'
require 'better_errors'
require 'binding_of_caller'

# set :database, "sqlite3:doctors.sqlite3"
set :database, {adapter: "sqlite3", database: "doctor.sqlite3"}
register Sinatra::ActiveRecordExtension
# ===== index =======
get '/' do
    erb :index
end

# ===== patients =====
get '/patients' do
    @patients = Patient.all
    erb :patients
end


post '/displaypatientdata' do
    pt_params = params[:patient]
    emr_params = params[:emr]
    puts "*****pt_params.inspect: #{pt_params.inspect}"
    puts "*****emr_params.inspect: #{emr_params.inspect}"
    Emr.new(
        diagnosis: emr_params[:diagnosis],
        prognosis: emr_params[:prognosis],
    )
    @emr = Emr.order("created_at").last
    puts "*****@emr.inspect: #{@emr.inspect}"

    @patient = Patient.new(
        first_name: pt_params[:first_name],
        last_name: pt_params[:last_name],
    )

    if @patient.save
        puts 'saved new patient!'
        puts @patient
    end

erb :displaypatientdata




    # ==== savepatientdata =====
    # get '/displaypatientdata' do
    #     @patients = Patient.find(params[:id])
    #     erb :displaypatientdata
    # end

    # post '/displaypatientdata' do

        # puts "*****params.inspect: #{params.inspect}"
        # Patient.create(
        # firstName: params[:firstName],
        # lastName: params[:lastName],
        # emr_ID: params[:emr_ID]
        # )
        #
        # @patient = patientPatient.order
        #
        # erb :displaypatientdata
    # end

    # ===== appointments ======
    # get '/appointments' do
    #     erb :appointments
    # end
    #
    # # ===== doctors =====
    # get '/doctors' do
    #     erb :doctors
    # end
end
