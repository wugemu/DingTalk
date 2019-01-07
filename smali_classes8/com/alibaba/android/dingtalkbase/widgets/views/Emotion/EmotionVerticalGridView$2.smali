.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;
.super Ljava/lang/Object;
.source "EmotionVerticalGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-interface {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 195
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
