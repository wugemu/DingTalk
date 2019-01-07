.class final Ldgj$4;
.super Landroid/content/BroadcastReceiver;
.source "ChatListDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgj;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldgj;


# direct methods
.method constructor <init>(Ldgj;)V
    .locals 0
    .param p1, "this$0"    # Ldgj;

    .prologue
    .line 189
    iput-object p1, p0, Ldgj$4;->a:Ldgj;

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
    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    .line 192
    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.savefile2space"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const-string/jumbo v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 1050
    iget-object v1, v1, Ldgj;->d:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 2050
    iget-object v1, v1, Ldgj;->d:Ljava/lang/String;

    .line 2125
    if-eqz v1, :cond_2

    invoke-static {v1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2126
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2128
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 200
    :cond_2
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 3050
    iget-object v1, v1, Ldgj;->b:Ldgi$b;

    .line 200
    invoke-interface {v1}, Ldgi$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 4050
    iget-object v1, v1, Ldgj;->b:Ldgi$b;

    .line 201
    invoke-interface {v1}, Ldgi$b;->a()V

    goto :goto_0

    .line 204
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "action_ding_create_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "key_ding_create_result_from"

    .line 205
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_4

    const-string/jumbo v1, "key_ding_create_result_from"

    .line 206
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_4
    const-string/jumbo v1, "key_ding_create_result_seed"

    .line 207
    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 5050
    const-wide/16 v4, 0x0

    .line 207
    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 208
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 6050
    iget-object v1, v1, Ldgj;->b:Ldgi$b;

    .line 208
    invoke-interface {v1}, Ldgi$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 7050
    iget-object v1, v1, Ldgj;->b:Ldgi$b;

    .line 209
    invoke-interface {v1}, Ldgi$b;->a()V

    goto/16 :goto_0

    .line 211
    :cond_5
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "intent_key_menu_seed"

    .line 212
    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 8050
    iget-wide v4, v1, Ldgj;->f:J

    .line 212
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 9050
    iget-object v1, v1, Ldgj;->b:Ldgi$b;

    .line 213
    invoke-interface {v1}, Ldgi$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Ldgj$4;->a:Ldgj;

    .line 10050
    iget-object v1, v1, Ldgj;->b:Ldgi$b;

    .line 214
    invoke-interface {v1}, Ldgi$b;->a()V

    goto/16 :goto_0
.end method
