.class Lcom/laiwang/protocol/android/n$a;
.super Ljava/lang/Object;
.source "LwpRequestConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/laiwang/protocol/android/Extension;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/Extension;)V
    .locals 0
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/laiwang/protocol/android/n$a;->a:Lcom/laiwang/protocol/android/Extension;

    .line 562
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 13
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v0, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/laiwang/protocol/android/n$a;->a:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/Extension;->cacheHeaders()Ljava/util/Map;

    move-result-object v3

    .line 568
    .local v3, "extensionCacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 569
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 570
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 571
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 572
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 573
    .local v6, "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/laiwang/protocol/util/StringUtils;->isNullEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Lcom/laiwang/protocol/util/StringUtils;->isNullEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 574
    :cond_0
    const-string/jumbo v8, "[cacheHeaders] kv pair empty %s %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v10

    aput-object v6, v9, v11

    invoke-static {v8, v9}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 577
    :cond_1
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 580
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/laiwang/protocol/android/LWP;->stickyCacheHeaders:Ljava/util/Map;

    if-eqz v7, :cond_6

    .line 581
    sget-object v7, Lcom/laiwang/protocol/android/LWP;->stickyCacheHeaders:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 582
    .restart local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 584
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 585
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/laiwang/protocol/util/StringUtils;->isNullEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Lcom/laiwang/protocol/util/StringUtils;->isNullEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 586
    :cond_4
    const-string/jumbo v8, "[cacheHeaders] sticky kv pair empty %s %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v10

    aput-object v6, v9, v11

    invoke-static {v8, v9}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 589
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 590
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 594
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "ua"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 595
    const-string/jumbo v7, "ua"

    invoke-static {}, Lcom/laiwang/protocol/android/cg;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_7
    const-string/jumbo v7, "ua"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 598
    .local v5, "ua":Ljava/lang/String;
    invoke-static {v5}, Lcom/laiwang/protocol/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 599
    sput-object v5, Lcom/laiwang/protocol/Config;->h:Ljava/lang/String;

    .line 601
    :cond_8
    const-string/jumbo v7, "did"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 602
    if-eqz v3, :cond_9

    const-string/jumbo v7, "did"

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 603
    :cond_9
    const-string/jumbo v7, "did"

    invoke-static {}, Lcom/laiwang/protocol/android/cg;->h()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_a
    iget-object v7, p0, Lcom/laiwang/protocol/android/n$a;->a:Lcom/laiwang/protocol/android/Extension;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/laiwang/protocol/android/n$a;->a:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 607
    const-string/jumbo v7, "vhost"

    iget-object v8, p0, Lcom/laiwang/protocol/android/n$a;->a:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v8}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_b
    const-string/jumbo v7, "net-type"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 610
    const-string/jumbo v7, "net-type"

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v8

    iget-object v8, v8, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v8, v8, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_c
    return-object v0
.end method

.method public b()Ljava/util/Map;
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
    .line 617
    iget-object v0, p0, Lcom/laiwang/protocol/android/n$a;->a:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->authHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
