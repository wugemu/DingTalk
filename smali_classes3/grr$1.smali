.class final Lgrr$1;
.super Ljava/lang/Object;
.source "FaceBoxRpcService.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgrr;->a(Ljava/lang/String;Ljava/lang/String;Lgrw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgrw;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lgrr;


# direct methods
.method constructor <init>(Lgrr;Lgrw;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lgrr;

    .prologue
    .line 78
    iput-object p1, p0, Lgrr$1;->c:Lgrr;

    iput-object p2, p0, Lgrr$1;->a:Lgrw;

    iput-object p3, p0, Lgrr$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 129
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 11
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 81
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 82
    :cond_0
    const-string/jumbo v5, "facebox"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Fetch image err "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    iget-object v4, p0, Lgrr$1;->a:Lgrw;

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "Fetch file err"

    invoke-interface {v4, v5, v6}, Lgrw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    return-void

    .line 82
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "getCurrentUserFace fail callback error,"

    aput-object v7, v6, v8

    .line 87
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 86
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v3

    .line 93
    .local v3, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    invoke-static {v3}, Lcom/laiwang/protocol/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 94
    .local v0, "bytes":[B
    iget-object v4, p0, Lgrr$1;->b:Ljava/io/File;

    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lgtb;->a(Ljava/io/File;[[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 105
    iget-object v4, p0, Lgrr$1;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    new-instance v2, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    iget-object v4, p0, Lgrr$1;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 108
    .local v2, "imagePath":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<Ljava/lang/String;>;"
    :try_start_2
    iget-object v4, p0, Lgrr$1;->a:Lgrw;

    invoke-interface {v4, v2}, Lgrw;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 109
    :catch_1
    move-exception v1

    .line 110
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "getCurrentUserFace fail callback error,"

    aput-object v7, v6, v8

    .line 111
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 110
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v0    # "bytes":[B
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "imagePath":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<Ljava/lang/String;>;"
    .end local v3    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "facebox"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Save file err "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_3
    iget-object v4, p0, Lgrr$1;->a:Lgrw;

    const-string/jumbo v5, "-2"

    const-string/jumbo v6, "Save file err"

    invoke-interface {v4, v5, v6}, Lgrw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 100
    :catch_3
    move-exception v4

    const-string/jumbo v4, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "getCurrentUserFace fail callback error,"

    aput-object v7, v6, v8

    .line 101
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 100
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "bytes":[B
    .restart local v3    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lgrr$1;->a:Lgrw;

    const-string/jumbo v5, "-3"

    const-string/jumbo v6, "Save file not exists"

    invoke-interface {v4, v5, v6}, Lgrw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 116
    :catch_4
    move-exception v1

    .line 117
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FaceRecord"

    invoke-static {}, Lgrr;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "getCurrentUserFace fail callback error,"

    aput-object v7, v6, v8

    .line 118
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 117
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 125
    return-void
.end method
