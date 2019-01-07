.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iput p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->a:I

    iput p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->a:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->b:I

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$1;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->i()V

    .line 256
    :cond_0
    return-void
.end method
