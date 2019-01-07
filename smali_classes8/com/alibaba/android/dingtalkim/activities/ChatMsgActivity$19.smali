.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;
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
    .line 6582
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

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
    .line 6585
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6606
    :goto_0
    return-void

    .line 6588
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6589
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6590
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Z)V

    goto :goto_0

    .line 6592
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6593
    sget v1, Lctk$i;->dt_live_audio_in_focused:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 6596
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6597
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 6598
    const-string/jumbo v1, "isretail"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6601
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_change_voicetype_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 6603
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6604
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lctm;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto :goto_0
.end method
