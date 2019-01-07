.class public final enum Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
.super Ljava/lang/Enum;
.source "AVError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/external/AVError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_BatteryLowInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_CameraInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NetLocalDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NetRemoteMediaTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalCallNoExist:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalHidenInAddressList:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalLocalToPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalNoAuthorization:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalNonFriend:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalRemoteCloseNotify:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalSpeakerMuted:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_SignalTopManagementModel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

.field public static final enum Err_UnknownReason:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NoErr"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 16
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalToPSTN"

    const v2, 0xef13

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalToPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 21
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalInConference"

    const v2, 0xef14

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 26
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalInVoIP"

    const v2, 0xef15

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 31
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalInPSTN"

    const v2, 0xef16

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 36
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalInBusinessConf"

    const/4 v2, 0x5

    const v3, 0xef17

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 40
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalArriveImmediately"

    const/4 v2, 0x6

    const v3, 0xef18

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 44
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalCallbackLater"

    const/4 v2, 0x7

    const v3, 0xef19

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 48
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalInconvenience"

    const/16 v2, 0x8

    const v3, 0xef1a

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 52
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalTopManagementModel"

    const/16 v2, 0x9

    const v3, 0xef1b

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTopManagementModel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 57
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalInVideoConf"

    const/16 v2, 0xa

    const v3, 0xef1c

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 61
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalHidenInAddressList"

    const/16 v2, 0xb

    const v3, 0xef1d

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalHidenInAddressList:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 66
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalNoAuthorization"

    const/16 v2, 0xc

    const v3, 0xef1e

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoAuthorization:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 72
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalNonFriend"

    const/16 v2, 0xd

    const v3, 0xef1f

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNonFriend:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 76
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalNoMicAuth"

    const/16 v2, 0xe

    const v3, 0xef20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 80
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalLocalInLive"

    const/16 v2, 0xf

    const v3, 0xef21

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 84
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalSpeakerMuted"

    const/16 v2, 0x10

    const v3, 0xef7f

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalSpeakerMuted:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 88
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalRemoteCloseNotify"

    const/16 v2, 0x11

    const v3, 0xef80

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteCloseNotify:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 92
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalRemoteDoNotDisturb"

    const/16 v2, 0x12

    const v3, 0xef81

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 96
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalTimeout"

    const/16 v2, 0x13

    const v3, 0xf028

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 100
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalCallNoExist"

    const/16 v2, 0x14

    const v3, 0xf029

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallNoExist:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 104
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalCallingTimeout"

    const/16 v2, 0x15

    const v3, 0xf02a

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 108
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalBusy"

    const/16 v2, 0x16

    const v3, 0xf02e

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 112
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalCancel"

    const/16 v2, 0x17

    const v3, 0xf02f

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 116
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_SignalReject"

    const/16 v2, 0x18

    const v3, 0xf030

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 120
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NetLocalDisconnect"

    const/16 v2, 0x19

    const v3, 0xf105

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetLocalDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 124
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NetDisconnect"

    const/16 v2, 0x1a

    const v3, 0xf108

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 128
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NetRemoteRecvDataTimeout"

    const/16 v2, 0x1b

    const v3, 0xf109

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 132
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NetConnectFailed"

    const/16 v2, 0x1c

    const v3, 0xf231

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 136
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_RecvDataTimeoutWarning"

    const/16 v2, 0x1d

    const v3, 0xf4f0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 140
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NetRecvDataTimeout"

    const/16 v2, 0x1e

    const v3, 0xf4f1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 144
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_NetRemoteMediaTimeout"

    const/16 v2, 0x1f

    const v3, 0xf4f2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteMediaTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 148
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_MediaInitFailed"

    const/16 v2, 0x20

    const v3, 0xf619

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 152
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_DeviceInitFailed"

    const/16 v2, 0x21

    const v3, 0xfa01

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 156
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_CameraInitFailed"

    const/16 v2, 0x22

    const v3, 0xfa02

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_CameraInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 160
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_DeviceInterruption"

    const/16 v2, 0x23

    const v3, 0xfa0a

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 164
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_PhoneInInterruption"

    const/16 v2, 0x24

    const v3, 0xfa0b

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 168
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_BatteryLowInterruption"

    const/16 v2, 0x25

    const v3, 0xfa0c

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_BatteryLowInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 172
    new-instance v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    const-string/jumbo v1, "Err_UnknownReason"

    const/16 v2, 0x26

    const v3, 0x1046a

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_UnknownReason:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 11
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalToPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTopManagementModel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalHidenInAddressList:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoAuthorization:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNonFriend:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalSpeakerMuted:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteCloseNotify:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallNoExist:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetLocalDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteMediaTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_CameraInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_BatteryLowInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_UnknownReason:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->$VALUES:[Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 177
    iput p3, p0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->value:I

    .line 178
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->$VALUES:[Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final Value()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->value:I

    return v0
.end method
