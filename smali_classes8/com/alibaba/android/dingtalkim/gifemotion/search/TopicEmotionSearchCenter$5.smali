.class final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "ret":Z
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 1053
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 205
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 2053
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 206
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3053
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a(Ljava/lang/String;)V

    .line 209
    :cond_0
    return v0
.end method
