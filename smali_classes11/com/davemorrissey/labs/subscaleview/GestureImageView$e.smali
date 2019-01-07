.class final Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;
.super Ljava/lang/Object;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/GestureImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:F

.field b:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(FLandroid/graphics/PointF;)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "vTranslate"    # Landroid/graphics/PointF;

    .prologue
    .line 1867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->a:F

    .line 1869
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 1870
    return-void
.end method

.method synthetic constructor <init>(FLandroid/graphics/PointF;B)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 1866
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;-><init>(FLandroid/graphics/PointF;)V

    return-void
.end method
