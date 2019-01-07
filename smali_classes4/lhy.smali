.class public final Llhy;
.super Ljava/lang/Object;
.source "SingleToObservable.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgw$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgw$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgw$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Llhy;, "Llhy<TT;>;"
    .local p1, "source":Llgw$a;, "Llgw$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Llhy;->a:Llgw$a;

    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Llhy;, "Llhy<TT;>;"
    check-cast p1, Llgy;

    .line 1037
    new-instance v0, Llhx$a;

    invoke-direct {v0, p1}, Llhx$a;-><init>(Llgy;)V

    .line 1038
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1039
    iget-object v1, p0, Llhy;->a:Llgw$a;

    invoke-interface {v1, v0}, Llgw$a;->call(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
