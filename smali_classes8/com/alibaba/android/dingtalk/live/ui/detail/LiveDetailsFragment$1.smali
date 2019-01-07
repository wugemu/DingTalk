.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;
.super Ljava/lang/Object;
.source "LiveDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;Z)Z

    .line 104
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "listLiveViewers failed, code="

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)I

    move-result v1

    add-int/lit16 v1, v1, 0xbb8

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;I)I

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;Z)Z

    .line 1092
    if-eqz p1, :cond_5

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;->isEnd:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)Lbxq;

    move-result-object v5

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;->liveViewers:Ljava/util/List;

    .line 2042
    if-eqz v0, :cond_2

    .line 2043
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;

    .line 2044
    if-eqz v0, :cond_6

    .line 2056
    if-eqz v0, :cond_1

    .line 2059
    iget-object v1, v5, Lbxq;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;

    .line 2060
    if-eqz v1, :cond_0

    .line 2063
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->openId:J

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->openId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    move v1, v4

    .line 2044
    :goto_1
    if-nez v1, :cond_6

    .line 2045
    iget-object v1, v5, Lbxq;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    :goto_2
    move v2, v0

    .line 2048
    goto :goto_0

    :cond_1
    move v1, v3

    .line 2067
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2050
    :cond_3
    if-eqz v2, :cond_4

    .line 2051
    invoke-virtual {v5}, Lbxq;->notifyDataSetChanged()V

    .line 1098
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->c(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;)V

    .line 87
    return-void

    .line 1096
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment$1;->a:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;->b(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDetailsFragment;Z)Z

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method
