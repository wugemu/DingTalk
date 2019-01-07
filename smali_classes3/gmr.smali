.class public final Lgmr;
.super Lgly;
.source "SpaceMenuFileHelpHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Lgmr;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 49
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v2, 0x0

    .line 51
    .local v2, "tempActivity":Landroid/app/Activity;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 52
    check-cast v2, Landroid/app/Activity;

    .line 55
    :cond_1
    move-object v1, v2

    .line 57
    .local v1, "finalActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    new-instance v4, Lgmr$1;

    invoke-direct {v4, p0, v1, v0}, Lgmr$1;-><init>(Lgmr;Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
