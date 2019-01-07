.class public final Lknt;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lknt$a;
    }
.end annotation


# instance fields
.field final a:Lkme;

.field final b:Lkns;

.field private final c:Lkmi;

.field private final d:Lkms;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkme;Lkns;Lkmi;Lkms;)V
    .locals 4
    .param p1, "address"    # Lkme;
    .param p2, "routeDatabase"    # Lkns;
    .param p3, "call"    # Lkmi;
    .param p4, "eventListener"    # Lkms;

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lknt;->e:Ljava/util/List;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lknt;->g:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lknt;->h:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lknt;->a:Lkme;

    .line 59
    iput-object p2, p0, Lknt;->b:Lkns;

    .line 60
    iput-object p3, p0, Lknt;->c:Lkmi;

    .line 61
    iput-object p4, p0, Lknt;->d:Lkms;

    .line 1093
    iget-object v1, p1, Lkme;->a:Lkmw;

    .line 1136
    iget-object v2, p1, Lkme;->h:Ljava/net/Proxy;

    .line 2124
    if-eqz v2, :cond_0

    .line 2126
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    .line 2132
    .end local p0    # "this":Lknt;
    .local v0, "this":Lknt;
    :goto_0
    iput-object v1, v0, Lknt;->e:Ljava/util/List;

    .line 2134
    iput v3, p0, Lknt;->f:I

    .line 64
    return-void

    .line 2129
    .end local v0    # "this":Lknt;
    .restart local p0    # "this":Lknt;
    :cond_0
    iget-object v2, p0, Lknt;->a:Lkme;

    .line 3128
    iget-object v2, v2, Lkme;->g:Ljava/net/ProxySelector;

    .line 2129
    invoke-virtual {v1}, Lkmw;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 2130
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2131
    invoke-static {v1}, Lknj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    .end local p0    # "this":Lknt;
    .restart local v0    # "this":Lknt;
    goto :goto_0

    .line 2132
    .end local v0    # "this":Lknt;
    .restart local p0    # "this":Lknt;
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v1, v3

    invoke-static {v1}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    .end local p0    # "this":Lknt;
    .restart local v0    # "this":Lknt;
    goto :goto_0
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 11
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lknt;->g:Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_2

    .line 161
    :cond_0
    iget-object v8, p0, Lknt;->a:Lkme;

    .line 5093
    iget-object v8, v8, Lkme;->a:Lkmw;

    .line 5486
    iget-object v6, v8, Lkmw;->b:Ljava/lang/String;

    .line 162
    .local v6, "socketHost":Ljava/lang/String;
    iget-object v8, p0, Lknt;->a:Lkme;

    .line 6093
    iget-object v8, v8, Lkme;->a:Lkmw;

    .line 6502
    iget v7, v8, Lkmw;->c:I

    .line 174
    .local v7, "socketPort":I
    :goto_0
    if-lez v7, :cond_1

    const v8, 0xffff

    if-le v7, v8, :cond_5

    .line 175
    :cond_1
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "No route to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; port is out of range"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 164
    .end local v6    # "socketHost":Ljava/lang/String;
    .end local v7    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 165
    .local v3, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v8, v3, Ljava/net/InetSocketAddress;

    if-nez v8, :cond_3

    .line 166
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object v4, v3

    .line 169
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 7205
    .local v4, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 7206
    if-nez v8, :cond_4

    .line 7210
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 171
    .restart local v6    # "socketHost":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .restart local v7    # "socketPort":I
    goto :goto_0

    .line 7214
    .end local v6    # "socketHost":Ljava/lang/String;
    .end local v7    # "socketPort":I
    :cond_4
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 179
    .end local v3    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v4    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    .restart local v6    # "socketHost":Ljava/lang/String;
    .restart local v7    # "socketPort":I
    :cond_5
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_7

    .line 180
    iget-object v8, p0, Lknt;->g:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_6
    return-void

    .line 182
    :cond_7
    iget-object v8, p0, Lknt;->d:Lkms;

    iget-object v9, p0, Lknt;->c:Lkmi;

    invoke-virtual {v8, v9, v6}, Lkms;->dnsStart(Lkmi;Ljava/lang/String;)V

    .line 185
    iget-object v8, p0, Lknt;->a:Lkme;

    .line 8098
    iget-object v8, v8, Lkme;->b:Lkmr;

    .line 185
    invoke-interface {v8, v6}, Lkmr;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 187
    new-instance v8, Ljava/net/UnknownHostException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lknt;->a:Lkme;

    .line 9098
    iget-object v10, v10, Lkme;->b:Lkmr;

    .line 187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " returned no addresses for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 190
    :cond_8
    iget-object v8, p0, Lknt;->d:Lkms;

    iget-object v9, p0, Lknt;->c:Lkmi;

    invoke-virtual {v8, v9, v6, v0}, Lkms;->dnsEnd(Lkmi;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_2
    if-ge v1, v5, :cond_6

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 194
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v8, p0, Lknt;->g:Ljava/util/List;

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    iget v0, p0, Lknt;->f:I

    iget-object v1, p0, Lknt;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lknt;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lknt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lknt$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    invoke-virtual {p0}, Lknt;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5

    .line 79
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "routes":Ljava/util/List;, "Ljava/util/List<Lkng;>;"
    :cond_1
    invoke-direct {p0}, Lknt;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3144
    invoke-direct {p0}, Lknt;->c()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3145
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "No route to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lknt;->a:Lkme;

    .line 4093
    iget-object v7, v7, Lkme;->a:Lkmw;

    .line 4486
    iget-object v7, v7, Lkmw;->b:Ljava/lang/String;

    .line 3145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; exhausted proxy configurations: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lknt;->e:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3148
    :cond_2
    iget-object v5, p0, Lknt;->e:Ljava/util/List;

    iget v6, p0, Lknt;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lknt;->f:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 3149
    invoke-direct {p0, v1}, Lknt;->a(Ljava/net/Proxy;)V

    .line 85
    .local v1, "proxy":Ljava/net/Proxy;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lknt;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 86
    new-instance v2, Lkng;

    iget-object v6, p0, Lknt;->a:Lkme;

    iget-object v5, p0, Lknt;->g:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v6, v1, v5}, Lkng;-><init>(Lkme;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 87
    .local v2, "route":Lkng;
    iget-object v5, p0, Lknt;->b:Lkns;

    invoke-virtual {v5, v2}, Lkns;->c(Lkng;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    iget-object v5, p0, Lknt;->h:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v2    # "route":Lkng;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    .end local v0    # "i":I
    .end local v1    # "proxy":Ljava/net/Proxy;
    .end local v4    # "size":I
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 101
    iget-object v5, p0, Lknt;->h:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v5, p0, Lknt;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 105
    :cond_6
    new-instance v5, Lknt$a;

    invoke-direct {v5, v3}, Lknt$a;-><init>(Ljava/util/List;)V

    return-object v5
.end method
