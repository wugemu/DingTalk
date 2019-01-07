.class final Libs$a;
.super Ljava/lang/Object;
.source "MessageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Libs$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Libs$a;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 1888
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Libs$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1885
    invoke-direct {p0}, Libs$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2080
    invoke-static {}, Libs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2081
    const/4 v0, 0x0

    .line 2083
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/message/MessageImpl;)I
    .locals 12
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 1924
    invoke-static {}, Libs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2938
    :goto_0
    return v0

    .line 1927
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 1928
    goto :goto_0

    .line 1929
    :cond_2
    iget-wide v6, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iget-wide v8, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 2933
    const/4 v2, 0x0

    .line 2934
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v2

    .line 2935
    :goto_1
    if-gt v4, v3, :cond_5

    .line 2936
    add-int v0, v4, v3

    div-int/lit8 v2, v0, 0x2

    .line 2937
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$b;

    iget-wide v10, v0, Libs$b;->a:J

    cmp-long v0, v6, v10

    if-nez v0, :cond_3

    move v0, v2

    .line 2938
    goto :goto_0

    .line 2939
    :cond_3
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$b;

    iget-wide v10, v0, Libs$b;->b:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    .line 2940
    add-int/lit8 v0, v2, 0x1

    move v4, v0

    goto :goto_1

    .line 2942
    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v3, v0

    .line 2944
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1929
    goto :goto_0
.end method

.method public final a(I)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1959
    invoke-static {}, Libs;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return-object v0

    .line 1962
    :cond_1
    if-ltz p1, :cond_0

    .line 1964
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$b;

    invoke-virtual {v0}, Libs$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    goto :goto_0
.end method

.method public final a(J)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 7
    .param p1, "mid"    # J

    .prologue
    const/4 v3, 0x0

    .line 1891
    invoke-static {}, Libs;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-object v3

    .line 1894
    :cond_1
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1895
    .local v2, "s":I
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 1896
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libs$b;

    .line 1897
    .local v1, "ref":Libs$b;
    iget-wide v4, v1, Libs$b;->a:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 1898
    invoke-virtual {v1}, Libs$b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    goto :goto_0

    .line 1895
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final a(ILcom/alibaba/wukong/im/message/MessageImpl;)Libs$b;
    .locals 2
    .param p1, "index"    # I
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1968
    invoke-static {}, Libs;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return-object v0

    .line 1971
    :cond_1
    if-ltz p1, :cond_0

    .line 1973
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    new-instance v1, Libs$b;

    invoke-direct {v1, p2}, Libs$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$b;

    goto :goto_0
.end method

.method public final a(ILjava/util/List;)V
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2067
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Libs;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2077
    :cond_0
    :goto_0
    return-void

    .line 2070
    :cond_1
    if-eqz p2, :cond_0

    .line 2072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .local v1, "wrapList":Ljava/util/List;, "Ljava/util/List<Libs$b;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2074
    .local v0, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    new-instance v3, Libs$b;

    invoke-direct {v3, v0}, Libs$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2076
    .end local v0    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    iget-object v2, p0, Libs$a;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method public final b(J)I
    .locals 7
    .param p1, "mid"    # J

    .prologue
    const/4 v3, -0x1

    .line 1905
    invoke-static {}, Libs;->b()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 1915
    :cond_0
    :goto_0
    return v0

    .line 1908
    :cond_1
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1909
    .local v2, "s":I
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1910
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libs$b;

    .line 1911
    .local v1, "ref":Libs$b;
    iget-wide v4, v1, Libs$b;->a:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    .line 1909
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "ref":Libs$b;
    :cond_2
    move v0, v3

    .line 1915
    goto :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1949
    invoke-static {}, Libs;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1955
    :cond_0
    :goto_0
    return-object v1

    .line 1952
    :cond_1
    invoke-virtual {p0, p1}, Libs$a;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)I

    move-result v0

    .line 1953
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1955
    iget-object v1, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libs$b;

    invoke-virtual {v1}, Libs$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    goto :goto_0
.end method

.method public final b(I)Libs$b;
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1977
    invoke-static {}, Libs;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return-object v0

    .line 1980
    :cond_1
    if-ltz p1, :cond_0

    .line 1982
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$b;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 2087
    invoke-static {}, Libs;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 3
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1996
    invoke-static {}, Libs;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return-object v1

    .line 1999
    :cond_1
    if-ltz p1, :cond_0

    .line 2001
    iget-object v2, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libs$b;

    .line 2002
    .local v0, "ref":Libs$b;
    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {v0}, Libs$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2091
    invoke-static {}, Libs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2095
    :goto_0
    return-void

    .line 2094
    :cond_0
    iget-object v0, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1986
    invoke-static {}, Libs;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    invoke-virtual {p0, p1}, Libs$a;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)I

    move-result v0

    .line 1990
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1992
    iget-object v1, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final d(Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 10
    .param p1, "object"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2014
    invoke-static {}, Libs;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return v4

    .line 2017
    :cond_1
    if-eqz p1, :cond_0

    .line 2018
    iget-object v6, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2019
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    new-instance v6, Libs$b;

    invoke-direct {v6, p1}, Libs$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 2020
    goto :goto_0

    .line 2022
    :cond_2
    iget-object v6, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 2023
    .local v1, "maxIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_4

    .line 2024
    iget-object v6, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Libs$b;

    .line 2025
    .local v2, "ref":Libs$b;
    iget-wide v6, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iget-wide v8, v2, Libs$b;->b:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 2026
    iget-wide v6, v2, Libs$b;->a:J

    iget-wide v8, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 2027
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    new-instance v7, Libs$b;

    invoke-direct {v7, p1}, Libs$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    invoke-interface {v4, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v4, v5

    .line 2028
    goto :goto_0

    .line 2023
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2033
    .end local v2    # "ref":Libs$b;
    :cond_4
    iget-object v6, p0, Libs$a;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Libs$b;

    .line 2044
    .local v3, "ref0":Libs$b;
    iget-wide v6, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iget-wide v8, v3, Libs$b;->b:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 2045
    iget-wide v6, v3, Libs$b;->a:J

    iget-wide v8, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 2046
    iget-object v4, p0, Libs$a;->b:Ljava/util/List;

    new-instance v6, Libs$b;

    invoke-direct {v6, p1}, Libs$b;-><init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v4, v5

    .line 2047
    goto :goto_0
.end method
