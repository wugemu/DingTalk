.class public abstract Lctt;
.super Lctr;
.source "AbsCommentMsgHolder.java"


# instance fields
.field protected S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

.field private Y:Lcts$c;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lctr;-><init>(Z)V

    .line 22
    new-instance v0, Lctt$1;

    invoke-direct {v0, p0}, Lctt$1;-><init>(Lctt;)V

    iput-object v0, p0, Lctt;->Y:Lcts$c;

    .line 40
    return-void
.end method

.method static synthetic a(Lctt;)Lcts$c;
    .locals 1
    .param p0, "x0"    # Lctt;

    .prologue
    .line 18
    iget-object v0, p0, Lctt;->Y:Lcts$c;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lctr;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lctt;->r:Landroid/view/View;

    sget v1, Lctk$f;->comment_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iput-object v0, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 104
    return-void
.end method

.method protected final b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    if-nez v3, :cond_0

    .line 97
    :goto_0
    return v1

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v3, v4, :cond_2

    .line 48
    :cond_1
    iget-object v2, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Lddq;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 53
    iget-object v2, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p1}, Lddq;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    .line 58
    .local v0, "likeGood":Z
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setKey(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 60
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const-string/jumbo v4, "reaction_like_count"

    invoke-static {p1, v4}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 61
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const-string/jumbo v4, "reaction_comment_count"

    invoke-static {p1, v4}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentCount(J)V

    .line 62
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    .line 63
    iget-object v3, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodEnable(Z)V

    .line 64
    iget-object v1, p0, Lctt;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    new-instance v3, Lctt$2;

    invoke-direct {v3, p0, p1}, Lctt$2;-><init>(Lctt;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;)V

    move v1, v2

    .line 97
    goto :goto_0

    :cond_4
    move v1, v2

    .line 63
    goto :goto_1
.end method
