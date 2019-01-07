.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ChannelDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->a:F

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 378
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 379
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->a:F

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->a:F

    .line 380
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 381
    .local v1, "headerHeight":F
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->a:F

    div-float/2addr v3, v1

    sub-float v0, v2, v3

    .line 382
    .local v0, "aphla":F
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setAlpha(F)V

    .line 383
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 384
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 385
    return-void
.end method
