.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;
.super Ljava/lang/Object;
.source "NativeSlideActivity.java"

# interfaces
.implements Llgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->b:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->b:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->b:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v1

    .line 1434
    iget-object v1, v1, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->r()I

    move-result v1

    .line 253
    invoke-virtual {v0, v1}, Llgf;->a(I)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->b:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v0

    invoke-virtual {v0}, Llgf;->stop()V

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->b:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->e(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$7;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 258
    :cond_0
    return-void
.end method
