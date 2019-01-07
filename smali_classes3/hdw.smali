.class public final Lhdw;
.super Lhdu;
.source "CommentDelegate.java"


# static fields
.field private static final d:Ljava/lang/CharSequence;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "14020012"

    sput-object v0, Lhdw;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lhdw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lhdw;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    .line 2241
    new-instance v0, Lhdw$5;

    invoke-direct {v0, p0, p2, p1}, Lhdw$5;-><init>(Lhdw;Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2278
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ILjava/lang/String;Lcma;)V

    .line 48
    return-void
.end method

.method static synthetic b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    return-object v0
.end method

.method static synthetic c(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lhdw;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic f(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lhdw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdw;

    .prologue
    .line 48
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 63
    .line 1096
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_1

    .line 1110
    const-string/jumbo v1, "comment_view_show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1111
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1113
    if-eqz v1, :cond_1

    .line 1117
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    sget v4, Lhdn$h;->view_comment:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iput-object v0, p0, Lhdw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 1121
    iget-object v0, p0, Lhdw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setKey(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lhdw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    new-instance v4, Lhdw$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lhdw$2;-><init>(Lhdw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;)V

    .line 2070
    new-instance v0, Lhdw$1;

    invoke-direct {v0, p0}, Lhdw$1;-><init>(Lhdw;)V

    iput-object v0, p0, Lhdw;->b:Landroid/content/BroadcastReceiver;

    .line 2087
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2088
    const-string/jumbo v2, "action_comment_count_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2089
    iget-object v2, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v4, p0, Lhdw;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1168
    iget-object v0, p0, Lhdw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 2173
    new-instance v2, Lhdw$3;

    invoke-direct {v2, p0, v0, v1}, Lhdw$3;-><init>(Lhdw;Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Ljava/lang/String;)V

    .line 2204
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v4, Lcma;

    iget-object v5, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-interface {v0, v2, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2205
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;ILcma;)V

    .line 1169
    iget-object v2, p0, Lhdw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 2209
    new-instance v0, Lhdw$4;

    invoke-direct {v0, p0, v2}, Lhdw$4;-><init>(Lhdw;Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V

    .line 2233
    iget-object v2, p0, Lhdw;->a:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2234
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v4, Lcma;

    iget-object v5, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-interface {v2, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2237
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-static {v1}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Ljava/lang/String;JLcma;)V

    .line 64
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lhdw;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lhdw;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lhdw;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lhdw;->b:Landroid/content/BroadcastReceiver;

    .line 287
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method
