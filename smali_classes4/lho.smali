.class public final Llho;
.super Ljava/lang/Object;
.source "OnSubscribeDoOnEach.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llho$a;
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
.field private final a:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgs;Llgt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;",
            "Llgt",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Llho;, "Llho<TT;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    .local p2, "doOnEachObserver":Llgt;, "Llgt<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Llho;->b:Llgs;

    .line 36
    iput-object p2, p0, Llho;->a:Llgt;

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    .local p0, "this":Llho;, "Llho<TT;>;"
    check-cast p1, Llgy;

    .line 1041
    iget-object v0, p0, Llho;->b:Llgs;

    new-instance v1, Llho$a;

    iget-object v2, p0, Llho;->a:Llgt;

    invoke-direct {v1, p1, v2}, Llho$a;-><init>(Llgy;Llgt;)V

    invoke-virtual {v0, v1}, Llgs;->a(Llgy;)Llgz;

    .line 30
    return-void
.end method
