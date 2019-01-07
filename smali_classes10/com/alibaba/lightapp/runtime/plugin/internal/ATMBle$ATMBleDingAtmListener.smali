.class Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;
.super Ljava/lang/Object;
.source "ATMBle.java"

# interfaces
.implements Lhgg$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ATMBleDingAtmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;
    .param p2, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)V

    return-void
.end method

.method private callbackATMStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1049
    sget-object v1, Lhgg$d;->a:Lhgg;

    .line 92
    invoke-virtual {v1, p2}, Lhgg;->a(Ljava/lang/String;)Lhiu;

    move-result-object v0

    .line 93
    .local v0, "infoModel":Lhiu;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lhiu;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2, p1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onEnterRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lhiu;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p2, "atmInfoModel"    # Lhiu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    .line 62
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p2, Lhiu;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->callbackATMStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    const-string/jumbo v1, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ATMBle onEnterRange !"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onExitRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->callbackATMStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    const-string/jumbo v1, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ATMBle onExitRange !"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRangeChange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lhiu;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p2, "atmInfoModel"    # Lhiu;

    .prologue
    .line 89
    return-void
.end method

.method public onStartScan()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onStopScan()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$ATMBleDingAtmListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    goto :goto_0

    .line 56
    .end local v0    # "callbackId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ATMBle onStopScan !"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
