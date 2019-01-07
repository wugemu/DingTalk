.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;
.super Landroid/content/BroadcastReceiver;
.source "MyProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 977
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 983
    const-string/jumbo v5, "choose_picture_ids"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 985
    const-string/jumbo v4, "user"

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "upload user avatar path is empty"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->showLoadingDialog()V

    .line 989
    const-string/jumbo v5, "user"

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "upload user avatar path:"

    aput-object v8, v7, v4

    const/4 v4, 0x1

    aput-object v3, v7, v4

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lify;->a()Lify;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lify;->a(Ljava/lang/String;Lifw;)V

    goto :goto_0

    .line 1112
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "selector_region"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1113
    const-string/jumbo v4, "region_key"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "addKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->city:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1115
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->showLoadingDialog()V

    .line 1116
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->city:Ljava/lang/String;

    .line 1117
    .local v2, "oldAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iput-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->city:Ljava/lang/String;

    .line 1118
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v5

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1119
    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    const-string/jumbo v4, "EVENTBUTLER"

    .line 1120
    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$2;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$2;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;Ljava/lang/String;)V

    const-class v8, Lcma;

    iget-object v9, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-interface {v4, v7, v8, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 1119
    invoke-interface {v5, v6, v4}, Lfac;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    goto/16 :goto_0

    .line 1146
    .end local v1    # "addKey":Ljava/lang/String;
    .end local v2    # "oldAddress":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "com.workapp.did.set.dingtalk.id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1147
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1148
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    goto/16 :goto_0

    .line 1149
    :cond_5
    const-string/jumbo v6, "intent_key_certify_submitted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1150
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->r(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    goto/16 :goto_0

    .line 1151
    :cond_6
    const-string/jumbo v6, "com.alibaba.dingtalk.runtimebase.WORK_MOBILE_UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1152
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    const-string/jumbo v5, "ding_card_work_mobile"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    .line 1153
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    const-string/jumbo v5, "ding_card_work_mobile_state_code"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobileStateCode:Ljava/lang/String;

    .line 1154
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    goto/16 :goto_0

    .line 1155
    :cond_7
    const-string/jumbo v6, "dingCardSettingUpdated"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1157
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->m()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    .line 1159
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->s(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1160
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->s(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v7

    if-eqz v7, :cond_8

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_1
.end method
