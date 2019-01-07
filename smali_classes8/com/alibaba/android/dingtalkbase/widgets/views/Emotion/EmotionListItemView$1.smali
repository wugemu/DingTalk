.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView$1;
.super Ljava/lang/Object;
.source "EmotionListItemView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 1
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 141
    :cond_0
    return-void
.end method
