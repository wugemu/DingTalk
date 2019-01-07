.class public final Ljrk;
.super Ljava/lang/Object;
.source "WMLEventObject.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljrk;->a:Ljava/util/Map;

    .line 14
    iget-object v0, p0, Ljrk;->a:Ljava/util/Map;

    const-string/jumbo v1, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljrk;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 18
    iget-object v0, p0, Ljrk;->a:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljrk;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    iget-object v1, p0, Ljrk;->a:Ljava/util/Map;

    const-string/jumbo v2, "data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "data":Ljava/util/HashMap;
    iget-object v1, p0, Ljrk;->a:Ljava/util/Map;

    const-string/jumbo v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .end local v0    # "data":Ljava/util/HashMap;
    :cond_1
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 40
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2
    return-object p0
.end method
