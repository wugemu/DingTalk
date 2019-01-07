.class public Lhtk;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhtk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lhtk$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhtk;-><init>(Z)V

    .line 32
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "isThreadSafe"    # Z

    .prologue
    .line 34
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhtk;->a:Ljava/util/Map;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhtk;->a:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lhtk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 91
    .end local p2    # "defaultVal":I
    :cond_0
    :goto_0
    return p2

    .line 86
    .restart local v0    # "val":Ljava/lang/Object;
    .restart local p2    # "defaultVal":I
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Ljava/lang/String;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    iget-object v1, p0, Lhtk;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtk$a;

    .line 62
    .local v0, "originalOption":Lhtk$a;, "TT;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lhtk$a;->b:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 72
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lhtk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "val":Ljava/lang/Object;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public final a(Lhtk$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    .local p1, "option":Lhtk$a;, "TT;"
    if-eqz p1, :cond_1

    iget-object v1, p1, Lhtk$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lhtk$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lhtk;->a:Ljava/util/Map;

    iget-object v2, p1, Lhtk$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtk$a;

    .line 46
    .local v0, "originalOption":Lhtk$a;, "TT;"
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lhtk$a;->c:Z

    if-nez v1, :cond_1

    .line 47
    :cond_0
    iget-object v1, p0, Lhtk;->a:Ljava/util/Map;

    iget-object v2, p1, Lhtk$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v0    # "originalOption":Lhtk$a;, "TT;"
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 96
    .local p0, "this":Lhtk;, "Lhtk<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lhtk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 102
    .end local p2    # "defaultVal":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultVal":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
