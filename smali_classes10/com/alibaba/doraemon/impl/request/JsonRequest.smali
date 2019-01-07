.class public abstract Lcom/alibaba/doraemon/impl/request/JsonRequest;
.super Lcom/alibaba/doraemon/impl/request/VolleyRequest;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private final mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const-string/jumbo v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "utf-8"

    aput-object v3, v1, v2

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener",
            "<TT;>;",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    .local p4, "listener":Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener<TT;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V

    .line 57
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    .line 58
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->mRequestBody:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestBody"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener",
            "<TT;>;",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    .local p3, "listener":Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener<TT;>;"
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected deliverResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    .local p2, "response":Ljava/lang/Object;, "TT;"
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;->onResponse(ILjava/lang/Object;JLjava/util/Map;)V

    .line 64
    return-void
.end method

.method public getBody()[B
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->mRequestBody:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->mRequestBody:Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->mRequestBody:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/request/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    sget-object v0, Lcom/alibaba/doraemon/impl/request/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/JsonRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/JsonRequest;, "Lcom/alibaba/doraemon/impl/request/JsonRequest<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/JsonRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/NetworkResponse;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<TT;>;"
        }
    .end annotation
.end method
