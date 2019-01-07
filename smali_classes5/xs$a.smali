.class final Lxs$a;
.super Ljava/lang/Object;
.source "InternalEventCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lxs;

.field private b:Lyc;


# direct methods
.method public constructor <init>(Lxs;Lyc;)V
    .locals 0
    .param p2, "eventMessage"    # Lyc;

    .prologue
    .line 113
    iput-object p1, p0, Lxs$a;->a:Lxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lxs$a;->b:Lyc;

    .line 115
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 119
    iget-object v4, p0, Lxs$a;->a:Lxs;

    invoke-static {v4}, Lxs;->a(Lxs;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lyb;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyb;

    .line 122
    .local v2, "l":Lyb;
    iget-object v4, p0, Lxs$a;->a:Lxs;

    invoke-static {v4}, Lxs;->a(Lxs;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxs$b;

    .line 125
    .local v0, "index":Lxs$b;
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, v0, Lxs$b;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lxs$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 126
    :cond_1
    iget-object v4, p0, Lxs$a;->b:Lyc;

    invoke-interface {v2, v4}, Lyb;->onEvent(Lyc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "post event message error--->"

    invoke-static {v4, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v4, v0, Lxs$b;->a:Ljava/util/List;

    iget-object v5, p0, Lxs$a;->b:Lyc;

    iget-object v5, v5, Lyc;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lxs$a;->b:Lyc;

    invoke-interface {v2, v4}, Lyb;->onEvent(Lyc;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    .end local v0    # "index":Lxs$b;
    .end local v2    # "l":Lyb;
    :cond_3
    return-void
.end method
