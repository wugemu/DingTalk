.class public Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
.super Ljava/lang/Object;
.source "H5AppHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    .line 109
    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->method:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    .line 111
    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    .line 114
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->access$400(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->access$500(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->method:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->access$600(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->access$700(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;-><init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$1;)V

    return-object v0
.end method

.method public method(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->method:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url:Ljava/lang/String;

    .line 122
    return-object p0
.end method
