.class public Lfae;
.super Ljava/lang/Object;
.source "ApiEventListenerWrapper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcma",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcma;
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
    .local p0, "this":Lfae;, "Lfae<TT;>;"
    .local p1, "apiEventListener":Lcma;, "Lcma<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lfae;->a:Lcma;

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lfae;, "Lfae<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lfae;, "Lfae<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lfae;->a(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lfae;->a:Lcma;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lfae;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 36
    .local p0, "this":Lfae;, "Lfae<TT;>;"
    iget-object v0, p0, Lfae;->a:Lcma;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lfae;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 28
    .local p0, "this":Lfae;, "Lfae<TT;>;"
    iget-object v0, p0, Lfae;->a:Lcma;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lfae;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 31
    :cond_0
    return-void
.end method
