.class public final Lhgg$b;
.super Ljava/lang/Object;
.source "KaoQinManager.java"

# interfaces
.implements Lhgf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lhgg;


# direct methods
.method private constructor <init>(Lhgg;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lhgg$b;->a:Lhgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhgg;B)V
    .locals 0
    .param p1, "x0"    # Lhgg;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lhgg$b;-><init>(Lhgg;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhiu;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 133
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lhiu;>;"
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 1040
    iget-object v2, v2, Lhgg;->b:Ljava/util/List;

    .line 133
    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2040
    iput-object v3, v2, Lhgg;->b:Ljava/util/List;

    .line 143
    :goto_0
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 7040
    iget-object v2, v2, Lhgg;->c:Lbtn;

    .line 143
    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    new-instance v3, Lhgg$a;

    iget-object v4, p0, Lhgg$b;->a:Lhgg;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lhgg$a;-><init>(Lhgg;B)V

    .line 8040
    iput-object v3, v2, Lhgg;->c:Lbtn;

    .line 147
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v7, "receivers":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiu;

    .line 151
    .local v0, "model":Lhiu;
    new-instance v6, Lbto$a;

    invoke-direct {v6}, Lbto$a;-><init>()V

    iget-wide v2, v0, Lhiu;->c:J

    .line 8067
    iput-wide v2, v6, Lbto$a;->a:J

    .line 152
    iget-wide v2, v0, Lhiu;->d:J

    .line 8072
    iput-wide v2, v6, Lbto$a;->b:J

    .line 153
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 9040
    iget-object v2, v2, Lhgg;->c:Lbtn;

    .line 9077
    iput-object v2, v6, Lbto$a;->c:Lbtn;

    .line 9082
    new-instance v1, Lbto;

    iget-wide v2, v6, Lbto$a;->b:J

    iget-wide v4, v6, Lbto$a;->a:J

    iget-object v6, v6, Lbto$a;->c:Lbtn;

    invoke-direct/range {v1 .. v6}, Lbto;-><init>(JJLbtn;)V

    .line 156
    .local v1, "receiver":Lbto;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v0    # "model":Lhiu;
    .end local v1    # "receiver":Lbto;
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    :cond_1
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 3040
    iget-object v2, v2, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    .line 136
    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 4040
    iget-object v2, v2, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lhgg$b;->a:Lhgg;

    .line 5040
    iget-object v4, v4, Lhgg;->b:Ljava/util/List;

    .line 138
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->unregisterDeviceBeaconReceiver(Ljava/util/List;)V

    .line 140
    :cond_2
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 6040
    iget-object v2, v2, Lhgg;->b:Ljava/util/List;

    .line 140
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 158
    .restart local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    :cond_3
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 10040
    iget-object v2, v2, Lhgg;->b:Ljava/util/List;

    .line 158
    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 11040
    iget-object v2, v2, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    .line 159
    if-eqz v2, :cond_4

    .line 160
    iget-object v2, p0, Lhgg$b;->a:Lhgg;

    .line 12040
    iget-object v2, v2, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    .line 160
    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->registerDeviceBeaconReceiver(Ljava/util/List;)V

    .line 163
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    :cond_4
    return-void
.end method
