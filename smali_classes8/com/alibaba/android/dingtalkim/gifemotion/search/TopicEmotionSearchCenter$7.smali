.class final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 1053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 232
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 2053
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 233
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3053
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method
