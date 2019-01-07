.class public abstract Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;
.super Ljava/lang/Object;
.source "AsyncResourceLoader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader$ResourceLoaderException;,
        Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader$ResourceLoaderIllegalStateException;
    }
.end annotation


# instance fields
.field protected a:Lhps;

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

.field public e:Lhpr;

.field private f:Z


# direct methods
.method protected constructor <init>(Lhps;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "loaderContext"    # Lhps;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhps;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->f:Z

    .line 25
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->a:Lhps;

    .line 26
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->d:Ljava/util/Map;

    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->d:Ljava/util/Map;

    const-string/jumbo v1, "Referer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->c:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Lhpr;)V
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "another"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
