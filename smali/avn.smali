.class public final Lavn;
.super Ljava/lang/Object;
.source "CalendarDrawableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "color"    # I
    .param p1, "size"    # I

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 29
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 31
    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 32
    return-object v0
.end method
