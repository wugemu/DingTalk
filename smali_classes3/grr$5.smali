.class final Lgrr$5;
.super Ljava/lang/Object;
.source "FaceBoxRpcService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgrr;->b(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgrw;

.field final synthetic b:Lgrr;


# direct methods
.method constructor <init>(Lgrr;Lgrw;)V
    .locals 0
    .param p1, "this$0"    # Lgrr;

    .prologue
    .line 254
    iput-object p1, p0, Lgrr$5;->b:Lgrr;

    iput-object p2, p0, Lgrr$5;->a:Lgrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 254
    check-cast p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;

    .line 1257
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    const-class v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1259
    :try_start_0
    iget-object v1, p0, Lgrr$5;->a:Lgrw;

    invoke-interface {v1, v0}, Lgrw;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V

    .line 1260
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    invoke-static {}, Lcja;->c()V

    .line 1263
    const-string/jumbo v1, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "registerUserFace success callback error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1264
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1263
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lgrr$5;->a:Lgrw;

    invoke-interface {v1, p1, p2}, Lgrw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcja;->c()V

    .line 280
    const-string/jumbo v1, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "registerUserFace exception callback error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 281
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 280
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 271
    return-void
.end method
