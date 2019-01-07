.class public final Lcom/squareup/okhttp/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/squareup/okhttp/ResponseBody;

.field private volatile cacheControl:Lcom/squareup/okhttp/CacheControl;

.field private cacheResponse:Lcom/squareup/okhttp/Response;

.field private final code:I

.field private final handshake:Lcom/squareup/okhttp/Handshake;

.field private final headers:Lcom/squareup/okhttp/Headers;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lcom/squareup/okhttp/Response;

.field private final priorResponse:Lcom/squareup/okhttp/Response;

.field private final protocol:Lcom/squareup/okhttp/Protocol;

.field private final request:Lcom/squareup/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Response$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/Response$Builder;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$000(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    .line 52
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$100(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$200(Lcom/squareup/okhttp/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/Response;->code:I

    .line 54
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$300(Lcom/squareup/okhttp/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$400(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 56
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$500(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    .line 57
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$600(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->body:Lcom/squareup/okhttp/ResponseBody;

    .line 58
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$700(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->networkResponse:Lcom/squareup/okhttp/Response;

    .line 59
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$800(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 60
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$900(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->priorResponse:Lcom/squareup/okhttp/Response;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/Response$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/Response$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Response;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Protocol;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/Response;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    return v0
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/Response;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Handshake;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->body:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->networkResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->cacheResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->priorResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public final body()Lcom/squareup/okhttp/ResponseBody;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->body:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method public final cacheControl()Lcom/squareup/okhttp/CacheControl;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->cacheControl:Lcom/squareup/okhttp/CacheControl;

    .line 206
    .local v0, "result":Lcom/squareup/okhttp/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/squareup/okhttp/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/squareup/okhttp/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    invoke-static {v1}, Lcom/squareup/okhttp/CacheControl;->parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/okhttp/CacheControl;
    iput-object v0, p0, Lcom/squareup/okhttp/Response;->cacheControl:Lcom/squareup/okhttp/CacheControl;

    goto :goto_0
.end method

.method public final cacheResponse()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->cacheResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public final challenges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget v1, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 191
    const-string/jumbo v0, "WWW-Authenticate"

    .line 197
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->parseChallenges(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "responseField":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 192
    :cond_0
    iget v1, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1

    .line 193
    const-string/jumbo v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public final code()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    return v0
.end method

.method public final handshake()Lcom/squareup/okhttp/Handshake;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public final headers()Lcom/squareup/okhttp/Headers;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isRedirect()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 146
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isSuccessful()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final networkResponse()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->networkResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public final newBuilder()Lcom/squareup/okhttp/Response$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Response$Builder;-><init>(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response$1;)V

    return-object v0
.end method

.method public final priorResponse()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->priorResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public final protocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public final request()Lcom/squareup/okhttp/Request;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    .line 217
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
