.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$9;
.super Ljava/lang/Object;
.source "ManagerOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$9;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$9;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$9;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J

    move-result-wide v2

    .line 2216
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 2219
    iget-object v0, v1, Lfll;->e:Lflk;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lfll;->e:Lflk;

    invoke-interface {v0}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2220
    :cond_0
    :goto_0
    return-void

    .line 2222
    :cond_1
    iget-object v0, v1, Lfll;->e:Lflk;

    invoke-interface {v0}, Lflk;->d()V

    .line 2223
    new-instance v4, Lfll$1;

    invoke-direct {v4, v1}, Lfll$1;-><init>(Lfll;)V

    .line 2242
    const-string/jumbo v0, "EVENTBUTLER"

    .line 2243
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v1, v1, Lfll;->e:Lflk;

    .line 2244
    invoke-interface {v1}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2245
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Lezt;->j(JLcma;)V

    goto :goto_0
.end method
