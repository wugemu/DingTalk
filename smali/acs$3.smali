.class final Lacs$3;
.super Landroid/content/BroadcastReceiver;
.source "MailNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacs;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacs;


# direct methods
.method constructor <init>(Lacs;)V
    .locals 0
    .param p1, "this$0"    # Lacs;

    .prologue
    .line 369
    iput-object p1, p0, Lacs$3;->a:Lacs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 372
    if-nez p2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "proccess_id"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 380
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 381
    .local v1, "cpid":I
    if-eq v6, v1, :cond_3

    .line 382
    iget-object v9, p0, Lacs$3;->a:Lacs;

    .line 1347
    iget-object v8, v9, Lacs;->i:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_2

    .line 1349
    :try_start_1
    iget-object v8, v9, Lacs;->a:Landroid/content/Context;

    iget-object v10, v9, Lacs;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1353
    :goto_1
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, v9, Lacs;->i:Landroid/content/BroadcastReceiver;

    .line 1355
    :cond_2
    iget-object v8, v9, Lacs;->d:Lyb;

    if-eqz v8, :cond_0

    .line 2085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v8

    .line 1356
    iget-object v10, v9, Lacs;->d:Lyb;

    invoke-interface {v8, v10}, Lya;->a(Lyb;)V

    .line 1357
    const/4 v8, 0x0

    iput-object v8, v9, Lacs;->d:Lyb;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 406
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cpid":I
    .end local v6    # "pid":I
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MailNotificationManager"

    const-string/jumbo v9, "mBroadcastReceiver.onReceive() "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "cpid":I
    .restart local v6    # "pid":I
    :catch_1
    move-exception v8

    .line 1351
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 386
    :cond_3
    const-string/jumbo v8, "com.workapp.hide.action.goto.maildetail"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 387
    const-string/jumbo v8, "mailId"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "mailServerId":Ljava/lang/String;
    const-string/jumbo v8, "account_name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "receiverMail":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 390
    const/4 v8, 0x0

    invoke-static {p1, v7, v3, v8}, Lacg;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 392
    .end local v3    # "mailServerId":Ljava/lang/String;
    .end local v7    # "receiverMail":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "com.workapp.hide.action.goto.maillist"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 395
    const-string/jumbo v8, "mail_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 397
    .local v4, "folderId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 398
    const/4 v8, 0x0

    invoke-static {p1, v4, v5, v8}, Lacg;->a(Landroid/content/Context;JLcma;)V

    goto/16 :goto_0

    .line 400
    .end local v4    # "folderId":J
    :cond_5
    const-string/jumbo v8, "com.workapp.hide.action.cancel.maildetail"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 401
    const-string/jumbo v8, "mailId"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .restart local v3    # "mailServerId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 403
    iget-object v8, p0, Lacs$3;->a:Lacs;

    invoke-virtual {v8, v3}, Lacs;->a(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
