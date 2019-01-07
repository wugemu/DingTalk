.class final Lekn$3;
.super Ljava/lang/Object;
.source "MainModuleService.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILekl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lekl;

.field final synthetic c:Lekn;


# direct methods
.method constructor <init>(Lekn;Ljava/lang/String;Lekl;)V
    .locals 0
    .param p1, "this$0"    # Lekn;

    .prologue
    .line 121
    iput-object p1, p0, Lekn$3;->c:Lekn;

    iput-object p2, p0, Lekn$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lekn$3;->b:Lekl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lekn$3;->b:Lekl;

    invoke-interface {v1, p1, p2}, Lekl;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    .line 1124
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    iget-object v1, p0, Lekn$3;->a:Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1126
    :try_start_0
    iget-object v1, p0, Lekn$3;->b:Lekl;

    invoke-interface {v1, v0}, Lekl;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
