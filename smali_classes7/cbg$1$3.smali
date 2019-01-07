.class final Lcbg$1$3;
.super Ljava/lang/Object;
.source "FestivalRedPacketManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[Z

.field final synthetic d:Lcbg$1;


# direct methods
.method constructor <init>(Lcbg$1;Ljava/io/File;[Ljava/lang/String;[Z)V
    .locals 0
    .param p1, "this$1"    # Lcbg$1;

    .prologue
    .line 247
    iput-object p1, p0, Lcbg$1$3;->d:Lcbg$1;

    iput-object p2, p0, Lcbg$1$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcbg$1$3;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcbg$1$3;->c:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 272
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 6
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    iget-object v2, p0, Lcbg$1$3;->a:Ljava/io/File;

    invoke-static {v1, v2}, Lcbg;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    iget-object v2, p0, Lcbg$1$3;->c:[Z

    monitor-enter v2

    .line 262
    :try_start_1
    iget-object v1, p0, Lcbg$1$3;->c:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 263
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    iget-object v1, p0, Lcbg$1$3;->b:[Ljava/lang/String;

    const-string/jumbo v2, "write package.zip error"

    aput-object v2, v1, v4

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcbg$1$3;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "download package.zip error: "

    aput-object v3, v2, v4

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 268
    return-void
.end method
