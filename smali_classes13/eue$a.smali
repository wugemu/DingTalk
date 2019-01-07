.class final Leue$a;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Leuf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Leug;

.field final synthetic b:Leue;

.field private c:Z


# direct methods
.method public constructor <init>(Leue;Leug;)V
    .locals 1
    .param p2, "listener"    # Leug;

    .prologue
    .line 290
    iput-object p1, p0, Leue$a;->b:Leue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Leue$a;->c:Z

    .line 291
    iput-object p2, p0, Leue$a;->a:Leug;

    .line 292
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Leue$a;->a:Leug;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leue$a$1;

    invoke-direct {v1, p0, p1, p2}, Leue$a$1;-><init>(Leue$a;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 329
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    iget-object v0, p0, Leue$a;->a:Leug;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leue$a$2;

    invoke-direct {v1, p0, p1}, Leue$a$2;-><init>(Leue$a;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "canLoad"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Leue$a;->a:Leug;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Leue$a$3;

    invoke-direct {v1, p0, p1}, Leue$a$3;-><init>(Leue$a;Z)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method
