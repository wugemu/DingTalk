.class final Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;
.super Ljava/lang/Object;
.source "QuickDingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/QuickDingDialog$1;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->b:I

    iput-object p4, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->a(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->a:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->b:I

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->a(Lcom/alibaba/android/ding/widget/QuickDingDialog;Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;-><init>(Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method
