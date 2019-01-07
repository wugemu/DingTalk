.class final Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 631
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1634
    if-nez p1, :cond_0

    .line 1635
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;Ljava/util/List;)Ljava/util/List;

    .line 1642
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V

    goto :goto_0

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
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

    .line 653
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

    .line 654
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    sget v2, Leuj$l;->conf_txt_create_failed_toast:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    const-string/jumbo v2, "200"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    .line 657
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 649
    return-void
.end method
