.class public final Lgfb;
.super Ljava/lang/Object;
.source "SpaceMainPagePresenter.java"

# interfaces
.implements Lgfa$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lgfa$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgfa$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lgfa$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lgfb;->a:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lgfb;->b:Lgfa$b;

    .line 34
    iget-object v0, p0, Lgfb;->b:Lgfa$b;

    invoke-interface {v0, p0}, Lgfa$b;->setPresenter(Lcjd;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    .line 4112
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "cspace_team_album_enable_android"

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 4116
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lgfb;->a:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 4120
    goto :goto_0

    .line 43
    :cond_3
    const-string/jumbo v1, "pref_key_team_album_show_guide"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v0, Lgfb$1;

    invoke-direct {v0, p0}, Lgfb$1;-><init>(Lgfb;)V

    .line 74
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lgfb;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 75
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 4446
    if-eqz v0, :cond_1

    .line 4450
    new-instance v2, Lgjr;

    invoke-direct {v2}, Lgjr;-><init>()V

    .line 4451
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lgjr;->a:Ljava/lang/Long;

    .line 4453
    new-instance v3, Lgon$67;

    invoke-direct {v3, v1, v0}, Lgon$67;-><init>(Lgon;Lcma;)V

    .line 4473
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->isAllowToCreateAlbumApp(Lgjr;Liyv;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    new-instance v0, Lgfb$2;

    invoke-direct {v0, p0}, Lgfb$2;-><init>(Lgfb;)V

    .line 107
    .local v0, "listener":Lcma;, "Lcma<Lgog;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lgfb;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lgog;>;"
    check-cast v0, Lcma;

    .line 108
    .restart local v0    # "listener":Lcma;, "Lcma<Lgog;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 5405
    if-eqz v0, :cond_0

    .line 5409
    new-instance v2, Lgjr;

    invoke-direct {v2}, Lgjr;-><init>()V

    .line 5410
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lgjr;->a:Ljava/lang/Long;

    .line 5412
    new-instance v3, Lgon$65;

    invoke-direct {v3, v1, v0}, Lgon$65;-><init>(Lgon;Lcma;)V

    .line 5419
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->createTeamAlbumAPP(Lgjr;Liyv;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
