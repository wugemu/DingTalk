.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;
.super Ljava/lang/Object;
.source "LiveReplayListFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c()V
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
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

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

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Z)Z

    .line 270
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "listLiveRecords failed, code="

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

    .line 272
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 253
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

    .line 253
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;I)I

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Z)Z

    .line 1258
    if-eqz p1, :cond_5

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;->isEnd:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Z)Z

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)Lbxy;

    move-result-object v5

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;->records:Ljava/util/List;

    .line 2087
    if-eqz v0, :cond_2

    .line 2088
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 2089
    if-eqz v0, :cond_6

    .line 2137
    if-eqz v0, :cond_1

    .line 2140
    iget-object v1, v5, Lbxy;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 2141
    if-eqz v1, :cond_0

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    .line 2142
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 2089
    :goto_1
    if-nez v1, :cond_6

    .line 2090
    iget-object v1, v5, Lbxy;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    :goto_2
    move v2, v0

    .line 2093
    goto :goto_0

    :cond_1
    move v1, v3

    .line 2146
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2095
    :cond_3
    if-eqz v2, :cond_4

    .line 2096
    invoke-virtual {v5}, Lbxy;->notifyDataSetChanged()V

    .line 1264
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->d(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)V

    .line 253
    return-void

    .line 1262
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment$4;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;Z)Z

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method
