.class final Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;
.super Lgru$a;
.source "FaceBoxImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgrt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgrt;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;Lgrt;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->c:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a:Lgrt;

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-direct {p0}, Lgru$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$1;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$3;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$4;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method
