.class public final Llhr;
.super Ljava/lang/Object;
.source "OperatorAny.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method public constructor <init>(Llhk;Z)V
    .locals 1
    .param p2, "returnOnEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhk",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Llhr;, "Llhr<TT;>;"
    .local p1, "predicate":Llhk;, "Llhk<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Llhr;->a:Llhk;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Llhr;->b:Z

    .line 38
    return-void
.end method

.method private a(Llgy;)Llgy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Llgy",
            "<-TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    .local p0, "this":Llhr;, "Llhr<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Llgy;)V

    .line 43
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/lang/Boolean;>;"
    new-instance v1, Llhr$1;

    invoke-direct {v1, p0, v0, p1}, Llhr$1;-><init>(Llhr;Lrx/internal/producers/SingleDelayedProducer;Llgy;)V

    .line 92
    .local v1, "s":Llgy;, "Llgy<TT;>;"
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 93
    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 94
    return-object v1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Llhr;, "Llhr<TT;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Llhr;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
