.class public Lcom/alivc/live/conf/AlivcVideoConfConstants;
.super Ljava/lang/Object;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfStreamMode;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;,
        Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    }
.end annotation


# static fields
.field public static ACCESS:Ljava/lang/String;

.field public static ANDROID:Ljava/lang/String;

.field public static AUDIO:Ljava/lang/String;

.field public static AUDIOALLMUTED:Ljava/lang/String;

.field public static AUDIOALLUNMUTED:Ljava/lang/String;

.field public static AUDIOMUTED:Ljava/lang/String;

.field public static AUDIOUNMUTED:Ljava/lang/String;

.field public static BRAND:Ljava/lang/String;

.field public static CAMERAALLCLOSED:Ljava/lang/String;

.field public static CAMERAALLOPENED:Ljava/lang/String;

.field public static CAMERACLOSED:Ljava/lang/String;

.field public static CAMERAOPENED:Ljava/lang/String;

.field public static CARRIER:Ljava/lang/String;

.field public static CLOSECAMERA:Ljava/lang/String;

.field public static COMMAND:Ljava/lang/String;

.field public static COMPLETED:I

.field public static CONTENT:Ljava/lang/String;

.field public static CPU_TYPE:Ljava/lang/String;

.field public static DEVICENAME:Ljava/lang/String;

.field public static ID:Ljava/lang/String;

.field public static KICKOUT:I

.field public static MUTEAUDIO:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static NOTIFY:Ljava/lang/String;

.field public static OFF:Ljava/lang/String;

.field public static OPENCAMERA:Ljava/lang/String;

.field public static OPENED:Ljava/lang/String;

.field public static OS_CPUABI:Ljava/lang/String;

.field public static OS_NAME:Ljava/lang/String;

.field public static OS_SDK:Ljava/lang/String;

.field public static OS_VERSION:Ljava/lang/String;

.field public static PARTICIPANTIDS:Ljava/lang/String;

.field public static PLATFORM:Ljava/lang/String;

.field public static PULLCONFINFO:Ljava/lang/String;

.field public static SCREEN_RESOLUTION:Ljava/lang/String;

.field public static SHARESCREEN:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static UDID:Ljava/lang/String;

.field public static UNMUTEAUDIO:Ljava/lang/String;

.field public static UNMUTED:Ljava/lang/String;

.field public static VIDEO:Ljava/lang/String;

.field public static VIDEO_LARGE:Ljava/lang/String;

.field public static VIDEO_SHARE:Ljava/lang/String;

.field public static VIDEO_SMALL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "id"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ID:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "name"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->NAME:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "participantIds"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->PARTICIPANTIDS:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "type"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->TYPE:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "command"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->COMMAND:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "muteAudio"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->MUTEAUDIO:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "unmuteAudio"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->UNMUTEAUDIO:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "colseCamera"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CLOSECAMERA:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "openCamera"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OPENCAMERA:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "notify"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->NOTIFY:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "audioMuted"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOMUTED:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "audioUnmuted"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOUNMUTED:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "cameraClosed"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERACLOSED:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "cameraOpened"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERAOPENED:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "audioAllMuted"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOALLMUTED:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "audioAllUnmuted"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOALLUNMUTED:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "cameraAllClosed"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERAALLCLOSED:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "cameraAllOpened"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERAALLOPENED:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "content"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CONTENT:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "pullConfInfo"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->PULLCONFINFO:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "opened"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OPENED:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "video"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "unmuted"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->UNMUTED:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "audio"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIO:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "off"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OFF:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "shareScreen"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->SHARESCREEN:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "os_name"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_NAME:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "os_sdk"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_SDK:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "os_version"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_VERSION:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "os_cpuabi"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_CPUABI:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "devicename"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->DEVICENAME:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "brand"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->BRAND:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "platform"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->PLATFORM:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "android"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ANDROID:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "access"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ACCESS:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "carrier"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CARRIER:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "cpu_type"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CPU_TYPE:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "udid"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->UDID:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "screen_resolution"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->SCREEN_RESOLUTION:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "sophon_video_camera_large"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO_LARGE:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "sophon_video_camera_small"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO_SMALL:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "sophon_video_screen_share"

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO_SHARE:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->KICKOUT:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->COMPLETED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
