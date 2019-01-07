.class public Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;
.super Lipd;
.source "ApiDynamicPermissionPlugin.java"


# static fields
.field public static final INTERNAL_API:Ljava/lang/String; = "internalAPI"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "internalAPI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 2054
    instance-of v1, v1, Liop;

    if-nez v1, :cond_1

    .line 2055
    sget-object v1, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalApi...not H5Page, do not allowed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 4081
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 2059
    check-cast v1, Liop;

    .line 2060
    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 2061
    const-string/jumbo v2, "isTinyApp"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 2062
    const-string/jumbo v3, "enableDSL"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    if-nez v2, :cond_2

    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2065
    sget-object v1, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalApi...do not allowed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4121
    :cond_2
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2070
    if-nez v1, :cond_3

    .line 2071
    sget-object v1, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalApi...param is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2075
    :cond_3
    const-string/jumbo v2, "method"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2076
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2077
    sget-object v1, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalApi...realMethod is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2081
    :cond_4
    const-string/jumbo v3, "rpc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2082
    sget-object v1, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "internalApi...black list"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2086
    :cond_5
    const-string/jumbo v3, "param"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 2088
    sget-object v3, Lcom/alipay/mobile/tinyappservice/h5plugin/ApiDynamicPermissionPlugin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "internalApi...dispatch plugin: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5069
    iput-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 5125
    iput-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2091
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 2092
    if-eqz v1, :cond_0

    .line 2093
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 30
    const-string/jumbo v0, "internalAPI"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
