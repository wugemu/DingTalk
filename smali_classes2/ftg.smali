.class public final Lftg;
.super Ljava/lang/Object;
.source "NameCardSharePresenter.java"


# instance fields
.field public a:Lfta$a;


# direct methods
.method public constructor <init>(Lfta$a;)V
    .locals 0
    .param p1, "viewContract"    # Lfta$a;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lftg;->a:Lfta$a;

    .line 41
    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "mShortcutView"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "qrCodeView"    # Landroid/widget/ImageView;
    .param p2, "progressView"    # Landroid/view/View;
    .param p3, "encodeText"    # Ljava/lang/String;
    .param p4, "color"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v0, Lftg$2;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lftg$2;-><init>(Lftg;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
