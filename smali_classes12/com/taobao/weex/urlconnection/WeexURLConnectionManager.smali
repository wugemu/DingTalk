.class public Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;
.super Ljava/lang/Object;
.source "WeexURLConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;
    }
.end annotation


# static fields
.field private static final sIsInspectorPresent:Z


# instance fields
.field private final mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "isInspectorPresent":Z
    :try_start_0
    const-string/jumbo v1, "com.taobao.weex.devtools.WeexInspector"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v0, 0x1

    .line 47
    :goto_0
    sput-boolean v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->sIsInspectorPresent:Z

    .line 48
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "friendlyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->sIsInspectorPresent:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    goto :goto_0
.end method


# virtual methods
.method public getReporter()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getReporter()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public httpExchangeFailed(Ljava/io/IOException;)V
    .locals 1
    .param p1, "ex"    # Ljava/io/IOException;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->httpExchangeFailed(Ljava/io/IOException;)V

    .line 117
    :cond_0
    return-void
.end method

.method public interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "responseStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 138
    .end local p1    # "responseStream":Ljava/io/InputStream;
    :cond_0
    return-object p1
.end method

.method public isInspectorEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->isInspectorActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->postConnect()V

    .line 105
    :cond_0
    return-void
.end method

.method public preConnect(Ljava/net/HttpURLConnection;Lcom/taobao/weex/urlconnection/SimpleRequestEntity;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requestEntity"    # Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->mHolder:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->preConnect(Ljava/net/HttpURLConnection;Lcom/taobao/weex/urlconnection/SimpleRequestEntity;)V

    .line 90
    :cond_0
    return-void
.end method
