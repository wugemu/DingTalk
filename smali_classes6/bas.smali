.class public final Lbas;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenterV2.java"

# interfaces
.implements Lbaq$e;
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbaq$e;",
        "Lcma",
        "<",
        "Lbgh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lbaq$c;

.field private b:Landroid/app/Activity;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbaq$c;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lbaq$c;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbas;->b:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lbas;->a:Lbaq$c;

    .line 43
    invoke-interface {p2, p0}, Lbaq$c;->setPresenter(Lcjd;)V

    .line 2052
    new-instance v0, Lbas$1;

    invoke-direct {v0, p0}, Lbas$1;-><init>(Lbas;)V

    iput-object v0, p0, Lbas;->c:Landroid/content/BroadcastReceiver;

    .line 2064
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2065
    const-string/jumbo v1, "com.workapp.ding.confirm.ding"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2066
    iget-object v1, p0, Lbas;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbas;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2069
    new-instance v0, Lbas$2;

    invoke-direct {v0, p0}, Lbas$2;-><init>(Lbas;)V

    iput-object v0, p0, Lbas;->d:Landroid/content/BroadcastReceiver;

    .line 2078
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2079
    const-string/jumbo v1, "com.workapp.ding.confirm.all_comment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2080
    iget-object v1, p0, Lbas;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbas;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lbas;)Lbaq$c;
    .locals 1
    .param p0, "x0"    # Lbas;

    .prologue
    .line 34
    iget-object v0, p0, Lbas;->a:Lbaq$c;

    return-object v0
.end method


# virtual methods
.method public final a(JI)V
    .locals 7
    .param p1, "lastTime"    # J
    .param p3, "size"    # I

    .prologue
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCommentRemindPresenterV2] loadMore lastTime:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    const-class v0, Lcma;

    iget-object v2, p0, Lbas;->b:Landroid/app/Activity;

    invoke-static {p0, v0, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 2288
    iget-object v6, v1, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$21;

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbbp$21;-><init>(Lbbp;JILcma;)V

    invoke-virtual {v6, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 106
    .line 2084
    iget-object v0, p0, Lbas;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lbas;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbas;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2086
    iput-object v2, p0, Lbas;->c:Landroid/content/BroadcastReceiver;

    .line 2088
    :cond_0
    iget-object v0, p0, Lbas;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2089
    iget-object v0, p0, Lbas;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbas;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2090
    iput-object v2, p0, Lbas;->d:Landroid/content/BroadcastReceiver;

    .line 107
    :cond_1
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 34
    check-cast p1, Lbgh;

    .line 3117
    if-nez p1, :cond_0

    .line 3118
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[DingUnReadPresenterV2] onDataReceived unreadCommentListCountObject is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3119
    :goto_0
    return-void

    .line 4025
    :cond_0
    iget-object v2, p1, Lbgh;->b:Ljava/util/List;

    .line 5021
    iget-object v3, p1, Lbgh;->a:Lbfb;

    .line 3123
    const/4 v0, -0x1

    .line 3124
    if-eqz v3, :cond_1

    .line 6021
    iget v0, v3, Lbfb;->b:I

    .line 3127
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.ding.update.ding.unread.comment.count"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3128
    const-string/jumbo v4, "intent_key_refresh_ding_comment_unread_count"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3129
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3131
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[DingCommentRemindPresenterV2] onDataReceived size:"

    aput-object v4, v3, v1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 3133
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v3, Lbas$3;

    invoke-direct {v3, p0, v2, v0}, Lbas$3;-><init>(Lbas;Ljava/util/List;I)V

    invoke-virtual {v1, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCommentRemindPresenterV2] onException code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " msg:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbas$4;

    invoke-direct {v1, p0, p1, p2}, Lbas$4;-><init>(Lbas;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 147
    return-void
.end method
