.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$4;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$4;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v1

    .line 167
    .local v1, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getStrictReqRate()I

    move-result v10

    .line 169
    .local v10, "strictReqRate":I
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getNormalReqRate()D

    move-result-wide v8

    .line 170
    .local v8, "normalReqRate":D
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getLimitReqRate()D

    move-result-wide v6

    .line 171
    .local v6, "limitReqRate":D
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getConfigExtra()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "config":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v5, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v11, "- normalReqRate: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n- limitReqRate: "

    .line 175
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n- strictReqRate: "

    .line 176
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 179
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v12, "\n- "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$4;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 185
    .local v2, "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 186
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setCanceledOnTouchOutside(Z)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 187
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 189
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "message":Ljava/lang/StringBuilder;
    .end local v6    # "limitReqRate":D
    .end local v8    # "normalReqRate":D
    .end local v10    # "strictReqRate":I
    :cond_1
    return-void
.end method
