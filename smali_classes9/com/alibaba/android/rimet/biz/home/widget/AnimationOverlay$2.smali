.class final Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;
.super Ljava/lang/Object;
.source "AnimationOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->b:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->c:I

    iput-object p5, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->e:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->b:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;->c:I

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2$1;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method
