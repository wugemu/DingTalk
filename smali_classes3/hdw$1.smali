.class final Lhdw$1;
.super Landroid/content/BroadcastReceiver;
.source "CommentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdw;


# direct methods
.method constructor <init>(Lhdw;)V
    .locals 0
    .param p1, "this$0"    # Lhdw;

    .prologue
    .line 70
    iput-object p1, p0, Lhdw$1;->a:Lhdw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 73
    if-eqz p2, :cond_0

    iget-object v2, p0, Lhdw$1;->a:Lhdw;

    invoke-static {v2}, Lhdw;->a(Lhdw;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v2, "action_comment_count_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string/jumbo v2, "intent_key_comment_count"

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 80
    .local v0, "commentCount":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 81
    iget-object v2, p0, Lhdw$1;->a:Lhdw;

    invoke-static {v2}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentCount(J)V

    goto :goto_0
.end method
