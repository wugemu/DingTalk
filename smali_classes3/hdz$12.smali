.class public final Lhdz$12;
.super Lbzd;
.source "FloatingLayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method public constructor <init>(Lhdz;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 316
    iput-object p1, p0, Lhdz$12;->a:Lhdz;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 319
    iget-object v2, p0, Lhdz$12;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lhdz$12;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "decorview":Landroid/view/View;
    iget-object v2, p0, Lhdz$12;->a:Lhdz;

    invoke-static {v2, v1}, Lhdz;->a(Lhdz;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lhdz$12;->a:Lhdz;

    invoke-static {v2, v0}, Lhdz;->a(Lhdz;Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v2, p0, Lhdz$12;->a:Lhdz;

    invoke-static {v2}, Lhdz;->g(Lhdz;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lhdz$12;->a:Lhdz;

    invoke-static {v2}, Lhdz;->h(Lhdz;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    iget-object v2, p0, Lhdz$12;->a:Lhdz;

    invoke-static {v2}, Lhdz;->i(Lhdz;)V

    .line 330
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "decorview":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final onDenied()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 335
    return-void
.end method
