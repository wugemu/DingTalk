.class public Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AntiBrush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/antibrush/AntiBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AntiReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, "ret":Z
    :try_start_0
    const-string/jumbo v3, "Result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v3, "AntiBrush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "anti onReceive result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const-string/jumbo v3, "success"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const/4 v2, 0x1

    .line 154
    :cond_0
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/taobao/accs/antibrush/AntiBrush;->a(Landroid/content/Context;Z)V

    .line 155
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "AntiBrush"

    const-string/jumbo v4, "anti onReceive"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/taobao/accs/antibrush/AntiBrush;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/taobao/accs/antibrush/AntiBrush;->a(Landroid/content/Context;Z)V

    throw v3
.end method
