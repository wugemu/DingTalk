.class final Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager$a;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)V
    .locals 1
    .param p1, "autoScrollViewPager"    # Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager$a;->a:Ljava/lang/ref/WeakReference;

    .line 232
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 237
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;

    .line 240
    .local v0, "pager":Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;
    if-eqz v0, :cond_0

    .line 241
    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)D

    move-result-wide v2

    .line 1039
    iput-wide v2, v1, Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;->a:D

    .line 1137
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->getAdapter()Lgl;

    move-result-object v1

    .line 1138
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->getCurrentItem()I

    move-result v2

    .line 1140
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v3

    if-gt v3, v4, :cond_2

    .line 243
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->c(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)D

    move-result-wide v2

    .line 2039
    iput-wide v2, v1, Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;->a:D

    .line 244
    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->d(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;->getDuration()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;J)V

    goto :goto_0

    .line 1144
    :cond_2
    iget v1, v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a:I

    if-nez v1, :cond_3

    add-int/lit8 v1, v2, -0x1

    .line 1145
    :goto_2
    if-gez v1, :cond_4

    .line 1146
    iget-boolean v1, v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b:Z

    if-eqz v1, :cond_1

    .line 1147
    add-int/lit8 v1, v3, -0x1

    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 1144
    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    .line 1149
    :cond_4
    if-ne v1, v3, :cond_5

    .line 1150
    iget-boolean v1, v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b:Z

    if-eqz v1, :cond_1

    .line 1151
    const/4 v1, 0x0

    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 1154
    :cond_5
    invoke-virtual {v0, v1, v4}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
