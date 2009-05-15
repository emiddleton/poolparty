require File.dirname(__FILE__)+"/../lib/poolparty"

pool :poolparty do
  
  cloud :metavirt do
    keypair "front"
    instances 1
    using :metavirt do
      authorized_keys 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCTppECfx7Tb0zoviRfqFaePyAek6+ZktKkHiTHu/jkhG1s4q1oHEe89no21xLxuReyJrDlNe8rLxxZzoYCaAWRdhcqMR3BNqb2w2jpF4pH+bFj0557KrwWP6HSNpRRkyYhxLqZbuH/2t3TzkPevZbcfSYa09jIzqnmTruh9l1s+n5E3cNr/RDdDn7tv3Ok7mKN7GEjkK7F83Pt9xviHevg22xqzm99nS+hg6Kl/fQUTO6pOmC5x+9V47RJz1+9WdhGJ7M83zijX9rMnAwrR5LFoL6aZyyU0G71SpoIL5e8XD/jt1WNKFJOfG8YMLb3i03UABm/Q5Q30+R7UoRxSWRX'
      server_config = {:host=>'localhost', :port=>3000}
      using :vmrun do
        vmx_files [
          ::File.expand_path("~/Documents/Virtual\ Machines.localized/Ubuntu-jaunty.vmwarevm/Ubuntu-jaunty.vmx")
        ]
        puts "i am in the vmrun block"
      end
    end
  end
  
end

