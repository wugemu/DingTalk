.class final Lbsv$6;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

.field final synthetic c:Lbsv;


# direct methods
.method constructor <init>(Lbsv;ZLcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 1222
    iput-object p1, p0, Lbsv$6;->c:Lbsv;

    iput-boolean p2, p0, Lbsv$6;->a:Z

    iput-object p3, p0, Lbsv$6;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bluetoothId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 1225
    const-string/jumbo v2, "BleBind"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onDeviceConnected, name="

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "; bluetoothId="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    .line 2075
    iget-boolean v2, v2, Lbsv;->g:Z

    .line 1227
    if-nez v2, :cond_0

    .line 1228
    const-string/jumbo v2, "1"

    invoke-static {v2}, Lbsn;->b(Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v2, "2"

    invoke-static {v2}, Lbsn;->a(Ljava/lang/String;)V

    .line 1231
    :cond_0
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    invoke-virtual {v2}, Lbsv;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1291
    :goto_0
    return-void

    .line 1234
    :cond_1
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    .line 3075
    iput-boolean v6, v2, Lbsv;->f:Z

    .line 1236
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    .line 4075
    iget-boolean v2, v2, Lbsv;->h:Z

    .line 1236
    if-nez v2, :cond_3

    .line 1238
    new-instance v1, Lbsv$6$1;

    invoke-direct {v1, p0}, Lbsv$6$1;-><init>(Lbsv$6;)V

    .line 1245
    .local v1, "wifiInfoResultListener":Lbsy$b;
    new-instance v0, Lbsv$6$2;

    invoke-direct {v0, p0, v1}, Lbsv$6$2;-><init>(Lbsv$6;Lbsy$b;)V

    .line 1281
    .local v0, "resultListener":Lbsy$b;
    iget-boolean v2, p0, Lbsv$6;->a:Z

    if-eqz v2, :cond_2

    .line 1283
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    iget-object v3, p0, Lbsv$6;->c:Lbsv;

    .line 5075
    iget-object v3, v3, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1283
    iget-object v4, p0, Lbsv$6;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {v2, v3, v4, v0}, Lbsv;->b(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    invoke-static {v2, v0}, Lbsv;->a(Lbsv;Lbsy$b;)V

    goto :goto_0

    .line 1289
    .end local v0    # "resultListener":Lbsy$b;
    .end local v1    # "wifiInfoResultListener":Lbsy$b;
    :cond_3
    iget-object v2, p0, Lbsv$6;->c:Lbsv;

    iget-object v3, p0, Lbsv$6;->c:Lbsv;

    .line 6075
    iget-object v3, v3, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1289
    invoke-static {v2, v3}, Lbsv;->b(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V

    goto :goto_0
.end method

.method public final onDeviceConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bluetoothId"    # Ljava/lang/String;
    .param p3, "errorReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1301
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDeviceConnectionFailed, name="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; bluetoothId="

    aput-object v3, v1, v2

    aput-object p2, v1, v5

    const/4 v2, 0x4

    const-string/jumbo v3, "; msg="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lbsv$6;->c:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1308
    :cond_0
    iget-object v0, p0, Lbsv$6;->c:Lbsv;

    .line 7075
    iput-boolean v4, v0, Lbsv;->f:Z

    .line 1309
    iget-object v0, p0, Lbsv$6;->c:Lbsv;

    .line 8075
    iput-boolean v4, v0, Lbsv;->h:Z

    .line 1310
    iget-object v0, p0, Lbsv$6;->c:Lbsv;

    invoke-virtual {v0}, Lbsv;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1311
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "oa_bravo_attendance_bluetoothset_disconnect_pop_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1313
    iget-object v0, p0, Lbsv$6;->c:Lbsv;

    invoke-virtual {v0, v5}, Lbsv;->c(I)V

    .line 1315
    :cond_1
    iget-object v0, p0, Lbsv$6;->c:Lbsv;

    invoke-static {v0, v4, p3}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onDeviceDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bluetoothId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1295
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDeviceDisconnected, name="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; bluetoothId="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method public final onDeviceListenerFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bluetoothId"    # Ljava/lang/String;

    .prologue
    .line 1319
    return-void
.end method
