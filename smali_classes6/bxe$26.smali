.class public final Lbxe$26;
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

.field final synthetic c:I

.field final synthetic d:Lbxe;


# direct methods
.method public constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 469
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    iput-object p1, p0, Lbxe$26;->d:Lbxe;

    iput-object p5, p0, Lbxe$26;->a:Ljava/lang/String;

    iput-object p6, p0, Lbxe$26;->b:Ljava/lang/String;

    iput p7, p0, Lbxe$26;->c:I

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
    .line 469
    .line 1473
    iget-object v1, p0, Lbxe$26;->a:Ljava/lang/String;

    iget-object v2, p0, Lbxe$26;->b:Ljava/lang/String;

    iget v3, p0, Lbxe$26;->c:I

    .line 1546
    new-instance v4, Lbxd$26;

    invoke-direct {v4, p2}, Lbxd$26;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 1560
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveRecordService;->updatePublicType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    .line 469
    return-void
.end method
