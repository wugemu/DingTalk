.class public final Ljrw;
.super Ljava/lang/Object;
.source "WMLEventProxy.java"

# interfaces
.implements Ljrh$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mInstanceId"    # Ljava/lang/String;
    .param p2, "mClientId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ljrw;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Ljrw;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 23
    .local p2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Ljrw;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ljrw;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v3

    iget-object v4, p0, Ljrw;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljsb;->a(Ljava/lang/String;)Ljrz;

    move-result-object v1

    .line 25
    .local v1, "instance":Ljrz;
    if-eqz v1, :cond_1

    .line 1010
    new-instance v3, Ljrk;

    invoke-direct {v3}, Ljrk;-><init>()V

    .line 28
    invoke-virtual {v3, p1}, Ljrk;->a(Ljava/lang/String;)Ljrk;

    move-result-object v2

    .line 30
    .local v2, "object":Ljrk;
    if-eqz p2, :cond_0

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljrk;->a(Ljava/lang/String;Ljava/lang/Object;)Ljrk;

    goto :goto_0

    .line 36
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Ljrw;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljrz;->a(Ljava/lang/String;Ljrk;)V

    .line 39
    .end local v1    # "instance":Ljrz;
    .end local v2    # "object":Ljrk;
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 43
    .local p2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Ljrw;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v3

    iget-object v4, p0, Ljrw;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljsb;->a(Ljava/lang/String;)Ljrz;

    move-result-object v1

    .line 45
    .local v1, "instance":Ljrz;
    if-eqz v1, :cond_1

    .line 2010
    new-instance v3, Ljrk;

    invoke-direct {v3}, Ljrk;-><init>()V

    .line 48
    invoke-virtual {v3, p1}, Ljrk;->a(Ljava/lang/String;)Ljrk;

    move-result-object v2

    .line 50
    .local v2, "object":Ljrk;
    if-eqz p2, :cond_0

    .line 51
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljrk;->a(Ljava/lang/String;Ljava/lang/Object;)Ljrk;

    goto :goto_0

    .line 56
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v1, v2}, Ljrz;->a(Ljrk;)V

    .line 59
    .end local v1    # "instance":Ljrz;
    .end local v2    # "object":Ljrk;
    :cond_1
    return-void
.end method
