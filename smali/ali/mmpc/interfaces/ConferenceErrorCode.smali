.class public final enum Lali/mmpc/interfaces/ConferenceErrorCode;
.super Ljava/lang/Enum;
.source "ConferenceErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/interfaces/ConferenceErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum App_Version_Not_Found:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum AudioEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum CSNoRsp:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum CSServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum CallId_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum FailedToStartMicphoneServer:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum GKNoRsp:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum GKServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum NetEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum NetEngineOnconnectFailure:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum NetEngineTimeout:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum OK:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum Param_Not_Set:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum Peerid_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum PushServerTimeOut:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum ReadPropertyFileFaild:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum Selfid_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum ServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum SessionError:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum UserDefine_Message_Error:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum VeError:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum VeError_NoCamera:Lali/mmpc/interfaces/ConferenceErrorCode;

.field public static final enum VideoEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;


# instance fields
.field errorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "OK"

    const-string/jumbo v2, "ok"

    invoke-direct {v0, v1, v4, v2}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->OK:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "Param_Not_Set"

    const-string/jumbo v2, "param not set"

    invoke-direct {v0, v1, v5, v2}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->Param_Not_Set:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "App_Version_Not_Found"

    const-string/jumbo v2, "app version not found"

    invoke-direct {v0, v1, v6, v2}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->App_Version_Not_Found:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 8
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "VeError"

    const-string/jumbo v2, "video/voice engine error"

    invoke-direct {v0, v1, v7, v2}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->VeError:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "AudioEngineError"

    const-string/jumbo v2, "audio engine error"

    invoke-direct {v0, v1, v8, v2}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->AudioEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "VideoEngineError"

    const/4 v2, 0x5

    const-string/jumbo v3, "video engine error"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->VideoEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 11
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "SessionError"

    const/4 v2, 0x6

    const-string/jumbo v3, "internal error"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->SessionError:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "ServerDisconnect"

    const/4 v2, 0x7

    const-string/jumbo v3, "server disconnect"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->ServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "GKServerDisconnect"

    const/16 v2, 0x8

    const-string/jumbo v3, "gk server disconnect"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->GKServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 12
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "CSServerDisconnect"

    const/16 v2, 0x9

    const-string/jumbo v3, "cs server disconnect"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->CSServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "GKNoRsp"

    const/16 v2, 0xa

    const-string/jumbo v3, "gk no response"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->GKNoRsp:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 13
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "CSNoRsp"

    const/16 v2, 0xb

    const-string/jumbo v3, "cs no response"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->CSNoRsp:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "PushServerTimeOut"

    const/16 v2, 0xc

    const-string/jumbo v3, "pushserver timeout"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->PushServerTimeOut:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 14
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "Selfid_Is_Null"

    const/16 v2, 0xd

    const-string/jumbo v3, "SelfId is null"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->Selfid_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "Peerid_Is_Null"

    const/16 v2, 0xe

    const-string/jumbo v3, "PeerId is null"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->Peerid_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 15
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "CallId_Is_Null"

    const/16 v2, 0xf

    const-string/jumbo v3, "callId is null"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->CallId_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "UserDefine_Message_Error"

    const/16 v2, 0x10

    const-string/jumbo v3, "message error"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->UserDefine_Message_Error:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 18
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "NetEngineError"

    const/16 v2, 0x11

    const-string/jumbo v3, "net engine error"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->NetEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "NetEngineOnconnectFailure"

    const/16 v2, 0x12

    const-string/jumbo v3, "net engine on connect failure"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->NetEngineOnconnectFailure:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 19
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "NetEngineTimeout"

    const/16 v2, 0x13

    const-string/jumbo v3, "net engine timeout"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->NetEngineTimeout:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 22
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "VeError_NoCamera"

    const/16 v2, 0x14

    const-string/jumbo v3, "no camera"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->VeError_NoCamera:Lali/mmpc/interfaces/ConferenceErrorCode;

    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "FailedToStartMicphoneServer"

    const/16 v2, 0x15

    const-string/jumbo v3, "failed to start micphone server"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->FailedToStartMicphoneServer:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 23
    new-instance v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    const-string/jumbo v1, "ReadPropertyFileFaild"

    const/16 v2, 0x16

    const-string/jumbo v3, "read propty file failed"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/interfaces/ConferenceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->ReadPropertyFileFaild:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 3
    const/16 v0, 0x17

    new-array v0, v0, [Lali/mmpc/interfaces/ConferenceErrorCode;

    sget-object v1, Lali/mmpc/interfaces/ConferenceErrorCode;->OK:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lali/mmpc/interfaces/ConferenceErrorCode;->Param_Not_Set:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lali/mmpc/interfaces/ConferenceErrorCode;->App_Version_Not_Found:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lali/mmpc/interfaces/ConferenceErrorCode;->VeError:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lali/mmpc/interfaces/ConferenceErrorCode;->AudioEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->VideoEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->SessionError:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->ServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->GKServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->CSServerDisconnect:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->GKNoRsp:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->CSNoRsp:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->PushServerTimeOut:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->Selfid_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->Peerid_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->CallId_Is_Null:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->UserDefine_Message_Error:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->NetEngineError:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->NetEngineOnconnectFailure:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->NetEngineTimeout:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->VeError_NoCamera:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->FailedToStartMicphoneServer:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lali/mmpc/interfaces/ConferenceErrorCode;->ReadPropertyFileFaild:Lali/mmpc/interfaces/ConferenceErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->$VALUES:[Lali/mmpc/interfaces/ConferenceErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lali/mmpc/interfaces/ConferenceErrorCode;->errorInfo:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/interfaces/ConferenceErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/interfaces/ConferenceErrorCode;

    return-object v0
.end method

.method public static values()[Lali/mmpc/interfaces/ConferenceErrorCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lali/mmpc/interfaces/ConferenceErrorCode;->$VALUES:[Lali/mmpc/interfaces/ConferenceErrorCode;

    invoke-virtual {v0}, [Lali/mmpc/interfaces/ConferenceErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/interfaces/ConferenceErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lali/mmpc/interfaces/ConferenceErrorCode;->errorInfo:Ljava/lang/String;

    return-object v0
.end method
