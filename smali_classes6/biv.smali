.class public final Lbiv;
.super Lbib;
.source "UnConfirmedDingViewHolder.java"


# instance fields
.field private ai:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resId"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lbib;-><init>(Landroid/app/Activity;)V

    .line 14
    iput p2, p0, Lbiv;->ai:I

    .line 15
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lbiv;->ai:I

    return v0
.end method
