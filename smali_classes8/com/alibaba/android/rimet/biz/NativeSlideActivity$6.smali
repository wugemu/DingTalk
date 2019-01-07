.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;
.super Ljava/lang/Object;
.source "NativeSlideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 248
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 232
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 236
    if-nez p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v0

    invoke-virtual {v0}, Llgf;->b()V

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v0

    invoke-virtual {v0}, Llgf;->start()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v0

    invoke-virtual {v0}, Llgf;->b()V

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v0

    invoke-virtual {v0}, Llgf;->start()V

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$6;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;Z)Z

    goto :goto_0
.end method
