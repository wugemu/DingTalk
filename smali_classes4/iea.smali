.class public final Liea;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x0

    .line 37
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "arrayMap":Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;, "Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p0

    .line 27
    .end local v0    # "arrayMap":Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;, "Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    instance-of v2, p0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    if-eqz v2, :cond_1

    .line 28
    check-cast p0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 32
    .restart local v0    # "arrayMap":Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;, "Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object p0, v0

    .line 37
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const-string/jumbo v2, "MapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "convert2ConcurrentHashMap error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "arrayMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    new-instance v1, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    goto :goto_0

    .line 54
    :cond_1
    instance-of v3, p0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_2

    move-object v0, p0

    .line 55
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .local v0, "arrayMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v1, v0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 58
    .end local v0    # "arrayMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v1, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 60
    .local v1, "arrayMapCopy":Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;, "Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const-string/jumbo v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "convertAndCopy error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2022
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method
