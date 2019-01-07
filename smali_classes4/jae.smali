.class public final Ljae;
.super Ljava/lang/Object;
.source "JsonCast.java"

# interfaces
.implements Ljac;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, p2, v0}, Lgxk;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Z)[B
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "arrayMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-array v3, v3, [B

    .line 61
    :goto_0
    return-object v3

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 1018
    .local v0, "jsonWriter":Lgyy;
    :try_start_0
    new-instance v1, Lgyy;

    invoke-direct {v1}, Lgyy;-><init>()V

    .line 1019
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 1020
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 1021
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 1022
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 1023
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0    # "jsonWriter":Lgyy;
    .local v1, "jsonWriter":Lgyy;
    :try_start_1
    new-instance v2, Lgyq;

    invoke-direct {v2, v1}, Lgyq;-><init>(Lgyy;)V

    .line 54
    .local v2, "serializer":Lgyq;
    invoke-virtual {v2, p1}, Lgyq;->b(Ljava/lang/Object;)V

    .line 55
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Lgyy;->a(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 59
    :try_start_2
    invoke-virtual {v1}, Lgyy;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 57
    .end local v1    # "jsonWriter":Lgyy;
    .end local v2    # "serializer":Lgyq;
    .restart local v0    # "jsonWriter":Lgyy;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_1

    .line 59
    :try_start_3
    invoke-virtual {v0}, Lgyy;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 61
    :cond_1
    :goto_2
    throw v3

    :catch_1
    move-exception v4

    goto :goto_2

    .line 57
    .end local v0    # "jsonWriter":Lgyy;
    .restart local v1    # "jsonWriter":Lgyy;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "jsonWriter":Lgyy;
    .restart local v0    # "jsonWriter":Lgyy;
    goto :goto_1
.end method

.method public final a([B[Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "ts"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, p2}, Lgxk;->parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
