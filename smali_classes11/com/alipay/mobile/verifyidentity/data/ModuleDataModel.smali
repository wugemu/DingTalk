.class public Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;
.super Ljava/lang/Object;
.source "ModuleDataModel.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public data:Ljava/lang/String;

.field public envType:Ljava/lang/String;

.field public nextStep:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public useBird:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 51
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 53
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->a:Ljava/lang/String;

    const-string/jumbo v4, "\u6a21\u5757\u6570\u636eBase64\u53cd\u89e3\u8017\u65f6\uff1a"

    invoke-static {v0, v4, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    const-class v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;

    invoke-static {v1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->a:Ljava/lang/String;

    const-string/jumbo v4, "\u89e3\u6790\u6a21\u5757\u6570\u636e\u603b\u8017\u65f6\uff1a"

    invoke-static {v1, v4, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->a:Ljava/lang/String;

    const-string/jumbo v4, "\u6a21\u5757\u6570\u636eJson\u89e3\u6790\u5931\u8d25\uff01"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method
