.class final Lrx/internal/util/InternalObservableUtils$p;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llhk",
        "<",
        "Llgs",
        "<TT;>;",
        "Llgs",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final a:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-",
            "Llgs",
            "<TT;>;+",
            "Llgs",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field final b:Llgv;


# direct methods
.method public constructor <init>(Llhk;Llgv;)V
    .locals 0
    .param p2, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhk",
            "<-",
            "Llgs",
            "<TT;>;+",
            "Llgs",
            "<TR;>;>;",
            "Llgv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$p;, "Lrx/internal/util/InternalObservableUtils$p<TT;TR;>;"
    .local p1, "selector":Llhk;, "Llhk<-Llgs<TT;>;+Llgs<TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$p;->a:Llhk;

    .line 193
    iput-object p2, p0, Lrx/internal/util/InternalObservableUtils$p;->b:Llgv;

    .line 194
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$p;, "Lrx/internal/util/InternalObservableUtils$p<TT;TR;>;"
    check-cast p1, Llgs;

    .line 1200
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$p;->a:Llhk;

    invoke-interface {v0, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgs;

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$p;->b:Llgv;

    invoke-virtual {v0, v1}, Llgs;->a(Llgv;)Llgs;

    move-result-object v0

    .line 185
    return-object v0
.end method
