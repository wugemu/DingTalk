.class final Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CommentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    .line 172
    return-void
.end method
