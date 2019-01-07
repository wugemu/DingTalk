.class public final Llkj$1;
.super Llgy;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgt;


# direct methods
.method public constructor <init>(Llgt;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Llkj$1;->a:Llgt;

    invoke-direct {p0}, Llgy;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Llkj$1;->a:Llgt;

    invoke-interface {v0}, Llgt;->onCompleted()V

    .line 56
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Llkj$1;->a:Llgt;

    invoke-interface {v0, p1}, Llgt;->onError(Ljava/lang/Throwable;)V

    .line 61
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
    .line 65
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llkj$1;->a:Llgt;

    invoke-interface {v0, p1}, Llgt;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
