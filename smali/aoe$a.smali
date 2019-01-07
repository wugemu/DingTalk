.class final Laoe$a;
.super Ljava/lang/Object;
.source "BindingXOrientationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:D

.field b:D

.field c:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(DDD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-wide v0, p0, Laoe$a;->a:D

    .line 356
    iput-wide v0, p0, Laoe$a;->b:D

    .line 357
    iput-wide v0, p0, Laoe$a;->c:D

    .line 358
    return-void
.end method
