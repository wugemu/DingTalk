.class final Lbsv$11;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
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
        "Lbsb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

.field final synthetic c:Z

.field final synthetic d:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 609
    iput-object p1, p0, Lbsv$11;->d:Lbsv;

    iput-object p2, p0, Lbsv$11;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lbsv$11;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iput-boolean p4, p0, Lbsv$11;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 609
    check-cast p1, Lbsb;

    .line 1613
    const-string/jumbo v1, "BleBind"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "request checkDeviceManager success, isManager="

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "model null"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbsb;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbsb;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1616
    :cond_0
    iget-object v0, p0, Lbsv$11;->d:Lbsv;

    iget-object v1, p0, Lbsv$11;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lbsv$11;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-boolean v3, p0, Lbsv$11;->c:Z

    invoke-static {v0, v1, v2, v3}, Lbsv;->a(Lbsv;Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V

    :goto_1
    return-void

    .line 1613
    :cond_1
    iget-object v0, p1, Lbsb;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 1618
    :cond_2
    iget-object v0, p0, Lbsv$11;->d:Lbsv;

    iget-object v1, p0, Lbsv$11;->d:Lbsv;

    sget v2, Lbrx$g;->dt_smartdevice_try_reconnect:I

    invoke-virtual {v1, v2}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsv;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 627
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "request checkDeviceManager error="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lbsv$11;->d:Lbsv;

    iget-object v1, p0, Lbsv$11;->d:Lbsv;

    sget v2, Lbrx$g;->dt_smartdevice_try_reconnect:I

    invoke-virtual {v1, v2}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsv;->a(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 623
    return-void
.end method
