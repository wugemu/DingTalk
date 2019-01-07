.class final Lbsv$15;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv;
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
        "Lbsj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

.field final synthetic c:Lbsy$b;

.field final synthetic d:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 840
    iput-object p1, p0, Lbsv$15;->d:Lbsv;

    iput-object p2, p0, Lbsv$15;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iput-object p3, p0, Lbsv$15;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iput-object p4, p0, Lbsv$15;->c:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 840
    check-cast p1, Lbsj;

    .line 1843
    const-string/jumbo v2, "BleBind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "request endorse success, model == null ? "

    aput-object v4, v3, v0

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1849
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    iget-object v1, p0, Lbsv$15;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {v0, v1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1850
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "client is not connect"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :cond_1
    :goto_0
    return-void

    .line 1854
    :cond_2
    if-nez p1, :cond_3

    .line 1855
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    iget-object v1, p0, Lbsv$15;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iget-object v2, p0, Lbsv$15;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-object v3, p0, Lbsv$15;->c:Lbsy$b;

    invoke-static {v0, v1, v2, v3}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    goto :goto_0

    .line 1859
    :cond_3
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    iget-object v1, p0, Lbsv$15;->c:Lbsy$b;

    invoke-static {v0, p1, v1}, Lbsv;->a(Lbsv;Lbsj;Lbsy$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 867
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getDeviceEndorsementV2 fail, code=:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; msg="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    iget-object v1, p0, Lbsv$15;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {v0, v1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "client is not connect"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lbsv$15;->d:Lbsv;

    iget-object v1, p0, Lbsv$15;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iget-object v4, p0, Lbsv$15;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-object v5, p0, Lbsv$15;->c:Lbsy$b;

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 863
    return-void
.end method
