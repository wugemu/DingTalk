.class public final Lknq;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkmn;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkmn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lkmn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lknq;->b:I

    .line 46
    iput-object p1, p0, Lknq;->a:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    iget v0, p0, Lknq;->b:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lknq;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lknq;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkmn;

    invoke-virtual {v1, p1}, Lkmn;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x1

    .line 140
    :goto_1
    return v1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
