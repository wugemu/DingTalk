.class final Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;
.super Landroid/os/Handler;
.source "SmoothViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;)V
    .locals 1
    .param p1, "viewpager"    # Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;->a:Ljava/lang/ref/SoftReference;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;-><init>(Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    .line 138
    .local v0, "viewpager":Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;
    if-eqz v0, :cond_0

    .line 139
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v6, v1, :cond_0

    .line 141
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;->removeMessages(I)V

    .line 1105
    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->getAdapter()Lgl;

    move-result-object v1

    .line 1106
    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->getCurrentItem()I

    move-result v2

    .line 1109
    if-eqz v1, :cond_0

    .line 1112
    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v1

    .line 1113
    if-gtz v1, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 1117
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v2, :cond_2

    .line 1119
    invoke-virtual {v0, v4, v4}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setCurrentItem(IZ)V

    .line 1123
    :goto_1
    iget-object v1, v0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->c:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;

    iget-wide v2, v0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b:J

    iget-object v4, v0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    invoke-virtual {v4}, Lcom/alibaba/android/user/namecard/widget/SmoothScroller;->getDuration()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {v0, v3, v6}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->setCurrentItem(IZ)V

    goto :goto_1
.end method
