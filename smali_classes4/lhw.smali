.class public final Llhw;
.super Ljava/lang/Object;
.source "SingleFromObservable.java"

# interfaces
.implements Llgw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llhw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgw$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgs$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Llhw;, "Llhw<TT;>;"
    .local p1, "source":Llgs$a;, "Llgs$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Llhw;->a:Llgs$a;

    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    .local p0, "this":Llhw;, "Llhw<TT;>;"
    check-cast p1, Llgx;

    .line 1039
    new-instance v0, Llhw$a;

    invoke-direct {v0, p1}, Llhw$a;-><init>(Llgx;)V

    .line 1040
    invoke-virtual {p1, v0}, Llgx;->a(Llgz;)V

    .line 1041
    iget-object v1, p0, Llhw;->a:Llgs$a;

    invoke-interface {v1, v0}, Llgs$a;->call(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
