.class final Landroid/support/v4/print/PrintHelper$e;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v0, p0, Landroid/support/v4/print/PrintHelper$e;->a:I

    .line 150
    iput v0, p0, Landroid/support/v4/print/PrintHelper$e;->b:I

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelper$e;->c:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$e;-><init>()V

    return-void
.end method
