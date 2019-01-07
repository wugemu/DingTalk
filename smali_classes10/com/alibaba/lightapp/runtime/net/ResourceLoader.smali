.class public abstract Lcom/alibaba/lightapp/runtime/net/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;,
        Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderIllegalStateException;,
        Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;
    }
.end annotation


# instance fields
.field public a:Lhph;

.field public b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lhpd;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lhpj;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method protected constructor <init>(Lhph;Ljava/lang/String;Ljava/util/Map;Lhpd;)V
    .locals 2
    .param p1, "loaderContext"    # Lhph;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "is"    # Lhpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhph;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->g:Z

    .line 29
    if-nez p4, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;

    const-string/jumbo v1, "ResourceLoader has to be initialized with non-null HydroInputStream"

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$ResourceLoaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 34
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    .line 36
    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->e:Lhpd;

    .line 37
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d:Ljava/util/Map;

    const-string/jumbo v1, "Referer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c:Ljava/lang/String;

    .line 40
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Lhpd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->e:Lhpd;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->f:Ljava/util/Queue;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 143
    .line 3055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a:Lhph;

    .line 143
    invoke-interface {v0, p0}, Lhph;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V

    .line 144
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->g:Z

    .line 131
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->e:Lhpd;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  loader real cancel   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->e:Lhpd;

    invoke-virtual {v0}, Lhpd;->a()V

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c()V

    .line 139
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  loader cancel bf exec  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2059
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V
.end method

.method public a(Lhpj;)V
    .locals 1
    .param p1, "netCallback"    # Lhpj;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->f:Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->f:Ljava/util/Queue;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->g:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->e:Lhpd;

    invoke-virtual {v0}, Lhpd;->a()V

    .line 125
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;-><init>(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;)V

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "another"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
