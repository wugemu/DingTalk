.class final Lbxe$18;
.super Liae;
.source "LvServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxe;->a(Lbvc;Lcom/alibaba/wukong/Callback;)V
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
        "Lbxh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbvc;

.field final synthetic b:Lbxe;


# direct methods
.method constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbvc;)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 392
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lbxh;>;"
    iput-object p1, p0, Lbxe$18;->b:Lbxe;

    iput-object p5, p0, Lbxe$18;->a:Lbvc;

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
    .line 392
    .line 1396
    iget-object v1, p0, Lbxe$18;->a:Lbvc;

    .line 1449
    new-instance v2, Lbxd$18;

    invoke-direct {v2, p2}, Lbxd$18;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 1456
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveEvenWheatService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveEvenWheatService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveEvenWheatService;->listApplyWheatUser(Lbvc;Liyv;)V

    .line 392
    return-void
.end method
