.class public abstract Llew$q;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "q"
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Llew;-><init>()V

    .line 617
    iput p1, p0, Llew$q;->a:I

    .line 618
    return-void
.end method
