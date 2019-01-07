.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;
.super Landroid/content/BroadcastReceiver;
.source "H5WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$array:Z

.field final synthetic val$callback:Landroid/webkit/ValueCallback;

.field final synthetic val$manager:Ldq;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Ldq;Landroid/app/Activity;Landroid/webkit/ValueCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$manager:Ldq;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$callback:Landroid/webkit/ValueCallback;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$array:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 469
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$manager:Ldq;

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$manager:Ldq;

    invoke-virtual {v0, p0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->access$102(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "FILE_CHOOSER_RESULT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v7, 0x0

    .line 485
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "fileUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 486
    .local v1, "resultUri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 487
    const-string/jumbo v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive result "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$callback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_4

    .line 494
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$array:Z

    if-nez v0, :cond_5

    move-object v8, v1

    .line 495
    .local v8, "object":Ljava/lang/Object;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    .end local v8    # "object":Ljava/lang/Object;
    :cond_4
    if-eqz v7, :cond_0

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 494
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    new-array v8, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object v1, v8, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 497
    .end local v1    # "resultUri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 498
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "exception detail"

    invoke-static {v0, v2, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    const-string/jumbo v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 500
    .restart local v1    # "resultUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$callback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_6

    .line 501
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$array:Z

    if-nez v0, :cond_7

    move-object v8, v1

    .line 502
    .restart local v8    # "object":Ljava/lang/Object;
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    .end local v8    # "object":Ljava/lang/Object;
    :cond_6
    if-eqz v7, :cond_0

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 501
    :cond_7
    const/4 v0, 0x1

    :try_start_3
    new-array v8, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object v1, v8, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 505
    .end local v1    # "resultUri":Landroid/net/Uri;
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method
