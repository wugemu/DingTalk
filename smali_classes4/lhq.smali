.class public final Llhq;
.super Ljava/lang/Object;
.source "OnSubscribeMap.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llhq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgs;Llhk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;",
            "Llhk",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Llhq;, "Llhq<TT;TR;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    .local p2, "transformer":Llhk;, "Llhk<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Llhq;->a:Llgs;

    .line 41
    iput-object p2, p0, Llhq;->b:Llhk;

    .line 42
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    .local p0, "this":Llhq;, "Llhq<TT;TR;>;"
    check-cast p1, Llgy;

    .line 1046
    new-instance v0, Llhq$a;

    iget-object v1, p0, Llhq;->b:Llhk;

    invoke-direct {v0, p1, v1}, Llhq$a;-><init>(Llgy;Llhk;)V

    .line 1047
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1048
    iget-object v1, p0, Llhq;->a:Llgs;

    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 33
    return-void
.end method
