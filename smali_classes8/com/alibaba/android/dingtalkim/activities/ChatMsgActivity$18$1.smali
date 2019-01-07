.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    .prologue
    .line 6523
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6526
    invoke-static {}, Lebb;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6527
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-virtual {v3, v2}, Ldiz;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z

    .line 6536
    :cond_0
    :goto_0
    return-void

    .line 6529
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6531
    .local v0, "current":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 6532
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)J

    .line 6533
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-virtual {v3, v2}, Ldiz;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z

    goto :goto_0
.end method
