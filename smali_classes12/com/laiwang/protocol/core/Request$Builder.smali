.class public final Lcom/laiwang/protocol/core/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/core/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cacheHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field request:Lcom/laiwang/protocol/core/Request;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    .line 101
    new-instance v0, Lcom/laiwang/protocol/core/Request;

    invoke-direct {v0, p1}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/laiwang/protocol/core/Request$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/laiwang/protocol/core/Request$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/core/Request$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final attr(Lcom/laiwang/protocol/attribute/AttributeKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "attribute":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public final build()Lcom/laiwang/protocol/core/Request;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    const-string/jumbo v1, "cache-header"

    iget-object v2, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/laiwang/protocol/util/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 106
    return-object p0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;Z)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "cacheHeader"    # Z

    .prologue
    .line 115
    if-eqz p2, :cond_0

    const-string/jumbo v0, "cache-header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object p0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 119
    if-eqz p3, :cond_0

    .line 120
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->cacheHeaders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 143
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/core/Request;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final payload([B)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 138
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 139
    return-object p0
.end method

.method public final resetUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/core/Request;->resetStartLine(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/core/Request;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 111
    return-object p0
.end method

.method public final timeout(J)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/core/Request;->setTimeout(J)V

    .line 134
    return-object p0
.end method

.method public final url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/laiwang/protocol/core/Request$Builder;->request:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
