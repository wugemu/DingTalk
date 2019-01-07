.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView$1;
.super Ljava/lang/Object;
.source "EmotionListView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 3
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v1, v1, Lcqz$a;

    if-eqz v1, :cond_1

    .line 74
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v0, Lcqz$a;

    .line 1856
    .local v0, "identifier":Lcqz$a;
    iget-object v1, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v1

    .line 2856
    iget-object v2, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Lcrc;->a(Ljava/lang/String;)V

    .line 80
    .end local v0    # "identifier":Lcqz$a;
    :cond_1
    return-void
.end method
