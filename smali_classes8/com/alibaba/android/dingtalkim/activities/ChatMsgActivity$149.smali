.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
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
    .line 5995
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5998
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5999
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 6001
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "oa_message_transmit_top_send_clicked"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 6003
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mPageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 6004
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mIconUrl:Ljava/lang/String;

    const/4 v5, 0x0

    .line 6003
    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 6006
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 6008
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v()V

    .line 6009
    return-void
.end method
