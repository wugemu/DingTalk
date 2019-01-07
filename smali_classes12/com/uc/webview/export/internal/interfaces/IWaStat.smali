.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IWaStat;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;
    }
.end annotation


# static fields
.field public static final ACTIVATE_PUSH_PROCESS:Ljava/lang/String; = "sdk_act_pp"

.field public static final ACTIVATE_PUSH_PROCESS_DEFAUT_CONFIG:Ljava/lang/String; = "sdk_act_pp_default_cfg"

.field public static final ACTIVATE_PUSH_PROCESS_UCM_CD:Ljava/lang/String; = "sdk_act_pp_ucm_cd"

.field public static final CD_CP_TYPE_IP:Ljava/lang/String; = "cd_cp_ip"

.field public static final CD_CP_TYPE_LOCATION:Ljava/lang/String; = "cd_cp_lo"

.field public static final CD_DISPATCH_REQUEST_TASK:Ljava/lang/String; = "dis_req_task"

.field public static final CD_INIT_TASK_COUNT:Ljava/lang/String; = "cd_init_task"

.field public static final CD_INIT_TASK_SUCCESS:Ljava/lang/String; = "cd_init_suc"

.field public static final CD_JOSN_CMD_PARSR_COUNT:Ljava/lang/String; = "cd_pp_co"

.field public static final CD_JOSN_CMD_PARSR_FAILUE:Ljava/lang/String; = "cd_pp_fa"

.field public static final CD_JOSN_CMD_PARSR_SUCCESS:Ljava/lang/String; = "cd_pp_su"

.field public static final CD_SWITCH_STAT:Ljava/lang/String; = "CD_SWITCH_STAT"

.field public static final CD_UTDID_FAILURE:Ljava/lang/String; = "cd_utdid_fai"

.field public static final CD_UTDID_SUCCESS:Ljava/lang/String; = "cd_utdid_suc"

.field public static final CORE_DOWNLOAD:Ljava/lang/String; = "sdk_cdl"

.field public static final CORE_ERROR_CODE_DOWNLOAD:Ljava/lang/String; = "sdk_ecdl0"

.field public static final CORE_ERROR_CODE_UNZIP:Ljava/lang/String; = "sdk_ecuz0"

.field public static final CORE_ERROR_CODE_UPDATE_CHECK_REQUEST:Ljava/lang/String; = "sdk_ecur0"

.field public static final CORE_ERROR_CODE_VERIFY:Ljava/lang/String; = "sdk_ecv0"

.field public static final DEC:Ljava/lang/String; = "sdk_dec"

.field public static final DEC_EXCEPTION:Ljava/lang/String; = "sdk_dec_e"

.field public static final DEC_SUCCESS:Ljava/lang/String; = "sdk_dec_s"

.field public static final DEC_ZIP:Ljava/lang/String; = "sdk_decz"

.field public static final DEC_ZIP_SUCCESS:Ljava/lang/String; = "sdk_decz_s"

.field public static final DOWNLOAD:Ljava/lang/String; = "sdk_dl"

.field public static final DOWNLOAD_EXCEPTION:Ljava/lang/String; = "sdk_dl_e"

.field public static final DOWNLOAD_EXISTS:Ljava/lang/String; = "sdk_dl_x"

.field public static final DOWNLOAD_FAILED:Ljava/lang/String; = "sdk_dl_f"

.field public static final DOWNLOAD_RECOVERED:Ljava/lang/String; = "sdk_dl_r"

.field public static final DOWNLOAD_SUCCESS:Ljava/lang/String; = "sdk_dl_s"

.field public static final ERROR_CODE_INIT:Ljava/lang/String; = "sdk_eci"

.field public static final KEY_ART:Ljava/lang/String; = "art"

.field public static final KEY_CLASS:Ljava/lang/String; = "cls"

.field public static final KEY_CNT:Ljava/lang/String; = "cnt"

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_COST:Ljava/lang/String; = "cost"

.field public static final KEY_COST_CPU:Ljava/lang/String; = "cost_cpu"

.field public static final KEY_CPU_CNT:Ljava/lang/String; = "cpu_cnt"

.field public static final KEY_CPU_FREQ:Ljava/lang/String; = "cpu_freq"

.field public static final KEY_CRASH:Ljava/lang/String; = "crash"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DIR:Ljava/lang/String; = "dir"

