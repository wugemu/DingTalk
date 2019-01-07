.class public final Lbxe$5;
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
        "Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbxe;


# direct methods
.method public constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 236
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    iput-object p1, p0, Lbxe$5;->c:Lbxe;

    iput-object p5, p0, Lbxe$5;->a:Ljava/lang/String;

    iput-object p6, p0, Lbxe$5;->b:Ljava/lang/String;

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
    .line 236
    .line 1240
    iget-object v1, p0, Lbxe$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lbxe$5;->b:Ljava/lang/String;

    .line 1284
    new-instance v3, Lbxd$4;

    invoke-direct {v3, p2}, Lbxd$4;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 1291
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;->getLiveRecord(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 236
    return-void
.end method
