.class public Lbig;
.super Lbib;
.source "CommonDingViewHolder.java"


# instance fields
.field private ai:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resId"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbib;-><init>(Landroid/app/Activity;)V

    .line 15
    iput p2, p0, Lbig;->ai:I

    .line 16
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lbig;->ai:I

    return v0
.end method
