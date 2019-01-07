.class final Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;
.super Ljava/lang/Object;
.source "SecretChatSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "lastValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    const-string/jumbo v3, "1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4$1;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4$1;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;Ljava/lang/String;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    iget-object v7, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-interface {v2, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->c(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 260
    .end local v1    # "lastValue":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 233
    .restart local v1    # "lastValue":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v1    # "lastValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
