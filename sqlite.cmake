find_path(SQLITE_INCLUDE CppSQLite3.h PATHS ${CMAKE_CURRENT_LIST_DIR})

find_path(SQLITE_LIB_RELEASE CppSQLite3.lib PATHS ${CMAKE_CURRENT_LIST_DIR}/cmake64/release)
find_path(SQLITE_LIB_DEBUG CppSQLite3.lib PATHS ${CMAKE_CURRENT_LIST_DIR}/cmake64/debug)
set(_suffix vs110_64)

include_directories(${SQLITE_INCLUDE})

if(${AZI_STATIC_LIBS})
  set(Sqlite_LIBRARIES debug ${SQLITE_LIB_DEBUG}/sqlite3_static.lib debug ${SQLITE_LIB_DEBUG}/CppSQLite3.lib optimized ${SQLITE_LIB_RELEASE}/sqlite3_static.lib optimized ${SQLITE_LIB_RELEASE}/CppSQLite3.lib)
else(${AZI_STATIC_LIBS})
  set(Sqlite_LIBRARIES debug ${SQLITE_LIB_DEBUG}/sqlite3d_${_suffix}.lib debug ${SQLITE_LIB_DEBUG}/CppSQLite3.lib optimized ${SQLITE_LIB_RELEASE}/sqlite3${_suffix}.lib optimized ${SQLITE_LIB_RELEASE}/CppSQLite3.lib)
endif(${AZI_STATIC_LIBS})

macro(AziSqlite)
endmacro(AziSqlite)