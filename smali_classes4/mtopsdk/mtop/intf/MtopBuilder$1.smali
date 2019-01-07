.class Lmtopsdk/mtop/intf/MtopBuilder$1;
.super Ljava/lang/Object;
.source "MtopBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/intf/MtopBuilder;

.field final synthetic val$apiID:Lmtopsdk/mtop/common/ApiID;

.field final synthetic val$proxy:Lmtopsdk/mtop/MtopProxy;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/intf/MtopBuilder;Lmtopsdk/mtop/common/ApiID;Lmtopsdk/mtop/MtopProxy;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder$1;->this$0:Lmtopsdk/mtop/intf/MtopBuilder;

    iput-object p2, p0, Lmtopsdk/mtop/intf/MtopBuilder$1;->val$apiID:Lmtopsdk/mtop/common/ApiID;

    iput-object p3, p0, Lmtopsdk/mtop/intf/MtopBuilder$1;->val$proxy:Lmtopsdk/mtop/MtopProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 487
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder$1;->val$apiID:Lmtopsdk/mtop/common/ApiID;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder$1;->val$proxy:Lmtopsdk/mtop/MtopProxy;

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder$1;->this$0:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-static {v2}, Lmtopsdk/mtop/intf/MtopBuilder;->access$000(Lmtopsdk/mtop/intf/MtopBuilder;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/common/ApiID;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/ApiID;->setFuture(Ljava/util/concurrent/Future;)V

    .line 488
    return-void
.end method
