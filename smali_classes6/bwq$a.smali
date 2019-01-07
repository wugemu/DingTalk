.class final Lbwq$a;
.super Lbxc;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbwq;


# direct methods
.method private constructor <init>(Lbwq;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lbwq$a;->a:Lbwq;

    invoke-direct {p0}, Lbxc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbwq;B)V
    .locals 0
    .param p1, "x0"    # Lbwq;

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lbwq$a;-><init>(Lbwq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 740
    const-string/jumbo v0, "LivePlayer.onStart"

    .line 4013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->r(Lbwq;)Lbwy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbwy;->a(Z)V

    .line 742
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->e(Lbwq;)Lbwv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbwv;->c(Z)V

    .line 743
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->s(Lbwq;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->p(Lbwq;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->j(Lbwq;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 746
    return-void
.end method

.method public final a(II)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/16 v9, -0x6e

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 708
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "video status onError, what="

    aput-object v2, v1, v6

    .line 709
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, ", extra="

    aput-object v2, v1, v7

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 708
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    const-string/jumbo v2, "live"

    invoke-static {v2, v8, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 1059
    iget-object v0, v1, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 712
    .local v0, "currentUrlInfo":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    :try_start_0
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->o(Lbwq;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->o(Lbwq;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 713
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "mUrlInfos="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lbwq$a;->a:Lbwq;

    .line 714
    invoke-static {v3}, Lbwq;->o(Lbwq;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", current clarity="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, v0, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->clarity:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 713
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbwq$a;->a:Lbwq;

    .line 720
    invoke-static {v3}, Lbwq;->h(Lbwq;)Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    move-result-object v3

    .line 2044
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2045
    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    const-string/jumbo v1, "reason"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    if-eqz v0, :cond_1

    .line 2048
    const-string/jumbo v1, "liveUrl"

    iget-object v2, v0, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    :cond_1
    if-eqz v3, :cond_2

    .line 2051
    const-string/jumbo v1, "uuid"

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    const-string/jumbo v1, "anchor"

    iget-wide v2, v3, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    :cond_2
    const/16 v1, 0x1771

    const-string/jumbo v2, "Live Player Failed"

    invoke-static {v1, v2, v4}, Lbyo;->a(ILjava/lang/String;Ljava/util/Map;)V

    .line 721
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->p(Lbwq;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->q(Lbwq;)I

    move-result v1

    if-ne v1, v7, :cond_3

    if-eq p1, v9, :cond_4

    .line 725
    :cond_3
    sget v1, Lbtp$g;->dt_lv_live_interrupted_error_network:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 2758
    const-string/jumbo v1, "LivePlayer.onEnd"

    .line 3013
    const-string/jumbo v2, "live"

    invoke-static {v2, v8, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->t(Lbwq;)V

    .line 2760
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->r(Lbwq;)Lbwy;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbwy;->a(Z)V

    .line 2761
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->e(Lbwq;)Lbwv;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbwv;->c(Z)V

    .line 2762
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->s(Lbwq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2763
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->p(Lbwq;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 728
    if-ne p1, v9, :cond_4

    .line 729
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->h()V

    .line 733
    :cond_4
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->r(Lbwq;)Lbwy;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbwy;->a(Z)V

    .line 734
    iget-object v1, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v1}, Lbwq;->e(Lbwq;)Lbwv;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbwv;->c(Z)V

    .line 735
    return v6

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;IILjava/lang/Object;)Z
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I
    .param p4, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 779
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 780
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    .line 6487
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 7035
    iget-object v0, v0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 6488
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 6489
    :goto_0
    iget-object v2, v1, Lbws;->h:Ljava/lang/String;

    iget v1, v1, Lbws;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Lbyd;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 782
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lbxc;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;IILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 6488
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlNormal:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 750
    const-string/jumbo v0, "LivePlayer.onPause"

    .line 5013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->r(Lbwq;)Lbwy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbwy;->a(Z)V

    .line 752
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->e(Lbwq;)Lbwv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbwv;->c(Z)V

    .line 753
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->p(Lbwq;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 754
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 768
    const-string/jumbo v0, "LivePlayer.onLoading"

    .line 6013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbwq;->a(Lbwq;Z)Z

    .line 770
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->q(Lbwq;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 771
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->p(Lbwq;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    :cond_0
    iget-object v0, p0, Lbwq$a;->a:Lbwq;

    invoke-static {v0}, Lbwq;->s(Lbwq;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    return-void
.end method
