.class public final Llhv;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llhv$a;
    }
.end annotation

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
.field final a:Llgv;

.field final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Llgs;Llgv;Z)V
    .locals 0
    .param p2, "scheduler"    # Llgv;
    .param p3, "requestOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;",
            "Llgv;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Llhv;, "Llhv<TT;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Llhv;->a:Llgv;

    .line 38
    iput-object p1, p0, Llhv;->b:Llgs;

    .line 39
    iput-boolean p3, p0, Llhv;->c:Z

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    .local p0, "this":Llhv;, "Llhv<TT;>;"
    check-cast p1, Llgy;

    .line 1044
    iget-object v0, p0, Llhv;->a:Llgv;

    invoke-virtual {v0}, Llgv;->a()Llgv$a;

    move-result-object v0

    .line 1046
    new-instance v1, Llhv$a;

    iget-boolean v2, p0, Llhv;->c:Z

    iget-object v3, p0, Llhv;->b:Llgs;

    invoke-direct {v1, p1, v2, v0, v3}, Llhv$a;-><init>(Llgy;ZLlgv$a;Llgs;)V

    .line 1047
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 1048
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 1050
    invoke-virtual {v0, v1}, Llgv$a;->a(Llhf;)Llgz;

    .line 30
    return-void
.end method
