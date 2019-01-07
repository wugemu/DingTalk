.class final Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;
.super Ljava/lang/Object;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/GestureImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Landroid/graphics/PointF;

.field d:Landroid/graphics/PointF;

.field e:Landroid/graphics/PointF;

.field f:Landroid/graphics/PointF;

.field g:Landroid/graphics/PointF;

.field h:J

.field i:Z

.field j:I

.field k:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    .line 1860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->i:Z

    .line 1861
    const/4 v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->j:I

    .line 1862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->k:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1850
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;-><init>()V

    return-void
.end method
