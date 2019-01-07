.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    const-string/jumbo v4, "activity_identify"

    invoke-static {p2, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "idenfier":Ljava/lang/String;
    const-string/jumbo v4, "activity_identify_conf_setting"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    const-string/jumbo v4, "choose_user_identities"

    .line 426
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 427
    .local v2, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 428
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    .line 429
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Ljava/util/List;)Ljava/util/List;

    .line 433
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 437
    .local v1, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v3, v5}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 439
    .local v3, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iput-object v1, v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 441
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 452
    .end local v1    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v3    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    .line 455
    .end local v0    # "idenfier":Ljava/lang/String;
    .end local v2    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    return-void

    .line 431
    .restart local v0    # "idenfier":Ljava/lang/String;
    .restart local v2    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 448
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1
.end method
