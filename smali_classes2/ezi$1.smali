.class final Lezi$1;
.super Ljava/lang/Object;
.source "UserService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lezi;->a([JLcct;Z)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
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
    .line 117
    iput-object p1, p0, Lezi$1;->b:Lezi;

    iput-object p2, p0, Lezi$1;->a:Lcct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    .line 1120
    iget-object v0, p0, Lezi$1;->a:Lcct;

    if-eqz v0, :cond_1

    .line 1123
    const/4 v0, 0x0

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1126
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1129
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    const-class v2, [Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1131
    :try_start_0
    iget-object v0, p0, Lezi$1;->a:Lcct;

    invoke-interface {v0, v1}, Lcct;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :cond_1
    :goto_0
    return-void

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getUserProfileList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 145
    iget-object v1, p0, Lezi$1;->a:Lcct;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Lezi$1;->a:Lcct;

    invoke-interface {v1, p1, p2}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getUserProfileList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 141
    return-void
.end method
