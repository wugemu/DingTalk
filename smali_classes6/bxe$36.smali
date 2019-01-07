.class public final Lbxe$36;
.super Liae;
.source "LvServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

.field final synthetic b:Lbxe;


# direct methods
.method public constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 185
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;>;"
    iput-object p1, p0, Lbxe$36;->b:Lbxe;

    iput-object p5, p0, Lbxe$36;->a:Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 185
    .line 1189
    new-instance v1, Lbva;

    invoke-direct {v1}, Lbva;-><init>()V

    .line 1190
    iget-object v0, p0, Lbxe$36;->a:Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lbxe$36;->a:Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;->cid:Ljava/lang/String;

    iput-object v0, v1, Lbva;->a:Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lbxe$36;->a:Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbva;->b:Ljava/lang/Integer;

    .line 1193
    iget-object v0, p0, Lbxe$36;->a:Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbva;->c:Ljava/lang/Integer;

    .line 1239
    :cond_0
    new-instance v2, Lbxd$36;

    invoke-direct {v2, p2}, Lbxd$36;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 1259
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;->listAnchors(Lbva;Liyv;)V

    .line 185
    return-void
.end method