.field public static final KEY_DVM:Ljava/lang/String; = "dvm"

.field public static final KEY_DVM2:Ljava/lang/String; = "dvm2"

.field public static final KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final KEY_ERRNO:Ljava/lang/String; = "err"

.field public static final KEY_FIRST_RUN:Ljava/lang/String; = "frun"

.field public static final KEY_FREE_DISK_SPACE:Ljava/lang/String; = "free_disk_space"

.field public static final KEY_FREE_DISK_SPACE_BEFORE:Ljava/lang/String; = "free_disk_space_before"

.field public static final KEY_HOOK_RUN_AS_EXPECTED:Ljava/lang/String; = "run_expected"

.field public static final KEY_HOOK_SUCCESS:Ljava/lang/String; = "hook_succ"

.field public static final KEY_LINK_SO_CODE:Ljava/lang/String; = "link_so_code"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final KEY_MULTI_CORE:Ljava/lang/String; = "multi_core"

.field public static final KEY_OLD:Ljava/lang/String; = "old"

.field public static final KEY_PRIORITY:Ljava/lang/String; = "pri"

.field public static final KEY_SDK_INT:Ljava/lang/String; = "sdk_int"

.field public static final KEY_SUCCESS:Ljava/lang/String; = "succ"

.field public static final KEY_SYSTEM_NEW_WEBVIEW_PV:Ljava/lang/String; = "swv_npv"

.field public static final KEY_SYSTEM_SETUP_PV:Ljava/lang/String; = "swv_spv"

.field public static final KEY_TASK:Ljava/lang/String; = "task"

.field public static final KEY_WIFI:Ljava/lang/String; = "wifi"

.field public static final MERGE_ADD:I = 0x0

.field public static final MERGE_REPLACE:I = 0x1

.field public static final MIDDLEWARE_CD_DISPATCH_REQUEST:Ljava/lang/String; = "mid_cd_dis_req"

.field public static final MIDDLEWARE_CD_EXCEPTION:Ljava/lang/String; = "mid_cd_parse_ex"

.field public static final MIDDLEWARE_CD_FAILURE:Ljava/lang/String; = "mid_cd_parse_fai"

.field public static final MIDDLEWARE_CD_FILE_EXCEPTION:Ljava/lang/String; = "mid_file_cd_parse_ex"

.field public static final MIDDLEWARE_CD_FILE_FAILURE:Ljava/lang/String; = "mid_file_cd_parse_fai"

.field public static final MIDDLEWARE_CD_FILE_NOT_EXIST:Ljava/lang/String; = "mid_file_cd_exi"

.field public static final MIDDLEWARE_CD_FILE_PARSE:Ljava/lang/String; = "mid_file_cd_parse"

.field public static final MIDDLEWARE_CD_FILE_SUCCESS:Ljava/lang/String; = "mid_file_cd_parse_suc"

.field public static final MIDDLEWARE_CD_JS_UPDATE:Ljava/lang/String; = "mid_cd_js_update"

.field public static final MIDDLEWARE_CD_PARSE:Ljava/lang/String; = "mid_cd_parse"

.field public static final MIDDLEWARE_CD_PARSE_PARAM_ILLEGAL:Ljava/lang/String; = "mid_cd_parse_ill"

.field public static final MIDDLEWARE_CD_RESPOND_DO_BACKGROUND:Ljava/lang/String; = "mid_cd_req_do_bac"

.field public static final MIDDLEWARE_CD_RESPOND_FAILURE:Ljava/lang/String; = "mid_cd_req_fai"

.field public static final MIDDLEWARE_CD_RESPOND_FINISH:Ljava/lang/String; = "mid_cd_req_fin"

.field public static final MIDDLEWARE_CD_RESPOND_RECEIVE:Ljava/lang/String; = "mid_cd_req_rec"

.field public static final MIDDLEWARE_CD_RESPOND_STATUS_CODE:Ljava/lang/String; = "mid_cd_req_st_co"

.field public static final MIDDLEWARE_CD_RESPOND_SUCCESS:Ljava/lang/String; = "mid_cd_req_suc"

.field public static final MIDDLEWARE_CD_SUCCESS:Ljava/lang/String; = "mid_cd_parse_suc"

