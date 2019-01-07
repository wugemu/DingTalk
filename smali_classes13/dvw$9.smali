.class final Ldvw$9;
.super Landroid/content/BroadcastReceiver;
.source "OneBoxCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvw;


# direct methods
.method constructor <init>(Ldvw;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 824
    iput-object p1, p0, Ldvw$9;->a:Ldvw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "send_key_box_action_do"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    const-string/jumbo v1, "key_oa_todo_id"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 830
    .local v2, "itemId":J
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v4, Ldvw$9$1;

    invoke-direct {v4, p0, v2, v3}, Ldvw$9$1;-><init>(Ldvw$9;J)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 843
    .end local v2    # "itemId":J
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    const-string/jumbo v1, "remove_key_oa_todo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    const-string/jumbo v1, "key_oa_todo_id"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 841
    .restart local v2    # "itemId":J
    iget-object v1, p0, Ldvw$9;->a:Ldvw;

    invoke-static {v1, v2, v3}, Ldvw;->b(Ldvw;J)V

    goto :goto_0
.end method
