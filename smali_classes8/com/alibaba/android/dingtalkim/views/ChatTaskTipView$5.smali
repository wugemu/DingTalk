.class final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

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
    .line 291
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_user_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    const-string/jumbo v2, "intent_key_todo_task_ids"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 295
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 296
    const-string/jumbo v1, "chat_task_click"

    invoke-static {v1}, Lcps;->a(Ljava/lang/String;)V

    .line 298
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