.field public static final SETPARAM_CD_ISSUED_FAILURE:Ljava/lang/String; = "setparam_cd_parse_failure"

.field public static final SETPARAM_CD_ISSUED_SUCCESS:Ljava/lang/String; = "setparam_cd_parse_success"

.field public static final SETPARAM_CD_PARSE:Ljava/lang/String; = "setparam_cd_parse"

.field public static final SETUP_CUR_UCCORE_COST_HOUR:Ljava/lang/String; = "stp_curuc_hour"

.field public static final SETUP_DEFAULT_EXCEPTION:Ljava/lang/String; = "sdk_stp_def_exc"

.field public static final SETUP_DELETE_CORE_COUNT:Ljava/lang/String; = "sdk_stp_dcc"

.field public static final SETUP_EXTRA_EXCEPTION:Ljava/lang/String; = "sdk_stp_ext_exc"

.field public static final SETUP_REPAIR:Ljava/lang/String; = "sdk_stp_rp"

.field public static final SETUP_REPAIR_EXCEPTION:Ljava/lang/String; = "sdk_stp_rep_exc"

.field public static final SETUP_START:Ljava/lang/String; = "sdk_stp"

.field public static final SETUP_START_FINISH:Ljava/lang/String; = "sdk_stp_fi"

.field public static final SETUP_SUCCESS:Ljava/lang/String; = "sdk_stp_suc"

.field public static final SETUP_SUCCESS_INITED:Ljava/lang/String; = "sdk_stp_i"

.field public static final SETUP_SUCCESS_LOADED:Ljava/lang/String; = "sdk_stp_l"

.field public static final SETUP_SUCCESS_SETUPED:Ljava/lang/String; = "sdk_stp_s"

.field public static final SETUP_TASK_DEXOPT:Ljava/lang/String; = "sdk_opt"

.field public static final SETUP_TASK_HOOKDEX:Ljava/lang/String; = "sdk_hookdex"

.field public static final SETUP_TASK_INIT:Ljava/lang/String; = "sdk_ini"

.field public static final SETUP_TASK_LIBARY:Ljava/lang/String; = "sdk_lib"

.field public static final SETUP_TASK_UCDEXOPT:Ljava/lang/String; = "sdk_ucdexopt"

.field public static final SETUP_TASK_UPDATE:Ljava/lang/String; = "sdk_upd"

.field public static final SETUP_TASK_VERIFY:Ljava/lang/String; = "sdk_vrf"

.field public static final SETUP_TOTAL_EXCEPTION:Ljava/lang/String; = "sdk_stp_exc"

.field public static final SETUP_UCCORE_COST_HOUR:Ljava/lang/String; = "stp_uc_hour"

.field public static final SEVENZIP:Ljava/lang/String; = "sdk_7z"

.field public static final SEVENZIP_CLEARHTTPCACHE:Ljava/lang/String; = "sdk_7z_clear_httpcache"

.field public static final SEVENZIP_EXCEPTION_CRC:Ljava/lang/String; = "sdk_7z_e3"

.field public static final SEVENZIP_EXCEPTION_FAILED:Ljava/lang/String; = "sdk_7z_e1"

.field public static final SEVENZIP_EXCEPTION_MEM:Ljava/lang/String; = "sdk_7z_e2"

.field public static final SEVENZIP_FILE:Ljava/lang/String; = "sdk_7z_f"

.field public static final SEVENZIP_FILE_SUCCESS:Ljava/lang/String; = "sdk_7z_fs"

.field public static final SEVENZIP_LIB:Ljava/lang/String; = "sdk_7z_l"

.field public static final SEVENZIP_LIB_SUCCESS:Ljava/lang/String; = "sdk_7z_ls"

.field public static final SEVENZIP_SUCCESS:Ljava/lang/String; = "sdk_7z_s"

.field public static final SHARE_CORE_COPY_HAS_EXISTS_PV:Ljava/lang/String; = "csc_chev"

.field public static final SHARE_CORE_COPY_OTHER_PV:Ljava/lang/String; = "csc_corv"

.field public static final SHARE_CORE_COPY_SUCCESS_PV:Ljava/lang/String; = "csc_cspv"

.field public static final SHARE_CORE_COPY_TASK_MAIN_PROCESS_COUNT_PV:Ljava/lang/String; = "csc_cmcp"

