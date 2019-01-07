.class final Lanet/channel/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/entity/EventType;

.field final synthetic b:Lip;

.field final synthetic c:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lip;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iput-object p2, p0, Lanet/channel/Session$1;->a:Lanet/channel/entity/EventType;

    iput-object p3, p0, Lanet/channel/Session$1;->b:Lip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 253
    :try_start_0
    iget-object v4, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->b:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lanet/channel/Session$1;->a:Lanet/channel/entity/EventType;

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liq;

    .line 255
    .local v0, "callback":Liq;
    if-eqz v0, :cond_0

    .line 256
    iget-object v4, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 257
    .local v3, "value":I
    iget-object v4, p0, Lanet/channel/Session$1;->a:Lanet/channel/entity/EventType;

    invoke-virtual {v4}, Lanet/channel/entity/EventType;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 259
    :try_start_1
    iget-object v4, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iget-object v5, p0, Lanet/channel/Session$1;->a:Lanet/channel/entity/EventType;

    iget-object v6, p0, Lanet/channel/Session$1;->b:Lip;

    invoke-interface {v0, v4, v5, v6}, Liq;->a(Lanet/channel/Session;Lanet/channel/entity/EventType;Lip;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "awcn.Session"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iget-object v6, v6, Lanet/channel/Session;->o:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 268
    .end local v0    # "callback":Liq;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":I
    :catch_1
    move-exception v1

    .line 269
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "awcn.Session"

    const-string/jumbo v5, "handleCallbacks"

    iget-object v6, p0, Lanet/channel/Session$1;->c:Lanet/channel/Session;

    iget-object v6, v6, Lanet/channel/Session;->o:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
