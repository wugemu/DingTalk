.class public final Lhar$a;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "CommonImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 76
    invoke-virtual {p0}, Lhar$a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-virtual {p0}, Lhar$a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 80
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v3, v4}, Lhar;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 81
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lhar$a;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
