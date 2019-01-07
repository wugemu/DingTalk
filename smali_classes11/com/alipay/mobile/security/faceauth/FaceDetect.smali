.class public Lcom/alipay/mobile/security/faceauth/FaceDetect;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# static fields
.field public static final BIS_SERVICE_RET_FAIL:I = 0x7d1

.field public static final BIS_SERVICE_RET_FAIL_RETRY:I = 0x7d2

.field public static final BIS_SERVICE_RET_SUCC:I = 0x3e9

.field public static final BIS_SERVICE_RET_SUCC_CONTINUE:I = 0x3ea

.field public static final ERROR_BIS_INTERFACE_UNEXIST_EXCEPTION:I = 0x402

.field public static final ERROR_BIS_RET_CODE_EXCEPTION:I = 0xfa5

.field public static final ERROR_BIS_UNKNOWN_EXCEPTION:I = 0xfa4

.field public static final ERROR_CAMERA_CONFIGURATION_CPU_LOW:I = 0x3f9

.field public static final ERROR_CAMERA_CONFIGURATION_LOW_NO_FRONT:I = 0x3f8

.field public static final ERROR_CAMERA_NO_PERMISSION:I = 0x3f7

.field public static final ERROR_CAMERA_UNCONNECT:I = 0x3f6

.field public static final ERROR_DETECT_FACE_QUALITY_LOW:I = 0xfa6

.field public static final ERROR_DETECT_INIT_FAIL:I = 0x3f1

.field public static final ERROR_DETECT_NOT_ACTION:I = 0x3ee

.field public static final ERROR_DETECT_NOT_ENOUGH_BRIGHTNESS:I = 0x3e9

.field public static final ERROR_DETECT_NOT_ENOUNGH_IMAGE:I = 0x3ed

.field public static final ERROR_DETECT_NOT_IN_SCREEN:I = 0x3ea

.field public static final ERROR_DETECT_SHACKING:I = 0x3ec

.field public static final ERROR_DETECT_TIME_OUT:I = 0x3eb

.field public static final ERROR_DETECT_TOO_CLOSE:I = 0x3ef

.field public static final ERROR_DETECT_TOO_FAR:I = 0x3f0

.field public static final ERROR_INTERRUPT:I = 0x3fa

.field public static final ERROR_INTERRUPT_BY_TOUCH:I = 0x3fd

.field public static final ERROR_NETWORK_EXCEPTION:I = 0x3f2

.field public static final ERROR_NETWORK_EXCEPTION_UNCONNECT:I = 0x3f3

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x3fc

.field public static final ERROR_NOT_SUPPORT_TINTED_TITLE_BAR:I = 0x401

.field public static final ERROR_PITCH_ANGLE_NOT_SUITABLE:I = 0x3f5

.field public static final ERROR_RETRY_OVERTOP:I = 0x400

.field public static final ERROR_TOUCH_TOO_MUCH_MINE:I = 0x3f4

.field public static final ERROR_UNSURPPORT_OS:I = 0x3ff

.field public static final ERROR_VALIDATE_FAIL:I = 0x3fe

.field public static final ERROR_WINDOW_CLOSE:I = 0x3fb

.field public static final NLS_ERROR_NOTHING:I = 0x1773

.field public static final NLS_ERROR_RECOGNIZE_ERROR:I = 0x1771

.field public static final NLS_ERROR_RECORDING_ERROR:I = 0x1772

.field public static final NLS_SUCCESS:I = 0x1770

.field public static final NO_ERROR:I = 0x0

.field public static final RECORD_ACTION_DETECT_END:I = 0xbc6

.field public static final RECORD_ACTION_DETECT_PIC_SCORE:I = 0xbc7

.field public static final RECORD_ACTION_DETECT_START:I = 0xbc5

.field public static final RECORD_ACTION_ENTRY_BEH:I = 0xbb9

.field public static final RECORD_ACTION_ENTRY_SDK:I = 0xbcb

.field public static final RECORD_ACTION_EXIT_BEH:I = 0xbbd

.field public static final RECORD_ACTION_EXIT_SDK:I = 0xbca

.field public static final RECORD_ACTION_FACE_MINE:I = 0xbc3

.field public static final RECORD_ACTION_FACE_PROPERTY:I = 0xbd1

.field public static final RECORD_ACTION_FACE_VOICE:I = 0xbb8

.field public static final RECORD_ACTION_HARDWARD_UNSTANDARD_BEH:I = 0xbc1

.field public static final RECORD_ACTION_LOAD_NAV_URL_FAIL:I = 0xbd3

.field public static final RECORD_ACTION_NAV_ENTRY:I = 0xbd0

.field public static final RECORD_ACTION_NAV_EXIT:I = 0xbcf

.field public static final RECORD_ACTION_PASS_BEH:I = 0xbba

.field public static final RECORD_ACTION_PIC_UNQUALITY_BEH:I = 0xbbe

.field public static final RECORD_ACTION_PROPERTY_ACTION:I = 0xbcd

.field public static final RECORD_ACTION_PROPERTY_MIRROR:I = 0xbcc

.field public static final RECORD_ACTION_PROTOCOL_SIGN:I = 0xbd4

.field public static final RECORD_ACTION_RETURN_BEH:I = 0xbbc

.field public static final RECORD_ACTION_SYSTEM_CUT_BEH:I = 0xbc9

.field public static final RECORD_ACTION_TIME_DETECT_BEH:I = 0xbbf

.field public static final RECORD_ACTION_TIME_LEARNING_BEH:I = 0xbc0

.field public static final RECORD_ACTION_TIME_OUT_BEH:I = 0xbbb

.field public static final RECORD_ACTION_UPLOAD_BEGIN:I = 0xbc8

.field public static final RECORD_ACTION_UPLOAD_BEH:I = 0xbc2

.field public static final RECORD_ACTION_UPLOAD_LOG:I = 0xbc4

.field public static final RECORD_ACTION_UPLOAD_TOKEN_MD5_BEH:I = 0xbce

.field public static final RECORD_ACTION_WEB_NAV_INFO:I = 0xbd2

.field public static final RECORD_BLINK_NOT_ENOUGH:I = 0x7d2

.field public static final RECORD_BRIGHTNESS_NOT_ENOUGH:I = 0x7d1

.field public static final RECORD_OPEN_MOUTH_NOT_ENOUGH:I = 0x7d3

.field public static final RECORD_RAISE_HEAD_NOT_ENOUGH:I = 0x7d4

.field public static final RECORD_TURN_LEFT_NOT_ENOUGH:I = 0x7d5

.field public static final RECORD_TURN_RIGHT_NOT_ENOUGH:I = 0x7d6

.field public static final RECORD_VERIFY_CALLBACK:I = 0xbd8

.field public static final RECORD_VERIFY_DETECTION_COMPLETE:I = 0xbd7

.field public static final RECORD_VERIFY_ENTER_GUIDE_PAGE:I = 0xbd5

.field public static final RECORD_VERIFY_ENTRY_SDK:I = 0xbda

.field public static final RECORD_VERIFY_EXIT_GUIDE_PAGE:I = 0xbd6

.field public static final RECORD_VERIFY_PICUPLOAD:I = 0xbd9

.field public static final SUGGEST_UPLOAD_SERVER_EXIT_CMD:I = 0xfa2

.field public static final SUGGEST_UPLOAD_SERVER_RETRY_CMD:I = 0xfa1

.field public static final SUGGEST_UPLOAD_SERVER_SUCCESS_CMD:I = 0xfa3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
