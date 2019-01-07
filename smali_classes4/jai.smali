.class public final Ljai;
.super Ljava/lang/Object;
.source "IILWAPIChannelProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljai$a;,
        Ljai$b;
    }
.end annotation


# instance fields
.field a:Ljah;

.field b:J

.field private c:Ljai$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Ljai;->a:Ljah;

    .line 27
    iput-object v0, p0, Ljai;->c:Ljai$b;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I
    .locals 2
    .param p1, "lwAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .param p2, "reqData"    # Landroid/os/Bundle;
    .param p3, "version"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Ljai;->a:Ljah;

    invoke-interface {v1, p1, p2, p3}, Ljah;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I
    .locals 4
    .param p1, "lwAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .param p2, "lwMessage"    # Lcom/laiwang/sdk/message/LWMessage;
    .param p3, "version"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 51
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->setLwapiRandomKey(I)V

    .line 52
    iget-object v3, p0, Ljai;->a:Ljah;

    invoke-interface {v3, p1, p2, p3}, Ljah;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    .local v1, "ret":I
    invoke-virtual {p1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 63
    .end local v1    # "ret":I
    :cond_0
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public final a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Ljam;ILjava/lang/String;)I
    .locals 3
    .param p1, "iLWAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .param p2, "iLWAPICallback"    # Ljam;
    .param p3, "version"    # I
    .param p4, "appName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Ljai;->a:Ljah;

    invoke-interface {v2, p1, p2, p3, p4}, Ljah;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Ljam;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljai;->a:Ljah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljai;->c:Ljai$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljai$a;)Z
    .locals 5
    .param p1, "iSDKConnListener"    # Ljai$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 84
    iget-object v2, p0, Ljai;->c:Ljai$b;

    if-nez v2, :cond_1

    .line 85
    new-instance v2, Ljai$b;

    invoke-direct {v2, p0, p1}, Ljai$b;-><init>(Ljai;Ljai$a;)V

    iput-object v2, p0, Ljai;->c:Ljai$b;

    .line 93
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v1, "intentService":Landroid/content/Intent;
    const-string/jumbo v2, "com.alibaba.android.babylon"

    const-string/jumbo v3, "com.alibaba.android.babylon.push.CMNSService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljai;->b:J

    .line 104
    :try_start_0
    invoke-static {}, Ljap;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    invoke-static {}, Ljap;->a()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Ljai;->c:Ljai$b;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    .end local v1    # "intentService":Landroid/content/Intent;
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-object v2, p0, Ljai;->a:Ljah;

    if-eqz v2, :cond_0

    .line 88
    const-string/jumbo v2, "LWAPI"

    const-string/jumbo v3, "Laiwang service has already started."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {p1}, Ljai$a;->a()V

    goto :goto_0

    .line 108
    .restart local v1    # "intentService":Landroid/content/Intent;
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    goto :goto_0
.end method
