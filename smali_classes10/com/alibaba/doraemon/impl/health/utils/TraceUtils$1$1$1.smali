.class Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;
.super Liaa;
.source "TraceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;

.field final synthetic val$uploadModel:Lcom/alibaba/wukong/idl/log/models/UploadModel;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Lcom/alibaba/wukong/idl/log/models/UploadModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Lcom/alibaba/wukong/WKExecutor;
    .param p5, "x3"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 129
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;->this$1:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;

    iput-object p6, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;->val$uploadModel:Lcom/alibaba/wukong/idl/log/models/UploadModel;

    invoke-direct {p0, p2, p3, p4, p5}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;->onExecuteRpc(Ljava/lang/Void;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method public onExecuteRpc(Ljava/lang/Void;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    .local p2, "rpcHandler":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1$1;-><init>(Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;Lcom/alibaba/wukong/Callback;)V

    .line 135
    .local v0, "handler":Lifm;, "Lifm<Ljava/lang/Void;>;"
    const-class v1, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;->val$uploadModel:Lcom/alibaba/wukong/idl/log/models/UploadModel;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/idl/log/client/ClientLogIService;->upload(Lcom/alibaba/wukong/idl/log/models/UploadModel;Liyv;)V

    .line 136
    return-void
.end method
