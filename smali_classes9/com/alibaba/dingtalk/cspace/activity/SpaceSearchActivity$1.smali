.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;
.super Ljava/lang/Object;
.source "SpaceSearchActivity.java"

# interfaces
.implements Lggp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lggn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lggn;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;Ljava/util/List;)V

    const-class v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lggn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lggn;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;Ljava/util/List;)V

    const-class v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
