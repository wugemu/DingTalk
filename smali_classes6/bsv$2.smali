.class final Lbsv$2;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lbsy$b;)V
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
        "Ljava/lang/String;",
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
    .line 898
    iput-object p1, p0, Lbsv$2;->d:Lbsv;

    iput-object p2, p0, Lbsv$2;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iput-object p3, p0, Lbsv$2;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iput-object p4, p0, Lbsv$2;->c:Lbsy$b;

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
    .line 898
    check-cast p1, Ljava/lang/String;

    .line 1901
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "request secret success, secretKey == null ? "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1907
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    iget-object v1, p0, Lbsv$2;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {v0, v1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1908
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "client is not connect"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1913
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1914
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    iget-object v1, p0, Lbsv$2;->d:Lbsv;

    sget v2, Lbrx$g;->dt_smartdevice_try_reconnect:I

    invoke-virtual {v1, v2}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1916
    :cond_2
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    iget-object v1, p0, Lbsv$2;->d:Lbsv;

    iget-object v1, p0, Lbsv$2;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget v1, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->major:I

    iget-object v2, p0, Lbsv$2;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget v2, v2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->minor:I

    .line 2075
    invoke-static {p1, v1, v2}, Lbsv;->a(Ljava/lang/String;II)Lbsj;

    move-result-object v1

    .line 1916
    iget-object v2, p0, Lbsv$2;->c:Lbsy$b;

    invoke-static {v0, v1, v2}, Lbsv;->a(Lbsv;Lbsj;Lbsy$b;)V

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
    .line 925
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "request secret error, code="

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

    .line 926
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    iget-object v1, p0, Lbsv$2;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {v0, v1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 931
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "client is not connect"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_1
    iget-object v0, p0, Lbsv$2;->d:Lbsv;

    iget-object v1, p0, Lbsv$2;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iget-object v4, p0, Lbsv$2;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-object v5, p0, Lbsv$2;->c:Lbsy$b;

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
    .line 921
    return-void
.end method
