.class final Ldgg$2;
.super Ljava/lang/Object;
.source "ChatThemePresenter.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldgg;


# direct methods
.method constructor <init>(Ldgg;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldgg;

    .prologue
    .line 190
    iput-object p1, p0, Ldgg$2;->c:Ldgg;

    iput p2, p0, Ldgg$2;->a:I

    iput-object p3, p0, Ldgg$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Ldgg$2;->c:Ldgg;

    .line 1038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 217
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 218
    iget-object v0, p0, Ldgg$2;->c:Ldgg;

    .line 2038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ldgf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ChatThemePresenter.uploadImage code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 220
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 219
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 195
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 190
    check-cast p1, Lifx;

    .line 2199
    if-nez p1, :cond_0

    .line 2200
    iget-object v0, p0, Ldgg$2;->c:Ldgg;

    .line 3038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 2200
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 2201
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatThemePresenter.uploadImage uploadResponse is null"

    invoke-static {v0, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5255
    :goto_0
    return-void

    .line 4026
    :cond_0
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 2206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2207
    iget-object v0, p0, Ldgg$2;->c:Ldgg;

    .line 4038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 2207
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 2208
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatThemePresenter.uploadImage mediaId is empty"

    invoke-static {v0, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2212
    :cond_1
    iget-object v1, p0, Ldgg$2;->c:Ldgg;

    iget v2, p0, Ldgg$2;->a:I

    iget-object v3, p0, Ldgg$2;->b:Ljava/lang/String;

    .line 5231
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5232
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5233
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 5234
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 5235
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5237
    new-instance v4, Ldgg$3;

    invoke-direct {v4, v1, v2, v0}, Ldgg$3;-><init>(Ldgg;ILjava/lang/String;)V

    .line 5249
    const-class v0, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    iget-object v2, v1, Ldgg;->a:Ldgf$b;

    invoke-interface {v2}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    .line 5250
    new-instance v2, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v2, v3}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5251
    :catch_0
    move-exception v0

    .line 5252
    iget-object v1, v1, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->H_()V

    .line 5253
    const-string/jumbo v1, "im"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ChatThemePresenter.handleAlbumResult error="

    aput-object v3, v2, v6

    const/4 v3, 0x1

    .line 5254
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5253
    invoke-static {v1, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
