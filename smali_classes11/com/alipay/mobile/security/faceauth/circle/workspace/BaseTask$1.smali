.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getGuassianBackgroud()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getGuassianBackgroud()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->b:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->f:Landroid/content/Context;

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :cond_0
    return-void
.end method
