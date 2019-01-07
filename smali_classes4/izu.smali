.class public final Lizu;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "type"    # I
    .param p3, "length"    # I
    .param p4, "attsCount"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lizu;->a:I

    .line 24
    iput p2, p0, Lizu;->b:I

    .line 25
    iput p3, p0, Lizu;->c:I

    .line 26
    iput p4, p0, Lizu;->d:I

    .line 27
    return-void
.end method
