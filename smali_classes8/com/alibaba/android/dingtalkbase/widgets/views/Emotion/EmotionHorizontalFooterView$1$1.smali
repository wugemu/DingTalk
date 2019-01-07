.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$1;
.super Ljava/lang/Object;
.source "EmotionHorizontalFooterView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 1
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 256
    :cond_0
    return-void
.end method
