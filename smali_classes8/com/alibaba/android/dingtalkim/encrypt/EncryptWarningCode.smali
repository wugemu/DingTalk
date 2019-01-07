.class public final enum Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;
.super Ljava/lang/Enum;
.source "EncryptWarningCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

.field public static final enum AnHengHashFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

.field public static final enum CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

.field public static final enum EncryptFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    const-string/jumbo v1, "CreateFileFail"

    const/16 v2, -0x2711

    const-string/jumbo v3, "create test file fail"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    .line 12
    new-instance v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    const-string/jumbo v1, "EncryptFileFail"

    const/16 v2, -0x2712

    const-string/jumbo v3, "encrypt test file fail"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->EncryptFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    const-string/jumbo v1, "AnHengHashFail"

    const/16 v2, -0x2713

    const-string/jumbo v3, "AnHeng hash check fail"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->AnHengHashFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    sget-object v1, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->EncryptFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->AnHengHashFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->$VALUES:[Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->code:I

    .line 20
    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->msg:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->$VALUES:[Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    return-object v0
.end method
