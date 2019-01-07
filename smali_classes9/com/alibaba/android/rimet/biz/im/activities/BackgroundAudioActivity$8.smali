.class final Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;
.super Ljava/lang/Object;
.source "BackgroundAudioActivity.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 4
    .param p1, "palette"    # Landroid/support/v7/graphics/Palette;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    .line 268
    .local v1, "dominantSwatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 270
    .local v0, "bgColor":I
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;I)I

    .line 271
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->h(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 272
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->j(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->i(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->k(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->i(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;->a:Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    .line 276
    .end local v0    # "bgColor":I
    :cond_0
    return-void
.end method
