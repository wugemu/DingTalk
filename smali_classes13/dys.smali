.class public abstract Ldys;
.super Ljava/lang/Object;
.source "CustomCancelableCallback.java"

# interfaces
.implements Ldyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldyr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Ldys;, "Ldys<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Ldys;, "Ldys<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldys;->a:Z

    .line 16
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 32
    .line 2020
    .local p0, "this":Ldys;, "Ldys<TT;>;"
    iget-boolean v0, p0, Ldys;->a:Z

    .line 32
    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0, p1, p2}, Ldys;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Ldys;, "Ldys<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .line 1020
    .local p0, "this":Ldys;, "Ldys<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ldys;->a:Z

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Ldys;->a(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method
