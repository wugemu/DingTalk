.class public Ljh;
.super Lje;
.source "SSLDetectEventHandler.java"


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lje;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method protected final varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "param"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 17
    iget-object v2, p0, Ljh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 19
    iget-object v1, p0, Ljh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 21
    iget-object v2, p0, Ljh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v0, "https"

    goto :goto_0

    .line 26
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_2
    sget-object v0, Ljh;->a:Ljava/lang/Object;

    goto :goto_0
.end method
