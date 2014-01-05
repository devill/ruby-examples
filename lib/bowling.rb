class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    sum = 0
    first_ball_in_frame = 0
    (1..10).each do |_|
      if stirke?(first_ball_in_frame)
        sum += 10 + bonus_for_strike(first_ball_in_frame)
        first_ball_in_frame += 1
      elsif spare?(first_ball_in_frame)
        sum += 10 + bonus_for_spare(first_ball_in_frame)
        first_ball_in_frame += 2
      else
        sum += @rolls[first_ball_in_frame] + @rolls[first_ball_in_frame+1]
        first_ball_in_frame += 2
      end
    end
    sum
  end

  private

  def bonus_for_strike(first_ball_in_frame)
    @rolls[first_ball_in_frame+1] + @rolls[first_ball_in_frame+2]
  end

  def bonus_for_spare(first_ball_in_frame)
    @rolls[first_ball_in_frame+2]
  end

  def stirke?(first_ball_in_frame)
    @rolls[first_ball_in_frame] == 10
  end

  def spare?(first_ball_in_frame)
    @rolls[first_ball_in_frame] + @rolls[first_ball_in_frame+1] == 10
  end
end