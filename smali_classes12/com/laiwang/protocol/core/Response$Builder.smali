.class public final Lcom/laiwang/protocol/core/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/core/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final NO_REPLY:Ljava/lang/String; = "zip len via"


# instance fields
.field response:Lcom/laiwang/protocol/core/Response;


# direct methods
.method private constructor <init>(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)V
    .locals 6
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "status"    # Lcom/laiwang/protocol/core/Constants$Status;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v2, Lcom/laiwang/protocol/core/Response;

    iget v3, p2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/laiwang/protocol/core/Response$Builder;->response:Lcom/laiwang/protocol/core/Response;

    .line 37
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 38
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "x-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "zip len via"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/laiwang/protocol/core/Response$Builder;->response:Lcom/laiwang/protocol/core/Response;

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Lcom/laiwang/protocol/core/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "x1"    # Lcom/laiwang/protocol/core/Constants$Status;
    .param p3, "x2"    # Lcom/laiwang/protocol/core/Response$1;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/core/Response$Builder;-><init>(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/laiwang/protocol/core/Response;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/laiwang/protocol/core/Response$Builder;->response:Lcom/laiwang/protocol/core/Response;

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/laiwang/protocol/core/Response$Builder;->response:Lcom/laiwang/protocol/core/Response;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 48
    return-object p0
.end method

.method public final payload([B)Lcom/laiwang/protocol/core/Response$Builder;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 57
    iget-object v0, p0, Lcom/laiwang/protocol/core/Response$Builder;->response:Lcom/laiwang/protocol/core/Response;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/core/Response;->payload([B)V

    .line 58
    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/laiwang/protocol/core/Response$Builder;->response:Lcom/laiwang/protocol/core/Response;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/core/Response;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 53
    return-object p0
.end method
