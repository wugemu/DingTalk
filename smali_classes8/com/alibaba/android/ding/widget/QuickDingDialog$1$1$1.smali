.class final Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;
.super Ljava/lang/Object;
.source "QuickDingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->b(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->a(Lcom/alibaba/android/ding/widget/QuickDingDialog;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->a(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->c(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->d(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v1, v1, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->d(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1$1;->b:Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;->d:Lcom/alibaba/android/ding/widget/QuickDingDialog$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->e(Lcom/alibaba/android/ding/widget/QuickDingDialog;)V

    .line 167
    :cond_1
    return-void
.end method
