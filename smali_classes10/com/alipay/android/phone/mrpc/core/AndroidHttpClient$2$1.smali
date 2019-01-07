.class Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRedirects:I

.field final synthetic this$1:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;->this$1:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;->mRedirects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;->mRedirects:I

    .line 204
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .line 205
    .local v0, "isRedirect":Z
    if-nez v0, :cond_1

    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;->mRedirects:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 206
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 207
    .local v1, "responseCode":I
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x1

    .line 211
    .end local v0    # "isRedirect":Z
    .end local v1    # "responseCode":I
    :cond_1
    return v0
.end method
