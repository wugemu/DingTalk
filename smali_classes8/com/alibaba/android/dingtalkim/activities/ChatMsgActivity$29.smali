.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7181
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 7184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7197
    :goto_0
    return-void

    .line 7188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 7190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v2, Lctk$i;->dt_rm_chat_add_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 7191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aS(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 7193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v2, Lctk$i;->dt_lv_chat_add_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 7195
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0
.end method
