.class public final Lbxe$34;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbxe;


# direct methods
.method public constructor <init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lbxe;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 162
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;>;"
    iput-object p1, p0, Lbxe$34;->c:Lbxe;

    iput-object p5, p0, Lbxe$34;->a:Ljava/util/List;

    iput-object p6, p0, Lbxe$34;->b:Ljava/lang/String;

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
    .line 162
    .line 1166
    iget-object v0, p0, Lbxe$34;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->toIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1167
    iget-object v2, p0, Lbxe$34;->b:Ljava/lang/String;

    .line 1205
    new-instance v3, Lbxd$34;

    invoke-direct {v3, p2}, Lbxd$34;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 1219
    const-class v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;->addAnchors(Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 162
    return-void
.end method
