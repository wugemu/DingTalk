.class public final enum Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;
.super Ljava/lang/Enum;
.source "SimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmsSendResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

.field public static final enum SMS_SEND_BUSY:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

.field public static final enum SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

.field public static final enum SMS_SEND_SUCC:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

.field public static final enum SMS_SEND_TIMEOUT:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    const-string/jumbo v1, "SMS_SEND_SUCC"

    invoke-direct {v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_SUCC:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    .line 73
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    const-string/jumbo v1, "SMS_SEND_FAIL"

    invoke-direct {v0, v1, v3}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    .line 74
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    const-string/jumbo v1, "SMS_SEND_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_TIMEOUT:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    .line 75
    new-instance v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    const-string/jumbo v1, "SMS_SEND_BUSY"

    invoke-direct {v0, v1, v5}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_BUSY:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_SUCC:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_TIMEOUT:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_BUSY:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->$VALUES:[Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    return-object v0
.end method

.method public static values()[Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->$VALUES:[Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    invoke-virtual {v0}, [Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    return-object v0
.end method
