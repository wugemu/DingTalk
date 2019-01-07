.class Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;
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
    name = "CDNStrategyList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4105b089776e61fbL


# instance fields
.field private strategyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lanet/channel/strategy/ConnStrategyList;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    .line 44
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
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isUnavailable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    iget-object v2, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 108
    .local v0, "connStrategy":Lanet/channel/strategy/IPConnStrategy;
    invoke-virtual {v0}, Lanet/channel/strategy/IPConnStrategy;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v2, 0x0

    .line 112
    .end local v0    # "connStrategy":Lanet/channel/strategy/IPConnStrategy;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyConnEvent(Ljy;Lanet/channel/entity/EventType;Lip;)V
    .locals 2
    .param p1, "connStrategy"    # Ljy;
    .param p2, "eventType"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 118
    invoke-interface {p1, p2, p3}, Ljy;->notifyEvent(Lanet/channel/entity/EventType;Lip;)V

    .line 119
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 121
    :cond_0
    return-void
.end method

.method public resetStatus()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 100
    iget-object v2, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 101
    .local v1, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->resetConnStatus()V

    goto :goto_0

    .line 103
    .end local v1    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lke$b;)V
    .locals 12
    .param p1, "dnsInfo"    # Lke$b;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 58
    iget-object v10, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/strategy/IPConnStrategy;

    .line 59
    .local v6, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    const/4 v10, 0x1

    iput-boolean v10, v6, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    goto :goto_0

    .line 62
    .end local v6    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p1, Lke$b;->e:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_4

    .line 63
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget-object v10, p1, Lke$b;->f:[Lke$a;

    array-length v10, v10

    if-ge v8, v10, :cond_3

    .line 64
    iget-object v10, p1, Lke$b;->e:[Ljava/lang/String;

    aget-object v5, v10, v3

    .line 65
    .local v5, "ip":Ljava/lang/String;
    iget-object v10, p1, Lke$b;->f:[Lke$a;

    aget-object v0, v10, v8

    .line 66
    .local v0, "aisles":Lke$a;
    invoke-static {v0}, Lanet/channel/entity/ConnType;->valueOf(Lke$a;)Lanet/channel/entity/ConnType;

    move-result-object v2

    .line 67
    .local v2, "connType":Lanet/channel/entity/ConnType;
    iget-object v10, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    new-instance v11, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList$1;

    invoke-direct {v11, p0, v0, v2, v5}, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList$1;-><init>(Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;Lke$a;Lanet/channel/entity/ConnType;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lanet/channel/strategy/ConnStrategyList;->access$000(Ljava/util/Collection;Lanet/channel/strategy/ConnStrategyList$a;)I

    move-result v9

    .line 76
    .local v9, "pos":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 77
    iget-object v10, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 78
    .local v1, "connStrategy":Lanet/channel/strategy/IPConnStrategy;
    const/4 v10, 0x0

    iput-boolean v10, v1, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    .line 79
    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->resetConnStatus()V

    .line 63
    .end local v1    # "connStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1090
    :cond_2
    invoke-static {v0}, Lanet/channel/strategy/RawConnStrategy$a;->a(Lke$a;)Lanet/channel/strategy/RawConnStrategy;

    move-result-object v10

    invoke-static {v5, v10}, Lanet/channel/strategy/IPConnStrategy$a;->a(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v6

    .line 82
    .restart local v6    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    if-eqz v6, :cond_1

    .line 83
    iget-object v10, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    .end local v0    # "aisles":Lke$a;
    .end local v2    # "connType":Lanet/channel/entity/ConnType;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    .end local v9    # "pos":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v8    # "j":I
    :cond_4
    iget-object v10, p0, Lanet/channel/strategy/ConnStrategyList$CDNStrategyList;->strategyList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 91
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/IPConnStrategy;>;"
    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 92
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lanet/channel/strategy/IPConnStrategy;

    iget-boolean v10, v10, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    if-eqz v10, :cond_5

    .line 93
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 96
    :cond_6
    return-void
.end method
