class HomeController < ApplicationController
  def algemene_voorwaarden
  end

  def disclaimer
  end

  def privacy
  end

  def klachten
  end

  def tarieven
  end

  def veelgestelde_vragen
  end
  def home
  end

  def diensten
  end

  def samenwerkingen
  end

  def contact
    @message = Message.new
  end

  def over
  end

  def overig
  end
end
