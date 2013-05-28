#encoding: utf-8

class Member < ActiveRecord::Base

versioned :dependent => :tracking
attr_accessible :updated_by

validates_presence_of :Nimi
validates_presence_of :Jno
validates_presence_of :Sotu
validates_presence_of :Liittynyt
validates_presence_of :JK
validates_presence_of :Osoite
validates_presence_of :Posti
validates_presence_of :MatkaPuh

validates :Nimi, :format => { :with =>  /^[\D]*$/, :message => "Ei numeroita" }

validates_numericality_of :Jno, :only_integer => true

has_many :BoatsMembers
has_many :boats, :through => :BoatsMembers
 attr_accessible :boats, :Ammatti, :Avain, :EmailFax, :Huom, :JK, :Jno, :KotiPuh, :Laivuri, :Liittynyt, :Lisenssi, :Maa, :MatkaPuh, :MuutosPvm, :Nimi, :Osoite, :Posti, :Sotu, :Toimi, :TyoPuh, :Varasto
end