.field public static final SHARE_CORE_COPY_TASK_NEW_PV:Ljava/lang/String; = "csc_ctnp"

.field public static final SHARE_CORE_COPY_TASK_RUN_CALL_PV:Ljava/lang/String; = "csc_crncp"

.field public static final SHARE_CORE_COPY_TASK_RUN_PV:Ljava/lang/String; = "csc_crnp"

.field public static final SHARE_CORE_COPY_TASK_TOTEL_COUNT_PV:Ljava/lang/String; = "csc_ctcp"

.field public static final SHARE_CORE_COPY_TASK_UPD_CALL_PV:Ljava/lang/String; = "csc_cupdcp"

.field public static final SHARE_CORE_COPY_TASK_UPD_PV:Ljava/lang/String; = "csc_cupdp"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_AUTHORITY:Ljava/lang/String; = "csc_cdra"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_COPY:Ljava/lang/String; = "csc_cdrc"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_DELETE:Ljava/lang/String; = "csc_cdrd"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_EXCEPIION:Ljava/lang/String; = "csc_cdre"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_PRECONDITION:Ljava/lang/String; = "csc_cdri"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_PROCESS:Ljava/lang/String; = "csc_cdrp"

.field public static final SHARE_CORE_COPY_TO_SDCARD_TASK_RESULT_TIMECOST:Ljava/lang/String; = "csc_cdrt"

.field public static final SHARE_CORE_CREATE_DELAY_DECOMPRESS_TASK_PV:Ljava/lang/String; = "csc_cddtp"

.field public static final SHARE_CORE_DELAY_DECOMPRESS_EXCEPTION_PV:Ljava/lang/String; = "csc_ddep"

.field public static final SHARE_CORE_DELAY_DECOMPRESS_START_PV:Ljava/lang/String; = "csc_ddspv"

.field public static final SHARE_CORE_DELAY_DECOMPRESS_SUCCESS_PV:Ljava/lang/String; = "csc_ddsp"

.field public static final SHARE_CORE_DELETE_CONFIG:Ljava/lang/String; = "csc_dcf"

.field public static final SHARE_CORE_DELETE_UPD_FILE_PV:Ljava/lang/String; = "csc_duftp"

.field public static final SHARE_CORE_DELETE_UPD_FILE_THREAD_CALL_PV:Ljava/lang/String; = "csc_dufrlp"

.field public static final SHARE_CORE_DELETE_UPD_FILE_THREAD_CB_PV:Ljava/lang/String; = "csc_dufrcp"

.field public static final SHARE_CORE_DELETE_UPD_FILE_THREAD_PV:Ljava/lang/String; = "csc_dufrp"

.field public static final SHARE_CORE_DELETE_UPD_FILE_THREAD_SH_PV:Ljava/lang/String; = "csc_dufrsp"

.field public static final SHARE_CORE_DEVICES_HAS_SHARE_CORE:Ljava/lang/String; = "csc_dhsc"

.field public static final SHARE_CORE_FAULTTOLERANCE_SETUP_TASK_EXCEPTION:Ljava/lang/String; = "csc_ftsre"

.field public static final SHARE_CORE_FAULTTOLERANCE_SETUP_TASK_KRL:Ljava/lang/String; = "csc_ftsrk"

.field public static final SHARE_CORE_FAULTTOLERANCE_SETUP_TASK_RUN:Ljava/lang/String; = "csc_ftsrc"

.field public static final SHARE_CORE_FAULTTOLERANCE_SETUP_TASK_ZIP:Ljava/lang/String; = "csc_ftsrz"

.field public static final SHARE_CORE_FAULT_TOLERANCE_TASK:Ljava/lang/String; = "csc_ftt"

.field public static final SHARE_CORE_GET_CORE_DEC_FILE_PATH:Ljava/lang/String; = "csc_gcdfp"

.field public static final SHARE_CORE_INIT_TASK_SUCCESS:Ljava/lang/String; = "csc_tsu"

.field public static final SHARE_CORE_INIT_TASK_SUCCESS_FAILUE:Ljava/lang/String; = "csc_tfi"

.field public static final SHARE_CORE_INIT_TASK_SUCCESS_IS_SHARECORE:Ljava/lang/String; = "csc_tis"

.field public static final SHARE_CORE_INIT_TASK_SUCCESS_NOT_SHARECORE:Ljava/lang/String; = "csc_tns"

