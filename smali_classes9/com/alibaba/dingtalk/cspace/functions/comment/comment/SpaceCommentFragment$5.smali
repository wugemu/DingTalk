.class final Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$5;
.super Ljava/lang/Object;
.source "SpaceCommentFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$5;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 203
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 193
    if-ne v1, p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$5;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcqt;

    move-result-object v0

    .line 1398
    iget v0, v0, Lcqt;->a:I

    .line 194
    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$5;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcqt;

    move-result-object v0

    invoke-virtual {v0}, Lcqt;->b()V

    .line 198
    :cond_0
    return-void
.end method
