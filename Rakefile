task :default => :tu

desc "Pruebas unitarias de la clase Racional"
task :tu do
  sh "ruby -I. test/tc_racional.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/tc_racional.rb -n /simple/"
end

desc "Ejecutar solo las pruebas de operaciones"
task :operaciones do
  sh "ruby -I. test/tc_racional.rb -n /operaciones/"
end

desc "Ejecutar solo las pruebas de simplificación"
task :simplificar do
  sh "ruby -I. test/tc_racional.rb -n /simplificar/"
end
