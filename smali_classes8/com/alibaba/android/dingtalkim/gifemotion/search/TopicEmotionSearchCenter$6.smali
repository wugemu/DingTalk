.class final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 1053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 215
    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->HAS_DISMISSED:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    .line 223
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 2053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 218
    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_SHOW:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 3053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 218
    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_DISMISS:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_0

    .line 220
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
