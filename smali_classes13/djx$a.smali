.class final Ldjx$a;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

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
    .line 586
    .local p0, "this":Ldjx$a;, "Ldjx$a<TT;>;"
    .local p1, "inner":Lcma;, "Lcma<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Ldjx$a;->a:Lcma;

    .line 588
    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Ldjx$a;, "Ldjx$a<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ldjx$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Ldjx$a;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 599
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 610
    .local p0, "this":Ldjx$a;, "Ldjx$a<TT;>;"
    iget-object v0, p0, Ldjx$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Ldjx$a;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 603
    .local p0, "this":Ldjx$a;, "Ldjx$a<TT;>;"
    iget-object v0, p0, Ldjx$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Ldjx$a;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 606
    :cond_0
    return-void
.end method
