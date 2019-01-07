.class final Ldie$6;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldie;


# direct methods
.method constructor <init>(Ldie;)V
    .locals 0
    .param p1, "this$0"    # Ldie;

    .prologue
    .line 350
    iput-object p1, p0, Ldie$6;->a:Ldie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 371
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 354
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    iget-object v2, p0, Ldie$6;->a:Ldie;

    .line 1043
    iget-object v2, v2, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    .line 358
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 359
    iget-object v2, p0, Ldie$6;->a:Ldie;

    .line 2043
    iget-object v2, v2, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 359
    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->b(I)V

    .line 360
    iget-object v2, p0, Ldie$6;->a:Ldie;

    .line 3043
    iget-object v2, v2, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 360
    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a(I)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v0

    .line 361
    .local v0, "item":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v0, :cond_0

    .line 362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v1, "staticsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "topic_id"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dt_im_gif_topic_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 366
    .end local v1    # "staticsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
