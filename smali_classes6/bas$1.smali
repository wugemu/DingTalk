.class final Lbas$1;
.super Landroid/content/BroadcastReceiver;
.source "DingCommentRemindPresenterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbas;


# direct methods
.method constructor <init>(Lbas;)V
    .locals 0
    .param p1, "this$0"    # Lbas;

    .prologue
    .line 52
    iput-object p1, p0, Lbas$1;->a:Lbas;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 55
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DingCommentRemindPresenterV2] receiver_action:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 56
    const-string/jumbo v2, "com.workapp.ding.confirm.ding"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v2, "ding_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 58
    .local v0, "dingId":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 59
    iget-object v2, p0, Lbas$1;->a:Lbas;

    invoke-static {v2}, Lbas;->a(Lbas;)Lbaq$c;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lbaq$c;->a(J)V

    .line 62
    .end local v0    # "dingId":J
    :cond_0
    return-void
.end method
