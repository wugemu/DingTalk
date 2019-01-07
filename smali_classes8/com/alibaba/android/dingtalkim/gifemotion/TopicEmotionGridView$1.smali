.class final Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$1;
.super Ljava/lang/Object;
.source "TopicEmotionGridView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;->a(Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V

    .line 59
    :cond_0
    return-void
.end method
