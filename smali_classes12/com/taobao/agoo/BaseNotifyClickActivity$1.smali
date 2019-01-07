.class final Lcom/taobao/agoo/BaseNotifyClickActivity$1;
.super Ljava/lang/Object;
.source "BaseNotifyClickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/taobao/agoo/BaseNotifyClickActivity;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    iput-object p2, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    :try_start_0
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->a:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->a:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 84
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->b(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpm;

    move-result-object v4

    if-nez v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    new-instance v5, Lkpm;

    invoke-direct {v5}, Lkpm;-><init>()V

    invoke-static {v4, v5}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Lcom/taobao/agoo/BaseNotifyClickActivity;Lkpm;)Lkpm;

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->c(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpl;

    move-result-object v4

    if-nez v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    new-instance v5, Lkpl;

    invoke-direct {v5}, Lkpl;-><init>()V

    invoke-static {v4, v5}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Lcom/taobao/agoo/BaseNotifyClickActivity;Lkpl;)Lkpl;

    .line 89
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->c(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpl;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-virtual {v5}, Lcom/taobao/agoo/BaseNotifyClickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v6}, Lcom/taobao/agoo/BaseNotifyClickActivity;->b(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpm;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkpl;->a(Landroid/content/Context;Lkpm;Lorg/android/agoo/message/MessageService;)V

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->c(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpl;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v6}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lkpl;->a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v2, "msgIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4}, Lcom/taobao/agoo/BaseNotifyClickActivity;->c(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lkpl;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "2"

    invoke-virtual {v4, v5, v6}, Lkpl;->a([BLjava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v4, v2}, Lcom/taobao/agoo/BaseNotifyClickActivity;->b(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "msgIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a()V

    .line 104
    :goto_1
    return-void

    .line 97
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "accs.BaseNotifyClickActivity"

    const-string/jumbo v5, "parseMsgFromNotifyListener null!!"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "source"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/taobao/agoo/BaseNotifyClickActivity$1;->b:Lcom/taobao/agoo/BaseNotifyClickActivity;

    invoke-static {v8}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "accs.BaseNotifyClickActivity"

    const-string/jumbo v5, "buildMessage"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    invoke-static {}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a()V

    goto :goto_1

    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/taobao/agoo/BaseNotifyClickActivity;->a()V

    throw v4
.end method
