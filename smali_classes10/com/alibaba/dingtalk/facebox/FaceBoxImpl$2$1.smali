.class final Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;
.super Ljava/lang/Object;
.source "FaceBoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    .line 187
    .local v0, "ipcResult":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a:Lgrt;

    invoke-interface {v1, v0}, Lgrt;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;)V

    .line 190
    .end local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->recycle()V

    .line 193
    :cond_1
    return-void
.end method
