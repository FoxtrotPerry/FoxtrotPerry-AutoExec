defmodule FPautoexec.Code do

  @doc """
    Will read in the file specified and execute code based on its contents
  """
  def readFile(path) do
    file = File.read!(path)
    IO.inspect file
  end

  @doc """
    Will scan the directory found at the end of 'file_directory' for the file passed in through 'file_name'
    and will monitor changes within the file.

    If a file is found to have been changed, the script will decide what to do about it and will edit the
    .cfg file accordingly
  """
  def scanFile(file_directory,file_name) do

  end
end
