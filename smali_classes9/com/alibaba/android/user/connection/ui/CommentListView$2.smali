.class final Lcom/alibaba/android/user/connection/ui/CommentListView$2;
.super Ljava/lang/Object;
.source "CommentListView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/ui/CommentListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lffc;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/connection/ui/CommentListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/ui/CommentListView;Lffc;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/CommentListView;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->c:Lcom/alibaba/android/user/connection/ui/CommentListView;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->a:Lffc;

    iput p3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->a:Lffc;

    .line 1044
    iget-boolean v0, v0, Lffc;->a:Z

    .line 154
    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->c:Lcom/alibaba/android/user/connection/ui/CommentListView;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->b(Lcom/alibaba/android/user/connection/ui/CommentListView;)Lcom/alibaba/android/user/connection/ui/CommentListView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->c:Lcom/alibaba/android/user/connection/ui/CommentListView;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->b(Lcom/alibaba/android/user/connection/ui/CommentListView;)Lcom/alibaba/android/user/connection/ui/CommentListView$b;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView$2;->b:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/connection/ui/CommentListView$b;->a(I)V

    .line 158
    :cond_0
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method