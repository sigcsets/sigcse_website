# doi.rb
# manuel
# Plugin for Jekyll to create the tag "doi",
# thus allows use to encode references as
# doi and have them rendered as a full citation*
#
# {% doi 10.1145/1734263.1734272 %}
#
# Joanna Goode. 2010. Connecting k-16 
# curriculum {\&}amp$\mathsemicolon$ policy},. 
# In Proceedings of the 41st ACM technical symposium 
# on Computer science education.
#
# Depends on doi2bib python command line to 
# collect the doi bibtex data

module Jekyll
  class RenderDOITag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @doi = text
      cmd = "/usr/local/bin/doi2bib #{text}"
      @bib = `#{cmd}`
    end

# Two types
# @inproceedings for papers
# @inproceedings{Goode_2010,
#   doi = {10.1145/1734263.1734272},
#   url = {https://doi.org/10.1145%2F1734263.1734272},
#   year = 2010,
#   month = {mar},
#   publisher = {{ACM}},
#   author = {Joanna Goode},
#   title = {Connecting k-16 curriculum {\&}amp$\mathsemicolon$ policy},
#   booktitle = {Proceedings of the 41st {ACM} technical symposium on Computer science education}
# }
#
# and
# @misc for proceedings
# @misc{2023,
#   doi = {10.1145/3545945},
#   url = {https://doi.org/10.1145%2F3545945},
#   year = 2023,
#   month = {mar},
#   publisher = {{ACM}},
#   title = {Proceedings of the 54th {ACM} Technical Symposium on Computer Science Education V. 1}
# }

    def render(context)
      author = @bib.match /\s+author\s+=\s+\{([^\}]+)\},/
      year = @bib.match /\s+year\s+=\s+([^,]+),/
      title = @bib.match /\s+title\s+=\s+\{(.+)\}/
      proceedings = @bib.match /\s+booktitle\s+=\s+\{(.+)\},*/
      proceedings = proceedings[1].tr('{}', '')
      publisher = @bib.match /\s+publisher\s+=\s+\{(.+)\},*/
      publisher = publisher[1].tr('{}', '')
      ref = "#{author[1]}. #{year[1]}. #{title[1]}. In #{proceedings}. #{publisher}<br>doi: <a href=\"https://doi.org/#{@doi}\">#{@doi}</a>"
      "#{ref}"
    end
  end
end

Liquid::Template.register_tag('doi', Jekyll::RenderDOITag)
