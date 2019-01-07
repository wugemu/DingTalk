.class final Lezi$4;
.super Ljava/lang/Object;
.source "UserService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lezi;->c(JJLcct;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcct;

.field final synthetic b:Lezi;


# direct methods
.method constructor <init>(Lezi;Lcct;)V
    .locals 0
    .param p1, "this$0"    # Lezi;

    .prologue
    .line 265
    iput-object p1, p0, Lezi$4;->b:Lezi;

    iput-object p2, p0, Lezi$4;->a:Lcct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 265
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1268
    if-eqz p1, :cond_0

    .line 1270
    :try_start_0
    iget-object v0, p0, Lezi$4;->b:Lezi;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->ver:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lezi;->d(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :cond_0
    :goto_0
    iget-object v0, p0, Lezi$4;->a:Lcct;

    if-eqz v0, :cond_1

    .line 1280
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1282
    :try_start_1
    iget-object v1, p0, Lezi$4;->a:Lcct;

    invoke-interface {v1, v0}, Lcct;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V

    .line 1283
    invoke-static {}, Lcja;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1287
    :cond_1
    :goto_1
    return-void

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "updateUserProfileVersion "

    aput-object v2, v1, v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1284
    :catch_1
    move-exception v0

    .line 1285
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "getUserProfileExtension "

    aput-object v2, v1, v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lciz;->a(Ljava/lang/String;Z)V

    .line 1286
    invoke-static {}, Lcja;->c()V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lezi$4;->a:Lcct;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v0, p0, Lezi$4;->a:Lcct;

    invoke-interface {v0, p1, p2}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    invoke-static {}, Lcja;->c()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 292
    return-void
.end method
