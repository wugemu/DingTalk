.class public Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;
.super Ljava/lang/Object;
.source "AlivcVideoConfError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field protected static ALIVC_DEVICE_ERROR_BEGIN:I

.field protected static ALIVC_DEVICE_ERROR_END:I

.field protected static ALIVC_DIGNALLING_SERVER_ERROR:I

.field protected static ALIVC_NETWORK_TIMEOUT:I

.field protected static SDK_RESULT_SUBSCRIBE_ALREAY_EXIST:I

.field protected static SDK_RESULT_SUBSCRIBE_INTERNAL_ERROR:I

.field protected static SDK_RESULT_SUBSCRIBE_INVALID:I

.field protected static SDK_RESULT_SUBSCRIBE_NOT_EXIST:I

.field protected static SDK_RESULT_SUBSCRIBE_NO_TRACK_LABEL:I

.field protected static SOPHON_RESULT_SIGNAL_HEARTBEAT_TIMEOUT:I

.field protected static SOPHON_SERVER_ERROR_POLLING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x1020200

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_NETWORK_TIMEOUT:I

    .line 49
    const v0, 0x1040100

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_DEVICE_ERROR_BEGIN:I

    .line 52
    const v0, 0x1040500

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_DEVICE_ERROR_END:I

    .line 54
    const/high16 v0, 0x2010000

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->ALIVC_DIGNALLING_SERVER_ERROR:I

    .line 56
    const v0, 0x2010105

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SOPHON_SERVER_ERROR_POLLING:I

    .line 58
    const v0, 0x102020c

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SOPHON_RESULT_SIGNAL_HEARTBEAT_TIMEOUT:I

    .line 61
    const v0, 0x1030401

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_ALREAY_EXIST:I

    .line 62
    const v0, 0x1030402

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_INTERNAL_ERROR:I

    .line 63
    const v0, 0x1030403

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_NOT_EXIST:I

    .line 64
    const v0, 0x1030404

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_INVALID:I

    .line 65
    const v0, 0x1030405

    sput v0, Lcom/alivc/live/conf/AlivcVideoConfError$ErrorCode;->SDK_RESULT_SUBSCRIBE_NO_TRACK_LABEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
