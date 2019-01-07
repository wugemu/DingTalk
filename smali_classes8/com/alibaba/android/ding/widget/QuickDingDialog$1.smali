.class final Lcom/alibaba/android/ding/widget/QuickDingDialog$1;
.super Ljava/lang/Object;
.source "QuickDingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/QuickDingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/QuickDingDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/QuickDingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/QuickDingDialog;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v5}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->a(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 132
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 133
    const/4 v4, 0x0

    .line 171
    :goto_0
    return v4

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$1;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bgBmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0

    .line 146
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 150
    .local v3, "statusBarHeight":I
    invoke-static {}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;

    invoke-direct {v6, p0, v0, v3, v1}, Lcom/alibaba/android/ding/widget/QuickDingDialog$1$1;-><init>(Lcom/alibaba/android/ding/widget/QuickDingDialog$1;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
