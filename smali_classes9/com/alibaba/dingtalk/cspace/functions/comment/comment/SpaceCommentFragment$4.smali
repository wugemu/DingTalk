.class final Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;
.super Ljava/lang/Object;
.source "SpaceCommentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 170
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 173
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p3, v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqw;

    .line 179
    .local v0, "commentIContentModel":Lgqw;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcqt;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 180
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lgdn$a;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lgdn$a;

    move-result-object v3

    iget-object v4, v0, Lgqw;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 180
    invoke-interface {v3, v4, v5}, Lgdn$a;->a(J)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 182
    .local v1, "isAllowReply":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 183
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcqt;

    move-result-object v3

    iget-object v4, v0, Lgqw;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 183
    iget-object v6, v0, Lgqw;->e:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcqt;->a(ZJLjava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcqt;

    move-result-object v2

    invoke-virtual {v2}, Lcqt;->a()V

    goto :goto_0

    .line 180
    .end local v1    # "isAllowReply":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
