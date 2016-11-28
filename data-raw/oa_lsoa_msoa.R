# Create .RData version of csv lookups

# Packages ====
source("R/packages.R")


# Obtain OA > LSOA > MSOA 2011 lookup from:
# http://ons.maps.arcgis.com/home/item.html?id=baf6566ca08949c6bbd61ff81d9526da
# Copy into inst/extdata/
# Unzip

oa_lsoa_msoa_lad <-
  readr::read_csv("inst/extdata/OA11_LSOA11_MSOA11_LAD11_EW_LUv2.csv") %>%
  rename(
    oa_cd   = OA11CD,
    lsoa_cd = LSOA11CD,
    lsoa_nm = LSOA11NM,
    msoa_cd = MSOA11CD,
    msoa_nm = MSOA11NM,
    lad_cd  = LAD11CD,
    lad_nm  = LAD11NM,
    lad_nmw = LAD11NMW
  )

save(oa_lsoa_msoa_lad, file = "data/oa_lsoa_msoa_lad.RData", compress = "xz")
