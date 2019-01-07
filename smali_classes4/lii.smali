.class public final Llii;
.super Ljava/lang/Object;
.source "ActionObserver.java"

# interfaces
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Llhf;


# direct methods
.method public constructor <init>(Llhg;Llhg;Llhf;)V
    .locals 0
    .param p3, "onCompleted"    # Llhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhg",
            "<-TT;>;",
            "Llhg",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Llhf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Llii;, "Llii<TT;>;"
    .local p1, "onNext":Llhg;, "Llhg<-TT;>;"
    .local p2, "onError":Llhg;, "Llhg<-Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Llii;->a:Llhg;

    .line 33
    iput-object p2, p0, Llii;->b:Llhg;

    .line 34
    iput-object p3, p0, Llii;->c:Llhf;

    .line 35
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Llii;, "Llii<TT;>;"
    iget-object v0, p0, Llii;->c:Llhf;

    invoke-interface {v0}, Llhf;->call()V

    .line 50
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    .local p0, "this":Llii;, "Llii<TT;>;"
    iget-object v0, p0, Llii;->b:Llhg;

    invoke-interface {v0, p1}, Llhg;->call(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Llii;, "Llii<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llii;->a:Llhg;

    invoke-interface {v0, p1}, Llhg;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
