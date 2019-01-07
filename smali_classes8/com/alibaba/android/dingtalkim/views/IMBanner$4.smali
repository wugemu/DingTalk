.class final Lcom/alibaba/android/dingtalkim/views/IMBanner$4;
.super Ljava/lang/Object;
.source "IMBanner.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/IMBanner;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/IMBanner;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 383
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$4;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$4;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 402
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$4;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$4;"
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 387
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$4;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$4;"
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 392
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$4;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$4;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    rem-int v0, p1, v1

    .line 393
    .local v0, "indexPos":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->a(Lcom/alibaba/android/dingtalkim/views/IMBanner;I)V

    .line 394
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$a;->a(I)V

    .line 397
    :cond_0
    return-void
.end method