.field public static final SHARE_CORE_LIST_SHARE_CORE_UCM:Ljava/lang/String; = "csc_lsu"

.field public static final SHARE_CORE_LOCATION_SETUP_TASK_RUN:Ljava/lang/String; = "csc_lsrc"

.field public static final SHARE_CORE_NEW_DEF_TASK:Ljava/lang/String; = "csc_ndft"

.field public static final SHARE_CORE_NEW_SC_TASK:Ljava/lang/String; = "csc_nsct"

.field public static final SHARE_CORE_NEW_UPD_TASK:Ljava/lang/String; = "csc_nupt"

.field public static final SHARE_CORE_NOT_UPD_SC_INIT_FAILURE_PV:Ljava/lang/String; = "csc_nsifp"

.field public static final SHARE_CORE_NOT_UPD_SC_INIT_SUCCESS_PV:Ljava/lang/String; = "csc_nsisp"

.field public static final SHARE_CORE_SDCARD_SETUP_DELAY_COMPRESS:Ljava/lang/String; = "csc_ssdcb"

.field public static final SHARE_CORE_SDCARD_SETUP_TASK_EXCEPTION:Ljava/lang/String; = "csc_ssse"

.field public static final SHARE_CORE_SDCARD_SETUP_TASK_LOCATION_DEC:Ljava/lang/String; = "csc_ssld"

.field public static final SHARE_CORE_SDCARD_SETUP_TASK_RUN:Ljava/lang/String; = "csc_ssrc"

.field public static final SHARE_CORE_SDCARD_SETUP_TASK_SDCARD:Ljava/lang/String; = "csc_sssd"

.field public static final SHARE_CORE_SDK_SIG_VERIFY_EXCEPTION:Ljava/lang/String; = "csc_sigvrfe"

.field public static final SHARE_CORE_SDK_SIG_VERIFY_EXCEPTION_VALUE:Ljava/lang/String; = "csc_sigvrfe_v"

.field public static final SHARE_CORE_SDK_SUCCESS_CB_INIT_PV:Ljava/lang/String; = "csc_sscip"

.field public static final SHARE_CORE_SDK_SUCCESS_CB_TOTEL_PV:Ljava/lang/String; = "csc_ssctp"

.field public static final SHARE_CORE_SDK_VERSION_CHECK_FAILURE:Ljava/lang/String; = "csc_vvfckf"

.field public static final SHARE_CORE_SDK_VERSION_CONFIG:Ljava/lang/String; = "csc_vconf"

.field public static final SHARE_CORE_SDK_VERSION_DEC_CORE_FILE_EXCEPTION:Ljava/lang/String; = "csc_vvfdece"

.field public static final SHARE_CORE_SDK_VERSION_DEC_CORE_FILE_EXCEPTION_VALUE:Ljava/lang/String; = "csc_vvfdece_v"

.field public static final SHARE_CORE_SDK_VERSION_DEC_CORE_FILE_SUCCESS:Ljava/lang/String; = "csc_vvfdecs"

.field public static final SHARE_CORE_SDK_VERSION_DEX_SDK_SHELL_CLASS_LOADER:Ljava/lang/String; = "csc_vvfdscl"

.field public static final SHARE_CORE_SDK_VERSION_GET_FROME_DEX_SDK_SHELL_CLASS_LOADER:Ljava/lang/String; = "csc_vvfgscl"

.field public static final SHARE_CORE_SDK_VERSION_VALUE:Ljava/lang/String; = "csc_vval"

.field public static final SHARE_CORE_SDK_VERSION_VERIFY_ERROR:Ljava/lang/String; = "csc_vvferr"

.field public static final SHARE_CORE_SDK_VERSION_VERIFY_ERROR_VALUE:Ljava/lang/String; = "csc_vvferr_v"

.field public static final SHARE_CORE_SDK_VERSION_VERIFY_EXCEPTION:Ljava/lang/String; = "csc_vvfexc"

.field public static final SHARE_CORE_SDK_VERSION_VERIFY_EXCEPTION_VALUE:Ljava/lang/String; = "csc_vvfexc_v"

.field public static final SHARE_CORE_SDK_VERSION_VERIFY_STAT_VALUE:Ljava/lang/String; = "csc_vvfsv"

