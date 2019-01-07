.class final Lcom/alibaba/android/dingtalkim/views/IMBanner$3;
.super Ljava/lang/Object;
.source "IMBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMBanner;
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
    .line 299
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$3;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$3;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 302
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$3;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$3;"
    const/4 v1, 0x1

    .line 303
    .local v1, "closeBanner":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "bannerData":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->h(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->h(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->i(Lcom/alibaba/android/dingtalkim/views/IMBanner;)I

    move-result v3

    .line 1482
    if-ltz v3, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 1483
    :cond_0
    const/4 v0, 0x0

    .line 310
    .end local v0    # "bannerData":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->i(Lcom/alibaba/android/dingtalkim/views/IMBanner;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$a;->a(ILjava/lang/Object;)Z

    move-result v1

    .line 312
    :cond_2
    if-eqz v1, :cond_3

    .line 313
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;->a:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 315
    :cond_3
    return-void

    .line 1485
    .restart local v0    # "bannerData":Ljava/lang/Object;
    :cond_4
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
