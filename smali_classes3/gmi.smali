.class public final Lgmi;
.super Lgly;
.source "SpaceMenuCoFolderRenameHandler.java"


# instance fields
.field a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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
    .line 27
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lgmi;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lgmi;->a:Landroid/app/Activity;

    .line 31
    iget-object v0, p2, Lgmb;->m:Lgit;

    .line 32
    .local v0, "coFolderModel":Lgit;
    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_filelist_setting_rename_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lgmi$1;

    invoke-direct {v1, p0}, Lgmi$1;-><init>(Lgmi;)V

    .line 56
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lcma;

    iget-object v3, p0, Lgmi;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v1, Lcma;

    .line 57
    .restart local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v2, p0, Lgmi;->a:Landroid/app/Activity;

    iget-object v3, v0, Lgit;->b:Ljava/lang/String;

    iget-object v4, v0, Lgit;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
