.class final Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;
.super Ljava/lang/Object;
.source "TeleConfFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

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
    .line 170
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "no problem"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget v1, Leuj$l;->conf_txt_quality_problem_toast_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 202
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 178
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;-><init>()V

    .line 179
    .local v0, "feedbackModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;->sessionId:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;->feedbackType:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 181
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v3

    const-string/jumbo v1, "EVENTBUTLER"

    .line 182
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leyo$d;

    .line 1184
    if-nez v0, :cond_2

    .line 197
    :cond_1
    :goto_1
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set feedback "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->valueOf()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_2
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 1188
    if-eqz v2, :cond_1

    .line 1191
    new-instance v4, Leyd$7;

    invoke-direct {v4, v3, v1}, Leyd$7;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v2, v0, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->putCallFeedback(Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;Liyv;)V

    goto :goto_1

    .line 199
    .end local v0    # "feedbackModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;
    :cond_3
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "network error"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget v1, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0
.end method
