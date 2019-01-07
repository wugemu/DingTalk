.class final Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;
.super Ljava/lang/Object;
.source "AnimationOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->b(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V

    .line 182
    return-void
.end method
