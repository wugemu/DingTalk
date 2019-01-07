.class public final enum Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
.super Ljava/lang/Enum;
.source "FingerprintResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FingerprintStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public static final enum RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 36
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 40
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_BUSY"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 44
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_VERIFYING"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 48
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_CANCELED"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 52
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 56
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "COMMON_TO_PWD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 60
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "RETRY_ING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 64
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "RETRY_LIMIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 68
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "DLG_CANCEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 72
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const-string/jumbo v1, "DLG_TOPWD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 28
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->$VALUES:[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->$VALUES:[Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    return-object v0
.end method
