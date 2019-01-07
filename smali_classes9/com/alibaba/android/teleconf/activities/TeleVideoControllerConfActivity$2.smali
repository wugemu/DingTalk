.class final Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;
.super Ljava/lang/Object;
.source "TeleVideoControllerConfActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 564
    check-cast p1, Ljava/util/List;

    .line 1567
    if-nez p1, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;Ljava/util/List;)Ljava/util/List;

    .line 1575
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1576
    if-eqz v0, :cond_2

    .line 1579
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1573
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1582
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1583
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Ljava/util/List;)V

    .line 1585
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->f(Z)V

    .line 1586
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(ZZ)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 597
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Get user list for join conf fail: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    sget v2, Leuj$l;->dt_conf_video_member_status_join_failed:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    const-string/jumbo v2, "200"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    .line 601
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 593
    return-void
.end method
