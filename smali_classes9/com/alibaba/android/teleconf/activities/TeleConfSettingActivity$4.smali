.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
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
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

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
    .line 497
    check-cast p1, Ljava/util/List;

    .line 1500
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1504
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Ljava/util/List;)Ljava/util/List;

    .line 1508
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1512
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 1514
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 1516
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 1522
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;I)I

    .line 1523
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    goto :goto_0

    .line 1506
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 528
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 535
    return-void
.end method
