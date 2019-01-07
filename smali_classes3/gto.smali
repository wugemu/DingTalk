.class public final Lgto;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Lgti;)Lcom/laiwang/protocol/core/Request;
    .locals 6
    .param p0, "request"    # Lgti;

    .prologue
    .line 20
    new-instance v1, Lgtl;

    invoke-direct {v1}, Lgtl;-><init>()V

    .line 21
    .local v1, "model":Lgtl;
    invoke-virtual {p0}, Lgti;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgtl;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lgti;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgtl;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lgti;->c()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Lgtl;->c:Ljava/util/Map;

    .line 24
    invoke-virtual {p0}, Lgti;->d()[B

    move-result-object v3

    iput-object v3, v1, Lgtl;->d:[B

    .line 25
    invoke-virtual {p0}, Lgti;->e()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lgtl;->e:Ljava/lang/Boolean;

    .line 27
    const-string/jumbo v3, "p"

    invoke-static {v3}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v2

    .line 28
    .local v2, "pack":Ljac;
    const-string/jumbo v3, "/r/Adaptor/forward"

    invoke-static {v3}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 29
    .local v0, "lwpReq":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v3, "dt"

    const-string/jumbo v4, "h"

    invoke-virtual {v0, v3, v4}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 30
    invoke-virtual {p0}, Lgti;->f()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 32
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v1, v3}, Ljac;->a(Ljava/lang/Object;Z)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    :goto_0
    return-object v3

    .line 34
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/laiwang/protocol/core/Response;)Lgtj;
    .locals 11
    .param p0, "response"    # Lcom/laiwang/protocol/core/Response;

    .prologue
    .line 40
    const-string/jumbo v10, "p"

    invoke-static {v10}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v7

    .line 41
    .local v7, "pack":Ljac;
    invoke-virtual {p0}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v1

    .line 42
    .local v1, "bytes":[B
    const/4 v9, 0x0

    .line 44
    .local v9, "ret":Lgtm;
    :try_start_0
    const-class v10, Lgtm;

    invoke-interface {v7, v1, v10}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lgtm;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    if-eqz v9, :cond_2

    .line 49
    new-instance v8, Lgtj;

    invoke-direct {v8}, Lgtj;-><init>()V

    .line 50
    .local v8, "res":Lgtj;
    iget-object v10, v9, Lgtm;->a:Ljava/lang/Integer;

    .line 1068
    if-nez v10, :cond_1

    .line 1069
    const/4 v10, 0x0

    .line 50
    :goto_1
    invoke-virtual {v8, v10}, Lgtj;->a(I)V

    .line 51
    iget-object v10, v9, Lgtm;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lgtj;->a(Ljava/lang/String;)V

    .line 52
    iget-object v10, v9, Lgtm;->d:[B

    invoke-virtual {v8, v10}, Lgtj;->a([B)V

    .line 53
    iget-object v10, v9, Lgtm;->c:Ljava/util/Map;

    if-eqz v10, :cond_3

    .line 54
    iget-object v10, v9, Lgtm;->c:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgtk;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgtk;

    .line 57
    .local v4, "headerValue":Lgtk;
    if-eqz v4, :cond_0

    .line 59
    iget-object v10, v4, Lgtk;->a:Ljava/util/List;

    invoke-virtual {v8, v6, v10}, Lgtj;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 45
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgtk;>;"
    .end local v4    # "headerValue":Lgtk;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "res":Lgtj;
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1070
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "res":Lgtj;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    .line 64
    .end local v8    # "res":Lgtj;
    :cond_2
    const/4 v8, 0x0

    :cond_3
    return-object v8
.end method
