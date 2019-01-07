.class Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;
.super Lcom/laiwang/protocol/IAidlService$a;
.source "LWPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/LWPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AidlServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/LWPService;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/LWPService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/LWPService;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;->this$0:Lcom/laiwang/protocol/android/LWPService;

    invoke-direct {p0}, Lcom/laiwang/protocol/IAidlService$a;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;Ljava/lang/String;Lcom/laiwang/protocol/core/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/laiwang/protocol/core/Response;

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;->processResponse(Ljava/lang/String;Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method

.method private processResponse(Ljava/lang/String;Lcom/laiwang/protocol/core/Response;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 235
    invoke-static {p1}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "splits":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 240
    aget-object v5, v4, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v4, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, "seq":I
    new-instance v2, Lcom/laiwang/protocol/core/MessageID;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-direct {v2, v5, v3}, Lcom/laiwang/protocol/core/MessageID;-><init>(Ljava/lang/String;I)V

    .line 248
    .local v2, "messageID":Lcom/laiwang/protocol/core/MessageID;
    new-instance v0, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {v0, v5, v2}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;Lcom/laiwang/protocol/core/MessageID;)V

    .line 249
    .local v0, "fakeResponse":Lcom/laiwang/protocol/core/Response;
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 250
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v5, "mid"

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/laiwang/protocol/core/Response;->setHeaders(Ljava/util/Map;)V

    .line 252
    const-string/jumbo v5, "mid"

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 253
    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->onRemoteMessage(Lcom/laiwang/protocol/android/bd;)V

    goto :goto_0
.end method


# virtual methods
.method public deviceTokenChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$2;-><init>(Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/laiwang/protocol/android/w;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/android/ab;->h:Lcom/laiwang/protocol/android/ab$c;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/w;->a(Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public logout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshAladdinCaches()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshCacheHeader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public send(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-static {p1}, Lcom/laiwang/protocol/android/be;->a(Landroid/os/Bundle;)Lcom/laiwang/protocol/android/bd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/bd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotifier(Lcom/laiwang/protocol/c;)V
    .locals 1
    .param p1, "notifier"    # Lcom/laiwang/protocol/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/android/LWP;->setBinderNotifier(Lcom/laiwang/protocol/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tokenChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl$1;-><init>(Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/laiwang/protocol/android/w;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
