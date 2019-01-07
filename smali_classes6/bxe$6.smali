.class final Lbxe$6;
.super Liae;
.source "LvServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;

.field final synthetic b:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 259
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;>;"
    iput-object p1, p0, Lbxe$6;->b:Lbxe;

    iput-object p5, p0, Lbxe$6;->a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 259
    .line 1263
    iget-object v1, p0, Lbxe$6;->a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;

    .line 2177
    if-nez v1, :cond_0

    .line 2178
    const/4 v0, 0x0

    move-object v1, v0

    .line 1264
    :goto_0
    iget-object v0, p0, Lbxe$6;->a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->anchorId:J

    .line 2317
    new-instance v4, Lbxd$6;

    invoke-direct {v4, p2, v2, v3}, Lbxd$6;-><init>(Lcom/alibaba/wukong/Callback;J)V

    .line 2324
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveStatisticsService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveStatisticsService;

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveStatisticsService;->listLiveViewersV2(Lbvg;Liyv;)V

    .line 259
    return-void

    .line 2181
    :cond_0
    new-instance v0, Lbvg;

    invoke-direct {v0}, Lbvg;-><init>()V

    .line 2182
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->cid:Ljava/lang/String;

    iput-object v2, v0, Lbvg;->a:Ljava/lang/String;

    .line 2183
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->liveUuid:Ljava/lang/String;

    iput-object v2, v0, Lbvg;->b:Ljava/lang/String;

    .line 2184
    iget v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->stat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbvg;->c:Ljava/lang/Integer;

    .line 2185
    iget v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbvg;->d:Ljava/lang/Integer;

    .line 2186
    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbvg;->e:Ljava/lang/Integer;

    move-object v1, v0

    .line 2188
    goto :goto_0
.end method
