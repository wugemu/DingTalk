.class Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;
    .param p2, "x1"    # Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$1;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->access$300(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;)Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 453
    .local v0, "configuration":Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 457
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method
