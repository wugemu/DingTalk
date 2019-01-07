.class final Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$3;
.super Ljava/lang/Object;
.source "SpaceCommentFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


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
    .line 161
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lgdn$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lgdn$a;

    move-result-object v0

    invoke-interface {v0}, Lgdn$a;->a()V

    .line 167
    :cond_0
    return-void
.end method
