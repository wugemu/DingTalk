.class public final Lgvs;
.super Ljava/lang/Object;
.source "AlipayShareApi.java"


# static fields
.field private static c:Lgvs;


# instance fields
.field public a:Lcom/alipay/share/sdk/openapi/IAPApi;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "2016060801496309"

    iput-object v0, p0, Lgvs;->b:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "com.alibaba.android.rimet.fx"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/share/sdk/openapi/APApiImlV1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "2016060801496309"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/share/sdk/openapi/APApiImlV1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/alipay/share/sdk/openapi/APApiImlV1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lgvn$h;->alipay_appid:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/share/sdk/openapi/APApiImlV1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lgvs;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lgvs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgvs;->c:Lgvs;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lgvs;

    invoke-direct {v0, p0}, Lgvs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgvs;->c:Lgvs;

    .line 47
    :cond_0
    sget-object v0, Lgvs;->c:Lgvs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
