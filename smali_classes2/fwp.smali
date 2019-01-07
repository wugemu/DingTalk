.class public final Lfwp;
.super Ljava/lang/Object;
.source "MinePresenter.java"

# interfaces
.implements Lfwo$a;


# instance fields
.field a:Lfwo$b;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfwo$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lfwo$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "MinePresenter"

    iput-object v0, p0, Lfwp;->b:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lfwp;->c:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lfwp;->a:Lfwo$b;

    .line 31
    iget-object v0, p0, Lfwp;->a:Lfwo$b;

    invoke-interface {v0, p0}, Lfwo$b;->setPresenter(Lcjd;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lfwp;->a:Lfwo$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfwp;->a:Lfwo$b;

    invoke-interface {v1}, Lfwo$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lfwp;->c:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Lfwp$2;

    invoke-direct {v0, p0}, Lfwp$2;-><init>(Lfwp;)V

    .line 96
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/SWPersonObject;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lfwp;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/SWPersonObject;>;"
    check-cast v0, Lcma;

    .line 97
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/SWPersonObject;>;"
    invoke-static {v0}, Lfvz;->a(Lcma;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 37
    new-instance v0, Lfwp$1;

    invoke-direct {v0, p0}, Lfwp$1;-><init>(Lfwp;)V

    .line 64
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lfwp;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    check-cast v0, Lcma;

    .line 65
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Lezx;->b(Lcma;J)V

    .line 66
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->n()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
