.class Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;
.super Lanet/channel/strategy/ConnStrategyList;
.source "ConnStrategyList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/ConnStrategyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IDCStrategyList"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b128ae93f4cfca1L


# instance fields
.field public volatile transient cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation
.end field

.field public final ips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final strategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/RawConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lanet/channel/strategy/ConnStrategyList;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    .line 131
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;[Lanet/channel/strategy/RawConnStrategy;)V
    .locals 2
    .param p1, "ipArray"    # [Ljava/lang/String;
    .param p2, "raw"    # [Lanet/channel/strategy/RawConnStrategy;

    .prologue
    .line 140
    invoke-direct {p0}, Lanet/channel/strategy/ConnStrategyList;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 143
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-direct {p0}, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->resetCache()V

    .line 145
    return-void
.end method

.method private resetCache()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 202
    iget-object v4, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    if-nez v4, :cond_1

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    .line 207
    :goto_0
    iget-object v4, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "ip":Ljava/lang/String;
    iget-object v4, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/RawConnStrategy;

    .line 209
    .local v3, "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    iget-object v4, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    invoke-static {v2, v3}, Lanet/channel/strategy/IPConnStrategy$a;->a(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    :cond_1
    iget-object v4, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 212
    :cond_2
    return-void
.end method


# virtual methods
.method public getStrategyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    if-nez v0, :cond_1

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->resetCache()V

    .line 154
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->cache:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isUnavailable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 223
    iget-object v2, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/RawConnStrategy;

    .line 224
    .local v0, "connStrategy":Lanet/channel/strategy/RawConnStrategy;
    invoke-virtual {v0}, Lanet/channel/strategy/RawConnStrategy;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x0

    .line 228
    .end local v0    # "connStrategy":Lanet/channel/strategy/RawConnStrategy;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyConnEvent(Ljy;Lanet/channel/entity/EventType;Lip;)V
    .locals 4
    .param p1, "connStrategy"    # Ljy;
    .param p2, "eventType"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 234
    instance-of v3, p1, Lanet/channel/strategy/IPConnStrategy;

    if-nez v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v1, 0x0

    .line 239
    .local v1, "isFind":Z
    iget-object v3, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/RawConnStrategy;

    .local v2, "strategy":Lanet/channel/strategy/RawConnStrategy;
    move-object v3, p1

    .line 240
    check-cast v3, Lanet/channel/strategy/IPConnStrategy;

    iget-object v3, v3, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    if-ne v3, v2, :cond_2

    .line 241
    const/4 v1, 0x1

    .line 245
    .end local v2    # "strategy":Lanet/channel/strategy/RawConnStrategy;
    :cond_3
    if-eqz v1, :cond_0

    .line 246
    invoke-interface {p1, p2, p3}, Ljy;->notifyEvent(Lanet/channel/entity/EventType;Lip;)V

    .line 247
    iget-object v3, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public resetStatus()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 216
    iget-object v2, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/RawConnStrategy;

    .line 217
    .local v1, "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    invoke-virtual {v1}, Lanet/channel/strategy/RawConnStrategy;->resetConnStatus()V

    goto :goto_0

    .line 219
    .end local v1    # "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lke$b;)V
    .locals 11
    .param p1, "dnsInfo"    # Lke$b;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 160
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 161
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->ips:Ljava/util/List;

    iget-object v10, p1, Lke$b;->e:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lanet/channel/strategy/RawConnStrategy;

    .line 164
    .local v8, "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    const/4 v9, 0x1

    iput-boolean v9, v8, Lanet/channel/strategy/RawConnStrategy;->isToRemove:Z

    goto :goto_0

    .line 167
    .end local v8    # "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    :cond_0
    iget-object v9, p1, Lke$b;->f:[Lke$a;

    array-length v6, v9

    .line 168
    .local v6, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 169
    iget-object v9, p1, Lke$b;->f:[Lke$a;

    aget-object v0, v9, v3

    .line 170
    .local v0, "aisles":Lke$a;
    invoke-static {v0}, Lanet/channel/entity/ConnType;->valueOf(Lke$a;)Lanet/channel/entity/ConnType;

    move-result-object v2

    .line 171
    .local v2, "connType":Lanet/channel/entity/ConnType;
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    new-instance v10, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;

    invoke-direct {v10, p0, v0, v2}, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList$1;-><init>(Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;Lke$a;Lanet/channel/entity/ConnType;)V

    invoke-static {v9, v10}, Lanet/channel/strategy/ConnStrategyList;->access$000(Ljava/util/Collection;Lanet/channel/strategy/ConnStrategyList$a;)I

    move-result v7

    .line 178
    .local v7, "pos":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 179
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/RawConnStrategy;

    .line 180
    .local v1, "connStrategy":Lanet/channel/strategy/RawConnStrategy;
    const/4 v9, 0x0

    iput-boolean v9, v1, Lanet/channel/strategy/RawConnStrategy;->isToRemove:Z

    .line 181
    invoke-virtual {v1}, Lanet/channel/strategy/RawConnStrategy;->resetConnStatus()V

    .line 168
    .end local v1    # "connStrategy":Lanet/channel/strategy/RawConnStrategy;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    :cond_2
    invoke-static {v0}, Lanet/channel/strategy/RawConnStrategy$a;->a(Lke$a;)Lanet/channel/strategy/RawConnStrategy;

    move-result-object v8

    .line 184
    .restart local v8    # "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    if-eqz v8, :cond_1

    .line 185
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    .end local v0    # "aisles":Lke$a;
    .end local v2    # "connType":Lanet/channel/entity/ConnType;
    .end local v7    # "pos":I
    .end local v8    # "rawConnStrategy":Lanet/channel/strategy/RawConnStrategy;
    :cond_3
    iget-object v9, p0, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->strategies:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 192
    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/RawConnStrategy;>;"
    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 193
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lanet/channel/strategy/RawConnStrategy;

    iget-boolean v9, v9, Lanet/channel/strategy/RawConnStrategy;->isToRemove:Z

    if-eqz v9, :cond_4

    .line 194
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 198
    :cond_5
    invoke-direct {p0}, Lanet/channel/strategy/ConnStrategyList$IDCStrategyList;->resetCache()V

    .line 199
    return-void
.end method
