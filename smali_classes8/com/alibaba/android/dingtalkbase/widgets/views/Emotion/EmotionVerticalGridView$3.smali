.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;
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
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 201
    sget v2, Lcig$j;->icon_tag:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 203
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-interface {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 210
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
