.class final Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$2;
.super Ljava/lang/Object;
.source "CommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;->b()V

    .line 149
    :cond_0
    return-void
.end method
