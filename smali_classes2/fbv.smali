.class public final Lfbv;
.super Ljava/lang/Object;
.source "ImageDisplayPresenter.java"


# instance fields
.field final a:Lfbu;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lfbt;

    invoke-direct {v0, p1}, Lfbt;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lfbv;->a:Lfbu;

    .line 20
    return-void
.end method
