# for vxl files run the vxl_doxy.pl script, and use itkgroup.pl for all other files
if ( $ARGV[0] =~ /(vxl|vcl|vnl)/)
{
    system ("perl /home/snr/Support/Plus-build-codeblocks/itk/Utilities/Doxygen/vxl_doxy.pl $ARGV[0]");
}
else
{
    system ("perl /home/snr/Support/Plus-build-codeblocks/itk/Utilities/Doxygen/itkgroup.pl $ARGV[0]");
}
