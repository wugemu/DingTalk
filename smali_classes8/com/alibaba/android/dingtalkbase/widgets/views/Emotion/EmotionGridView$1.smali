.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;
.super Ljava/lang/Object;
.source "EmotionGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

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
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 133
    :cond_0
    return-void
.end method
