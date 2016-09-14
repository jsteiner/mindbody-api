module EnvHelper
  def stub_env(env)
    stub_const("ENV", env)
  end

  def with_env(variable, value)
    old_value = ENV[variable]
    ENV[variable] = value
    yield
  ensure
    ENV[variable] = old_value
  end
end

RSpec.configure do |config|
  config.include EnvHelper
end
