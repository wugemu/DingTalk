.class public abstract Lrq;
.super Lrp;
.source "QuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrp",
        "<TT;",
        "Lrr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I

    .prologue
    .line 18
    .local p0, "this":Lrq;, "Lrq<TT;>;"
    invoke-direct {p0, p1, p2}, Lrp;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;I)Lrr;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "layoutRes"    # I

    .prologue
    .line 27
    .local p0, "this":Lrq;, "Lrq<TT;>;"
    iget-object v0, p0, Lrq;->b:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;II)Lrr;

    move-result-object v0

    return-object v0
.end method
