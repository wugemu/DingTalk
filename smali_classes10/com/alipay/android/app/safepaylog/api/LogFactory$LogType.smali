.class public final enum Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;
.super Ljava/lang/Enum;
.source "LogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaylog/api/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

.field public static final enum DEFAULT:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

.field public static final enum QUICKPAY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

.field public static final enum VERTIFY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    const-string/jumbo v1, "QUICKPAY"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->QUICKPAY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    .line 20
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    const-string/jumbo v1, "VERTIFY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->VERTIFY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    .line 21
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->DEFAULT:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->QUICKPAY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->VERTIFY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->DEFAULT:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->$VALUES:[Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->$VALUES:[Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    return-object v0
.end method
