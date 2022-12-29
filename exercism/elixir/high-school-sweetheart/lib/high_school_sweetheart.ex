defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    first_name = String.split(full_name, " ") |> List.first()
    second_name = String.split(full_name, " ") |> List.last()
    "#{initial(first_name)} #{initial(second_name)}"
  end

  def pair(full_name1, full_name2) do
    first = initials(full_name1)
    second = initials(full_name2)
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{first}  +  #{second}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
