.class final Lezl$1;
.super Ljava/lang/Object;
.source "AlphaDevicePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lezl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lfrr;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lezl;


# direct methods
.method constructor <init>(Lezl;)V
    .locals 0
    .param p1, "this$0"    # Lezl;

    .prologue
    .line 48
    iput-object p1, p0, Lezl$1;->a:Lezl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 48
    check-cast p1, Ljava/util/List;

    .line 2051
    iget-object v0, p0, Lezl$1;->a:Lezl;

    .line 3032
    iget-object v0, v0, Lezl;->a:Lezk$b;

    .line 2051
    invoke-interface {v0}, Lezk$b;->H_()V

    .line 2053
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2054
    :cond_0
    iget-object v0, p0, Lezl$1;->a:Lezl;

    .line 4032
    iget-object v0, v0, Lezl;->a:Lezk$b;

    .line 2054
    invoke-interface {v0}, Lezk$b;->a()V

    .line 2055
    :goto_0
    return-void

    .line 2058
    :cond_1
    iget-object v0, p0, Lezl$1;->a:Lezl;

    .line 5032
    iget-object v0, v0, Lezl;->a:Lezk$b;

    .line 2058
    invoke-interface {v0, p1}, Lezk$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lezl$1;->a:Lezl;

    .line 1032
    iget-object v0, v0, Lezl;->a:Lezk$b;

    .line 68
    invoke-interface {v0}, Lezk$b;->H_()V

    .line 69
    iget-object v0, p0, Lezl$1;->a:Lezl;

    .line 2032
    iget-object v0, v0, Lezl;->a:Lezk$b;

    .line 69
    invoke-interface {v0, p1, p2}, Lezk$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 64
    return-void
.end method
