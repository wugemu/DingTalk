.class public Lcom/ali/user/open/ut/UserTrackerImpl;
.super Ljava/lang/Object;
.source "UserTrackerImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/service/UserTrackerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 22
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v4

    const/4 v1, 0x1

    const-string/jumbo v3, "---->"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    if-nez p2, :cond_0

    const-string/jumbo v1, "nothing"

    :goto_0
    aput-object v1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "traceMsg":Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void

    .line 22
    .end local v0    # "traceMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
