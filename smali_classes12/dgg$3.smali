.class final Ldgg$3;
.super Ljava/lang/Object;
.source "ChatThemePresenter.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 237
    iput-object p1, p0, Ldgg$3;->c:Ldgg;

    iput p2, p0, Ldgg$3;->a:I

    iput-object p3, p0, Ldgg$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 6
    .param p1, "palette"    # Landroid/support/v7/graphics/Palette;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "rbg":I
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 246
    :cond_0
    iget-object v2, p0, Ldgg$3;->c:Ldgg;

    iget v1, p0, Ldgg$3;->a:I

    iget-object v3, p0, Ldgg$3;->b:Ljava/lang/String;

    .line 1261
    new-instance v4, Ldgg$4;

    invoke-direct {v4, v2, v1}, Ldgg$4;-><init>(Ldgg;I)V

    .line 1291
    const-class v1, Lcma;

    iget-object v5, v2, Ldgg;->a:Ldgf$b;

    invoke-interface {v5}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1292
    new-instance v4, Ldgd;

    invoke-direct {v4}, Ldgd;-><init>()V

    .line 1293
    iput v0, v4, Ldgd;->a:I

    .line 1294
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v5

    invoke-virtual {v5}, Ldyn;->h()Ldfs;

    move-result-object v5

    iget-object v2, v2, Ldgg;->a:Ldgf$b;

    invoke-interface {v2}, Ldgf$b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v3, v4, v1}, Ldfs;->a(Ljava/lang/String;Ljava/lang/String;Ldgd;Lcma;)V

    .line 247
    return-void
.end method
