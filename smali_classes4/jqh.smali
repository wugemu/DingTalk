.class public final Ljqh;
.super Ljava/lang/Object;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljqh$b;,
        Ljqh$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:Ljqd;

.field d:Landroid/os/Handler;

.field e:Ljpm;

.field private f:Ljrz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljrz;Ljpm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "runtimeInstance"    # Ljrz;
    .param p3, "perfLog"    # Ljpm;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljqh;->b:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ljqh;->d:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Ljqh;->f:Ljrz;

    .line 68
    iput-object p3, p0, Ljqh;->e:Ljpm;

    .line 70
    instance-of v0, p1, Ljqd;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Ljqd;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Ljqh;->c:Ljqd;

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic a(Ljqh;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Ljqh;
    .param p1, "x1"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .prologue
    .line 49
    .line 2813
    const-string/jumbo v0, "1"

    iget-object v1, p1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2815
    const-string/jumbo v0, "2"

    iget-object v1, p1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    iget-object v0, p1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateZcacheKey:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 2818
    :cond_0
    iget-object v0, p1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V
    .locals 4
    .param p0, "x0"    # Ljqh;
    .param p1, "x1"    # Ljqh$b;
    .param p2, "x2"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .prologue
    .line 49
    .line 1762
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 1763
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1764
    :cond_0
    iget-object v0, p2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 1803
    iget-object v2, p0, Ljqh;->d:Landroid/os/Handler;

    new-instance v3, Ljqh$4;

    invoke-direct {v3, p0, p1, v0, v1}, Ljqh$4;-><init>(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Ljqh;
    .param p1, "x1"    # Ljqh$b;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    .line 2770
    iget-object v0, p0, Ljqh;->d:Landroid/os/Handler;

    new-instance v1, Ljqh$2;

    invoke-direct {v1, p0, p1, p2, p3}, Ljqh$2;-><init>(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method static synthetic a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V
    .locals 7
    .param p0, "x0"    # Ljqh;
    .param p1, "x1"    # Ljqh$b;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .prologue
    .line 49
    .line 2781
    iget-object v6, p0, Ljqh;->d:Landroid/os/Handler;

    new-instance v0, Ljqh$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljqh$3;-><init>(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method
