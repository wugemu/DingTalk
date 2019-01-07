.class final Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;
.super Ljava/lang/Object;
.source "GroupNameSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 222
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 197
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1202
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1203
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 197
    :cond_0
    return-void
.end method
