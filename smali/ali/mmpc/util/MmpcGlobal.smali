.class public Lali/mmpc/util/MmpcGlobal;
.super Ljava/lang/Object;
.source "MmpcGlobal.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "wp"

.field public static final APP_NAME_SF:Ljava/lang/String; = "sf"

.field public static final APP_NAME_SIP:Ljava/lang/String; = "sip"

.field public static final APP_NAME_VC:Ljava/lang/String; = "vc"

.field public static final APP_NAME_WP:Ljava/lang/String; = "wp"

.field public static final AUDIO_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/mmpc/audio/"

.field public static final BACK_CAMERA_ID:I = 0x0

.field public static final CHART_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/mmpc/chart/"

.field public static final FRONT_CAMERA_ID:I = 0x1

.field public static final LOG_TAG_AVCAPTURE:Ljava/lang/String; = "mmpj_avcapture"

.field public static final LOG_TAG_AV_ENGINE:Ljava/lang/String; = "mmpj_ave"

.field public static final LOG_TAG_CAMERA:Ljava/lang/String; = "mmpj_camera"

.field public static final LOG_TAG_CHART:Ljava/lang/String; = "mmpj_chart"

.field public static final LOG_TAG_COMMAND:Ljava/lang/String; = "mmpj_command"

.field public static final LOG_TAG_CPUCHIP:Ljava/lang/String; = "mmpj_cpuchip"

.field public static final LOG_TAG_NETWORK:Ljava/lang/String; = "mmpj_net"

.field public static final LOG_TAG_PWP:Ljava/lang/String; = "mmpj_pwp"

.field public static final LOG_TAG_RTP_RECEIVER:Ljava/lang/String; = "mmpj_rtp_receiver"

.field public static final LOG_TAG_SESSION:Ljava/lang/String; = "mmpj_session"

.field public static final LOG_TAG_SETTINGS:Ljava/lang/String; = "mmpj_settings"

.field public static final LOG_TAG_SIP:Ljava/lang/String; = "mmpj_sip"

.field public static final LOG_TAG_VDEC:Ljava/lang/String; = "mmpj_vdec"

.field public static final LOG_TAG_VENC:Ljava/lang/String; = "mmpj_venc"

.field public static final LOG_TAG_VIDEO:Ljava/lang/String; = "mmpj_video"

.field public static final LOG_TAG_WP:Ljava/lang/String; = "mmpj_wp"

.field public static final MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

.field public static final PROPERTY_FILENAME:Ljava/lang/String; = "settings.properties"

.field public static final VC_TCP_REMOTE_CTRL_PORT:I = 0x2bd8

.field public static final WP_COMMON_TCP_REMOTE_CTRL_PORT:I = 0x52e7

.field public static final WP_TCP_REMOTE_CTRL_PORT:I = 0x2bd7

.field public static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lali/mmpc/util/MmpcGlobal;->debug:Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mmpc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mmpc_native_wp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
