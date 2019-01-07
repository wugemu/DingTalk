.class final Lbxe$2;
.super Liae;
.source "LvServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;

.field final synthetic b:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 202
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    iput-object p1, p0, Lbxe$2;->b:Lbxe;

    iput-object p5, p0, Lbxe$2;->a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 202
    .line 1206
    iget-object v1, p0, Lbxe$2;->a:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;

    .line 2090
    if-nez v1, :cond_0

    .line 2091
    const/4 v0, 0x0

    move-object v1, v0

    .line 2263
    :goto_0
    new-instance v2, Lbxd$2;

    invoke-direct {v2, p2}, Lbxd$2;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 2270
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;->listLiveRecords(Lbve;Liyv;)V

    .line 202
    return-void

    .line 2094
    :cond_0
    new-instance v0, Lbve;

    invoke-direct {v0}, Lbve;-><init>()V

    .line 2095
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->cid:Ljava/lang/String;

    iput-object v2, v0, Lbve;->a:Ljava/lang/String;

    .line 2096
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->openId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lbve;->b:Ljava/lang/Long;

    .line 2097
    iget v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbve;->c:Ljava/lang/Integer;

    .line 2098
    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbve;->d:Ljava/lang/Integer;

    move-object v1, v0

    .line 2100
    goto :goto_0
.end method
