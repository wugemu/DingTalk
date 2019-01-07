.class final Lcxd$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RobotMarkdownViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcxd;


# direct methods
.method constructor <init>(Lcxd;)V
    .locals 0
    .param p1, "this$0"    # Lcxd;

    .prologue
    .line 330
    iput-object p1, p0, Lcxd$3;->a:Lcxd;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    iget-object v4, p0, Lcxd$3;->a:Lcxd;

    iget-object v4, v4, Lcxd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v4}, Ldma;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v1

    .line 339
    .local v1, "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    iget-object v4, p0, Lcxd$3;->a:Lcxd;

    iget-object v4, v4, Lcxd;->d:Landroid/app/Activity;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 340
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalCid:Ljava/lang/String;

    .line 341
    .local v0, "cid":Ljava/lang/String;
    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalMsgId:J

    .line 342
    .local v2, "messageId":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 343
    iget-object v4, p0, Lcxd$3;->a:Lcxd;

    iget-object v4, v4, Lcxd;->d:Landroid/app/Activity;

    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;JZ)V

    .line 344
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "chat_quote_markdown_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 347
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "messageId":J
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 352
    iget-object v0, p0, Lcxd$3;->a:Lcxd;

    invoke-static {v0}, Lcxd;->c(Lcxd;)Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcxd$3;->a:Lcxd;

    invoke-static {v0}, Lcxd;->c(Lcxd;)Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->performLongClick()Z

    .line 355
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    iget-object v1, p0, Lcxd$3;->a:Lcxd;

    invoke-static {v1}, Lcxd;->d(Lcxd;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "singleUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcxd$3;->a:Lcxd;

    iget-object v2, v2, Lcxd;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 362
    const/4 v1, 0x1

    .line 364
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
