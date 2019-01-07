.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;
.super Ljava/lang/Object;
.source "EmotionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

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
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 122
    :cond_0
    return-void
.end method
