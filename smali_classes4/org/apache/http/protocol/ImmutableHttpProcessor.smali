.class public final Lorg/apache/http/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpProcessor;


# instance fields
.field private final requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

.field private final responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestInterceptorList;Lorg/apache/http/protocol/HttpResponseInterceptorList;)V
    .locals 5
    .param p1, "requestInterceptors"    # Lorg/apache/http/protocol/HttpRequestInterceptorList;
    .param p2, "responseInterceptors"    # Lorg/apache/http/protocol/HttpResponseInterceptorList;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->getRequestInterceptorCount()I

    move-result v0

    .line 78
    .local v0, "count":I
    new-array v2, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    invoke-interface {p1, v1}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v3

    aput-object v3, v2, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    new-array v2, v4, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 85
    :cond_1
    if-eqz p2, :cond_2

    .line 86
    invoke-interface {p2}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->getResponseInterceptorCount()I

    move-result v0

    .line 87
    .restart local v0    # "count":I
    new-array v2, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 88
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 89
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v3

    aput-object v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    new-array v2, v4, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 94
    :cond_3
    return-void
.end method

.method public constructor <init>([Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "requestInterceptors"    # [Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V

    .line 98
    return-void
.end method

.method public constructor <init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 5
    .param p1, "requestInterceptors"    # [Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "responseInterceptors"    # [Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    array-length v0, p1

    .line 54
    .local v0, "count":I
    new-array v2, v0, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 56
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    new-array v2, v4, [Lorg/apache/http/HttpRequestInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 62
    array-length v0, p2

    .line 63
    .restart local v0    # "count":I
    new-array v2, v0, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 64
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 65
    iget-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    aget-object v3, p2, v1

    aput-object v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    new-array v2, v4, [Lorg/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    .line 70
    :cond_3
    return-void
.end method

.method public constructor <init>([Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "responseInterceptors"    # [Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;[Lorg/apache/http/HttpResponseInterceptor;)V

    .line 102
    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lorg/apache/http/HttpRequestInterceptor;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/http/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lorg/apache/http/HttpResponseInterceptor;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
