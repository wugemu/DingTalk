.class public final Ldip;
.super Ljava/lang/Object;
.source "RobotNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "botModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->isManageable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->settingBotURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->settingBotURL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/robot_setting.html"

    new-instance v2, Ldip$2;

    invoke-direct {v2, p1, p2}, Ldip$2;-><init>(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
