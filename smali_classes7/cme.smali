.class public abstract Lcme;
.super Lcmi;
.source "RPCRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcmi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcme;, "Lcme<TT;>;"
    .local p1, "listener":Lcma;, "Lcma<TT;>;"
    invoke-direct {p0}, Lcmi;-><init>()V

    .line 14
    iput-object p1, p0, Lcme;->a:Lcma;

    .line 15
    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    .local p0, "this":Lcme;, "Lcme<TT;>;"
    iget-object v0, p0, Lcme;->a:Lcma;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcme;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcme;, "Lcme<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcme;->a:Lcma;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcme;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method