.field public static final SHARE_CORE_TASK_BEGIN_PROCESS:Ljava/lang/String; = "csc_tbp"

.field public static final SHARE_CORE_TASK_PROCESS:Ljava/lang/String; = "csc_tp"

.field public static final SHARE_CORE_UPDATE_STILL:Ljava/lang/String; = "csc_usl"

.field public static final SHARE_CORE_UPDATE_STOP:Ljava/lang/String; = "csc_usp"

.field public static final SHARE_CORE_UPD_SC_INIT_EXCEPTION_PV:Ljava/lang/String; = "csc_usiep"

.field public static final SHARE_CORE_UPD_SC_INIT_SUCCESS_PV:Ljava/lang/String; = "csc_usisp"

.field public static final UCM:Ljava/lang/String; = "sdk_ucm"

.field public static final UCM_DISK_MB:Ljava/lang/String; = "sdk_ucm_dm"

.field public static final UCM_DISK_PERCENT:Ljava/lang/String; = "sdk_ucm_dp"

.field public static final UCM_EXCEPTION_CHECK:Ljava/lang/String; = "sdk_ucm_en"

.field public static final UCM_EXCEPTION_DOWNLOAD:Ljava/lang/String; = "sdk_ucm_e1"

.field public static final UCM_EXCEPTION_UPDATE:Ljava/lang/String; = "sdk_dec7z"

.field public static final UCM_EXISTS:Ljava/lang/String; = "sdk_ucm_e"

.field public static final UCM_FAILED_DOWNLOAD:Ljava/lang/String; = "sdk_dec7z_s"

.field public static final UCM_FAILED_VERIFY:Ljava/lang/String; = "sdk_dec7z_ls"

.field public static final UCM_LAST_EXCEPTION:Ljava/lang/String; = "sdk_ucm_le"

.field public static final UCM_OLD:Ljava/lang/String; = "sdk_ucm_old"

.field public static final UCM_PERCENT:Ljava/lang/String; = "sdk_ucm_p"

.field public static final UCM_RECOVERED:Ljava/lang/String; = "sdk_ucm_f"

.field public static final UCM_SUCCESS:Ljava/lang/String; = "sdk_ucm_s"

.field public static final UCM_SUCCESS_NOT_CORE_DOWNLAOD:Ljava/lang/String; = "sdk_ucm_so"

.field public static final UCM_WIFI:Ljava/lang/String; = "sdk_ucm_wifi"

.field public static final US_CP_DISPATCH_REQUEST:Ljava/lang/String; = "us_cp_dis_req"

.field public static final US_CP_RESPOND_FAILURE:Ljava/lang/String; = "us_cp_req_fai"

.field public static final US_CP_RESPOND_RECEIVE:Ljava/lang/String; = "us_cp_req_rec"

.field public static final US_CP_RESPOND_STATUS_CODE:Ljava/lang/String; = "us_cp_req_st_co"

.field public static final US_CP_RESPOND_SUCCESS:Ljava/lang/String; = "us_cp_req_suc"

.field public static final UTDID_KEY:Ljava/lang/String; = "ut_k"

.field public static final VIDEO_AC:Ljava/lang/String; = "sdk_vac"

.field public static final VIDEO_DOWNLOAD:Ljava/lang/String; = "sdk_vdl"

.field public static final VIDEO_DOWNLOAD_SUCCESS:Ljava/lang/String; = "sdk_vdls"

.field public static final VIDEO_ERROR_CODE_DOWNLOAD:Ljava/lang/String; = "sdk_ecdl1"

.field public static final VIDEO_ERROR_CODE_UNZIP:Ljava/lang/String; = "sdk_ecuz1"

.field public static final VIDEO_ERROR_CODE_UPDATE_CHECK_REQUEST:Ljava/lang/String; = "sdk_ecur1"

.field public static final VIDEO_ERROR_CODE_VERIFY:Ljava/lang/String; = "sdk_ecv1"

.field public static final VIDEO_UNZIP:Ljava/lang/String; = "sdk_vz"

.field public static final VIDEO_UNZIP_SUCCESS:Ljava/lang/String; = "sdk_vzs"

.field public static final WV_NEW_AFTER:Ljava/lang/String; = "sdk_wv_a"

.field public static final WV_NEW_BEFORE:Ljava/lang/String; = "sdk_wv_b"
