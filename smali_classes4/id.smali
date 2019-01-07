.class public final Lid;
.super Ljava/lang/Object;
.source "HorseRide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid$2;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {v0}, Lanet/channel/entity/EventType;->getType()I

    move-result v0

    sget-object v1, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v1}, Lanet/channel/entity/EventType;->getType()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v1}, Lanet/channel/entity/EventType;->getType()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lid;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method public static a()V
    .locals 16

    .prologue
    .line 60
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v7

    invoke-interface {v7}, Lka;->d()Ljava/util/Map;

    move-result-object v1

    .line 61
    .local v1, "hr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljz;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljz;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljz;

    .line 68
    .local v6, "value":Ljz;
    invoke-interface {v6}, Ljz;->getHRStrategy()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "hrStrategy":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 72
    .local v4, "now":J
    const-string/jumbo v7, "serial"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "serialOnly"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    invoke-interface {v6}, Ljz;->getLastHRTime()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-interface {v6}, Ljz;->getHRInterval()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    invoke-interface {v6}, Ljz;->getHrNum()I

    move-result v7

    if-lez v7, :cond_2

    .line 74
    const/4 v7, 0x1

    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 75
    const-string/jumbo v7, "awcn.HorseRide"

    const-string/jumbo v8, "horse ride for this host"

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "host"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljz;->getHrNum()I

    move-result v11

    .line 1089
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v8

    invoke-interface {v8, v7}, Lka;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1091
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1095
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_5

    .line 1096
    invoke-static {v9}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1098
    :cond_5
    const/4 v8, 0x0

    .line 1100
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v9, v8

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljy;

    .line 1193
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v13

    .line 1195
    new-instance v14, Lim;

    invoke-interface {v8}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v10

    invoke-virtual {v10}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "https"

    :goto_1
    invoke-static {v10, v7}, Lkg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lkz;->a()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v10, v15, v8}, Lim;-><init>(Ljava/lang/String;Ljava/lang/String;Ljy;)V

    .line 1199
    invoke-interface {v8}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v8

    .line 1200
    sget-object v10, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {v8, v10}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {v8, v10}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1201
    :cond_6
    new-instance v8, Ljr;

    invoke-direct {v8, v13, v14}, Ljr;-><init>(Landroid/content/Context;Lim;)V

    .line 1208
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lanet/channel/Session;->a(Z)V

    .line 2125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2128
    sget v10, Lid;->a:I

    new-instance v13, Lid$1;

    invoke-direct {v13, v14, v15}, Lid$1;-><init>(J)V

    invoke-virtual {v8, v10, v13}, Lanet/channel/Session;->a(ILiq;)V

    .line 1105
    invoke-virtual {v8}, Lanet/channel/Session;->a()V

    .line 1107
    add-int/lit8 v8, v9, 0x1

    .line 1110
    if-ge v8, v11, :cond_2

    move v9, v8

    .line 1113
    goto :goto_0

    .line 1195
    :cond_7
    const-string/jumbo v10, "http"

    goto :goto_1

    .line 1202
    :cond_8
    invoke-virtual {v14}, Lim;->d()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1203
    new-instance v8, Ljo;

    invoke-direct {v8, v13, v14}, Ljo;-><init>(Landroid/content/Context;Lim;)V

    goto :goto_2

    .line 1205
    :cond_9
    new-instance v8, Ljs;

    invoke-direct {v8, v13, v14}, Ljs;-><init>(Landroid/content/Context;Lim;)V

    goto :goto_2
.end method

.method static synthetic a(Lanet/channel/Session;)V
    .locals 2
    .param p0, "x0"    # Lanet/channel/Session;

    .prologue
    .line 20
    .line 3038
    sget-object v0, Lif$a;->a:Lif;

    .line 2220
    invoke-virtual {p0}, Lanet/channel/Session;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lif;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2221
    if-eqz v0, :cond_1

    .line 2222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/Session;

    .line 2223
    invoke-virtual {v0, p0}, Lanet/channel/Session;->a(Lanet/channel/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    return-void

    .line 2227
    :cond_1
    invoke-virtual {p0}, Lanet/channel/Session;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lir;Lip;)V
    .locals 1
    .param p0, "x0"    # Lir;
    .param p1, "x1"    # Lip;

    .prologue
    .line 20
    .line 3176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lir;->a:Z

    .line 3177
    if-eqz p1, :cond_0

    .line 3178
    iget v0, p1, Lip;->d:I

    iput v0, p0, Lir;->d:I

    .line 3179
    iget-object v0, p1, Lip;->e:Ljava/lang/String;

    iput-object v0, p0, Lir;->e:Ljava/lang/String;

    .line 20
    :cond_0
    return-void
.end method
