.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;
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
    .line 6427
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

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
    const/4 v2, 0x1

    .line 6430
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6431
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;

    move-result-object v1

    .line 7181
    iget-boolean v3, v1, Ldie;->o:Z

    if-eqz v3, :cond_0

    .line 7183
    iget-object v1, v1, Ldie;->l:Ldib$a;

    invoke-interface {v1}, Ldib$a;->d()V

    .line 6433
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 7777
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f:Z

    .line 6433
    if-nez v1, :cond_1

    .line 6434
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f()V

    .line 6437
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 8654
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 6437
    :goto_0
    if-eqz v1, :cond_2

    .line 6438
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6439
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;

    move-result-object v1

    .line 9177
    invoke-virtual {v1, v2}, Ldie;->c(Z)V

    .line 6443
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 6444
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6463
    :goto_1
    return-void

    :cond_3
    move v1, v2

    .line 8654
    goto :goto_0

    .line 6446
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 9777
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f:Z

    .line 6446
    if-eqz v1, :cond_5

    .line 6447
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6448
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;

    move-result-object v1

    .line 10177
    invoke-virtual {v1, v2}, Ldie;->c(Z)V

    .line 6452
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6453
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 6454
    const-string/jumbo v1, "isretail"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6456
    :cond_6
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_emotion_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 6457
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6459
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method
