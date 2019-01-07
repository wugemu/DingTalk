.class final Lhzt$1$1;
.super Liaa;
.source "TraceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzt$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/idl/log/models/UploadModel;

.field final synthetic b:Lhzt$1;


# direct methods
.method constructor <init>(Lhzt$1;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Lcom/alibaba/wukong/idl/log/models/UploadModel;)V
    .locals 2
    .param p1, "this$0"    # Lhzt$1;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Lcom/alibaba/wukong/WKExecutor;
    .param p5, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 112
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lhzt$1$1;->b:Lhzt$1;

    iput-object p6, p0, Lhzt$1$1;->a:Lcom/alibaba/wukong/idl/log/models/UploadModel;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4, p5}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    .line 1116
    new-instance v1, Lhzt$1$1$1;

    invoke-direct {v1, p0, p2}, Lhzt$1$1$1;-><init>(Lhzt$1$1;Lcom/alibaba/wukong/Callback;)V

    .line 1122
    const-class v0, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;

    iget-object v2, p0, Lhzt$1$1;->a:Lcom/alibaba/wukong/idl/log/models/UploadModel;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;->upload(Lcom/alibaba/wukong/idl/log/models/UploadModel;Liyv;)V

    .line 112
    return-void
.end method
