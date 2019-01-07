.class final Ldse$b;
.super Ljava/lang/Object;
.source "VideoCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ldse;

.field private b:Ljava/util/Map;
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

.field private c:J

.field private d:Lcom/alibaba/doraemon/cache/CacheEntity;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ldse;Lcom/alibaba/doraemon/cache/CacheEntity;)V
    .locals 4
    .param p1, "this$0"    # Ldse;
    .param p2, "cache"    # Lcom/alibaba/doraemon/cache/CacheEntity;

    .prologue
    .line 105
    iput-object p1, p0, Ldse$b;->a:Ldse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ldse$b;->c:J

    .line 106
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheDescription()[B

    move-result-object v1

    .line 107
    .local v1, "description":[B
    if-eqz v1, :cond_1

    .line 108
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ldse$b;->b:Ljava/util/Map;

    .line 112
    :goto_0
    iput-object p2, p0, Ldse$b;->d:Lcom/alibaba/doraemon/cache/CacheEntity;

    .line 113
    iget-object v2, p0, Ldse$b;->d:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-interface {v2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ldse$b;->e:Ljava/io/InputStream;

    .line 114
    iget-object v2, p0, Ldse$b;->b:Ljava/util/Map;

    const-string/jumbo v3, "content-length"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 116
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ldse$b;->c:J

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 110
    .end local v0    # "contentLength":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ldse$b;->b:Ljava/util/Map;

    goto :goto_0

    .line 118
    .restart local v0    # "contentLength":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->isIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {p2}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v2

    iput-wide v2, p0, Ldse$b;->c:J

    goto :goto_1
.end method


# virtual methods
.method public final clone()Lcom/alibaba/doraemon/request/Response;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    new-instance v0, Ldse$b;

    iget-object v1, p0, Ldse$b;->a:Ldse;

    iget-object v2, p0, Ldse$b;->d:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-direct {v0, v1, v2}, Ldse$b;-><init>(Ldse;Lcom/alibaba/doraemon/cache/CacheEntity;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ldse$b;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v0

    return-object v0
.end method

.method public final dataLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-wide v0, p0, Ldse$b;->c:J

    return-wide v0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    new-instance v0, Ldse$a;

    iget-object v1, p0, Ldse$b;->a:Ldse;

    iget-object v2, p0, Ldse$b;->e:Ljava/io/InputStream;

    iget-object v3, p0, Ldse$b;->d:Lcom/alibaba/doraemon/cache/CacheEntity;

    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->length()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Ldse$a;-><init>(Ldse;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public final getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Ldse$b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Ldse$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ldse$b;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0xc8

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method
