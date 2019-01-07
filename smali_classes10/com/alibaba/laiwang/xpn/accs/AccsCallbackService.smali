.class public Lcom/alibaba/laiwang/xpn/accs/AccsCallbackService;
.super Lcom/taobao/accs/base/TaoBaseService;
.source "AccsCallbackService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/taobao/accs/base/TaoBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 35
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    const-string/jumbo v0, "[TAG] XPN"

    const-string/jumbo v1, "[XPN] AccsCallbackService ondata"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "response"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 50
    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 45
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 40
    return-void
.end method
