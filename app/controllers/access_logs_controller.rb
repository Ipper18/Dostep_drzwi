class AccessLogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_log, only: [:show]

  # GET /access_logs or /access_logs.json
  def index
    @access_logs = AccessLog.all
  end

  # GET /access_logs/1 or /access_logs/1.json
  def show
    @access_log = AccessLog.find(params[:id])
  end

  # Możesz dodać dodatkowe metody prywatne, jeśli potrzebujesz wspólnych ustawień lub ograniczeń dla akcji

  private

  # Jeśli chcesz użyć callbacków dla akcji show (jak w przypadku set_room w RoomsController),
  # możesz dodać metodę ustawiającą access_log, podobną do tej poniżej:

  # def set_access_log
  #   # Upewnij się, że masz odpowiedni model AccessLog z odpowiednim kluczem głównym
  #   # Ta metoda znajdzie log dostępu na podstawie przekazanego ID
  #   @access_log = AccessLog.find(params[:id])
  # end
end
