.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 907
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 909
    .local v0, "ipcResult":Ljava/lang/Long;
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;

    iget-object v1, v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 911
    .end local v0    # "ipcResult":Ljava/lang/Long;
    :cond_0
    return-void
.end method
