.class public final Lgmv;
.super Lgly;
.source "SpaceMenuLikeHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-static {p1, p2, v2}, Lgmv;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 30
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v6, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 32
    .local v6, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    new-instance v5, Lgmv$1;

    invoke-direct {v5, p0, v6, p3, p1}, Lgmv$1;-><init>(Lgmv;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/Object;Landroid/content/Context;)V

    .line 57
    .local v5, "callback":Lcma;, "Lcma<Lgqw;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 58
    const-class v0, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v5, v0, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "callback":Lcma;, "Lcma<Lgqw;>;"
    check-cast v5, Lcma;

    .line 60
    .restart local v5    # "callback":Lcma;, "Lcma<Lgqw;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lgmb;->e:Ljava/lang/String;

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
