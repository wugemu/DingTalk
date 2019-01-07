.class public Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;
.super Ljava/lang/Object;
.source "JsapiLwpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;,
        Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;
    }
.end annotation


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHandler:Liyv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRpcKeyCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Liyv;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "callback":Liyv;, "Liyv<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mRpcKeyCache:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mUri:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mBody:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHeaders:Ljava/util/Map;

    .line 32
    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mRpcKeyCache:Ljava/util/List;

    return-object v0
.end method

.method private call(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;Z)V
    .locals 0
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p3, "retry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    if-nez p3, :cond_0

    .line 65
    invoke-static {p1, p2}, Lcom/laiwang/protocol/android/LWP;->askOnce(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p1, p2}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mUri:Ljava/lang/String;

    invoke-static {v5}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 40
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v5, "dt"

    const-string/jumbo v6, "j"

    invoke-virtual {v0, v5, v6}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 41
    const-string/jumbo v5, "f"

    const-string/jumbo v6, "h5"

    invoke-virtual {v0, v5, v6}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 43
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHeaders:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 44
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHeaders:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 49
    .restart local v0    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-interface {v5, v0}, Liyv;->setRequestBuilder(Lcom/laiwang/protocol/core/Request$Builder;)V

    .line 50
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-interface {v5}, Liyv;->getRequestFilterChain()Liyu;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-virtual {v5, v6}, Liyu;->a(Liys;)V

    .line 51
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-interface {v6}, Liyv;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mBody:Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v6

    invoke-interface {v5, v6}, Liyv;->setRequestBuilder(Lcom/laiwang/protocol/core/Request$Builder;)V

    .line 52
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-interface {v5}, Liyv;->getRequestFilterChain()Liyu;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-virtual {v5, v6}, Liyu;->b(Liys;)V

    .line 53
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-interface {v5}, Liyv;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    .line 55
    .local v3, "request":Lcom/laiwang/protocol/core/Request;
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->mHandler:Liyv;

    invoke-direct {v4, p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;Liyv;)V

    .line 56
    .local v4, "responseReply":Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->call(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
