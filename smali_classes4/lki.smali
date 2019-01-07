.class public final Llki;
.super Llgy;
.source "SerializedSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Llki;, "Llki<TT;>;"
    .local p1, "s":Llgy;, "Llgy<-TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llki;-><init>(Llgy;Z)V

    .line 40
    return-void
.end method

.method private constructor <init>(Llgy;Z)V
    .locals 1
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Llki;, "Llki<TT;>;"
    .local p1, "s":Llgy;, "Llgy<-TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llgy;-><init>(Llgy;Z)V

    .line 54
    new-instance v0, Llkh;

    invoke-direct {v0, p1}, Llkh;-><init>(Llgt;)V

    iput-object v0, p0, Llki;->a:Llgt;

    .line 55
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Llki;, "Llki<TT;>;"
    iget-object v0, p0, Llki;->a:Llgt;

    invoke-interface {v0}, Llgt;->onCompleted()V

    .line 65
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Llki;, "Llki<TT;>;"
    iget-object v0, p0, Llki;->a:Llgt;

    invoke-interface {v0, p1}, Llgt;->onError(Ljava/lang/Throwable;)V

    .line 79
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
    .line 94
    .local p0, "this":Llki;, "Llki<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llki;->a:Llgt;

    invoke-interface {v0, p1}, Llgt;->onNext(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
