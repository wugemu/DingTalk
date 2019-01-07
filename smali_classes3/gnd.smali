.class public final Lgnd;
.super Lgly;
.source "SpaceMenuOpenParentFolderHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 34
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lgnd;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 38
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {p1}, Lgpr;->c(Landroid/content/Context;)V

    .line 40
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 41
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    new-instance v1, Lgnd$1;

    invoke-direct {v1, p0, p1, v0}, Lgnd$1;-><init>(Lgnd;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 74
    .local v1, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-class v2, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v1, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v1, Lcma;

    .line 75
    .restart local v1    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
