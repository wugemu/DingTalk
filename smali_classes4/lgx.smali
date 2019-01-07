.class public abstract Llgx;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgz;"
    }
.end annotation


# instance fields
.field private final a:Llio;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Llgx;, "Llgx<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Llio;

    invoke-direct {v0}, Llio;-><init>()V

    iput-object v0, p0, Llgx;->a:Llio;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public final a(Llgz;)V
    .locals 1
    .param p1, "s"    # Llgz;

    .prologue
    .line 70
    .local p0, "this":Llgx;, "Llgx<TT;>;"
    iget-object v0, p0, Llgx;->a:Llio;

    invoke-virtual {v0, p1}, Llio;->a(Llgz;)V

    .line 71
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Llgx;, "Llgx<TT;>;"
    iget-object v0, p0, Llgx;->a:Llio;

    invoke-virtual {v0}, Llio;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Llgx;, "Llgx<TT;>;"
    iget-object v0, p0, Llgx;->a:Llio;

    invoke-virtual {v0}, Llio;->unsubscribe()V

    .line 76
    return-void
.end method
