.class final Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;
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
    .line 114
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    sget v2, Lcig$j;->dt_base_click_too_frequently:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Z)Z

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Z)Z

    .line 124
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;J)J

    .line 126
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Z)Z

    .line 127
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)J

    move-result-wide v4

    add-long v0, v4, v8

    .line 129
    .local v0, "tempLikeCount":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    .line 131
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V

    goto :goto_0

    .end local v0    # "tempLikeCount":J
    :cond_2
    move v2, v4

    .line 126
    goto :goto_1

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)J

    move-result-wide v2

    sub-long v0, v2, v8

    .line 134
    .restart local v0    # "tempLikeCount":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    .line 136
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;->c()V

    goto :goto_0
.end method
