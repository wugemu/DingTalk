.class public final enum Lcom/alivc/live/conf/AlivcVideoConfError;
.super Ljava/lang/Enum;
.source "AlivcVideoConfError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Audio_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_NO_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Network_Timeout_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Parameter_Invaild_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Request_ScreenShare_Token_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Server_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Session_Disconnect:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_State_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Subscribe_Alreay_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Subscribe_Internal_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Subscribe_Invalid:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Subscribe_No_Track_label:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Subscribe_Not_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Unknow_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

.field public static final enum AlivcVideoConf_Video_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_NO_Error"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_NO_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 14
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Unknow_Error"

    invoke-direct {v0, v1, v4}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Unknow_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 16
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Parameter_Invaild_Error"

    invoke-direct {v0, v1, v5}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Parameter_Invaild_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 18
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_State_Error"

    invoke-direct {v0, v1, v6}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_State_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 20
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Request_ScreenShare_Token_Error"

    invoke-direct {v0, v1, v7}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Request_ScreenShare_Token_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 22
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Audio_Device_Error"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Audio_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 24
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Video_Device_Error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Video_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 26
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Device_Error"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 28
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Server_Error"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Server_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 30
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Network_Timeout_Error"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Network_Timeout_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 32
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Session_Disconnect"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Session_Disconnect:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 34
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Subscribe_Alreay_Exist"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Alreay_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 36
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Subscribe_Internal_Error"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Internal_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 38
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Subscribe_Not_Exist"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Not_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 40
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Subscribe_Invalid"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Invalid:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 42
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    const-string/jumbo v1, "AlivcVideoConf_Subscribe_No_Track_label"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_No_Track_label:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfError;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_NO_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Unknow_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Parameter_Invaild_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_State_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Request_ScreenShare_Token_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Audio_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Video_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Server_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Network_Timeout_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Session_Disconnect:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Alreay_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Internal_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Not_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Invalid:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_No_Track_label:Lcom/alivc/live/conf/AlivcVideoConfError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;
    .locals 4
    .param p0, "error"    # I

    .prologue
    .line 69
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Unknow_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 70
    .local v0, "errorCode":Lcom/alivc/live/conf/AlivcVideoConfError;
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_NETWORK_TIMEOUT:I

    if-ne p0, v1, :cond_1

    .line 71
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Network_Timeout_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    .line 87
    :cond_0
    :goto_0
    const-string/jumbo v1, "SaaS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "error is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errorType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 72
    :cond_1
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_DEVICE_ERROR_BEGIN:I

    if-lt p0, v1, :cond_2

    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_DEVICE_ERROR_END:I

    if-gt p0, v1, :cond_2

    .line 73
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Device_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0

    .line 74
    :cond_2
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SOPHON_SERVER_ERROR_POLLING:I

    if-eq p0, v1, :cond_3

    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SOPHON_RESULT_SIGNAL_HEARTBEAT_TIMEOUT:I

    if-ne p0, v1, :cond_4

    .line 75
    :cond_3
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Server_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0

    .line 76
    :cond_4
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_ALREAY_EXIST:I

    if-ne p0, v1, :cond_5

    .line 77
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Alreay_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0

    .line 78
    :cond_5
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_INTERNAL_ERROR:I

    if-ne p0, v1, :cond_6

    .line 79
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Internal_Error:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0

    .line 80
    :cond_6
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_NOT_EXIST:I

    if-ne p0, v1, :cond_7

    .line 81
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Not_Exist:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0

    .line 82
    :cond_7
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_INVALID:I

    if-ne p0, v1, :cond_8

    .line 83
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_Invalid:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0

    .line 84
    :cond_8
    sget v1, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_NO_TRACK_LABEL:I

    if-ne p0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->AlivcVideoConf_Subscribe_No_Track_label:Lcom/alivc/live/conf/AlivcVideoConfError;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfError;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfError;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfError;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfError;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfError;

    return-object v0
.end method
