.class Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;
.super Ljava/lang/Object;
.source "Zoloz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;->zimIdentity(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 62
    new-instance v1, Lcom/mybank/android/api/ZolozTask;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mybank/android/api/ZolozTask;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "task":Lcom/mybank/android/api/ZolozTask;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {v6, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 1073
    const-string/jumbo v2, "action"

    invoke-static {v0, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1075
    const-string/jumbo v3, "getBioInfo"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1076
    iget-object v0, v1, Lcom/mybank/android/api/ZolozTask;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->getMetaInfos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1078
    const-class v3, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;

    invoke-static {v0, v3}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;

    .line 1079
    const-string/jumbo v3, "actionResult"

    invoke-static {v0}, Lcom/mybank/android/api/ZolozTask;->a(Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1080
    const-string/jumbo v0, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ZolozTask getBioInfo:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 1082
    invoke-interface {v6, v4, v2}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    const-string/jumbo v2, "verifyId"

    invoke-static {v0, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1087
    const-string/jumbo v2, "token"

    invoke-static {v0, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1088
    const-string/jumbo v2, "bizName"

    invoke-static {v0, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1089
    const-string/jumbo v2, "verifyType"

    invoke-static {v0, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    const-string/jumbo v7, "logonId"

    invoke-static {v0, v7}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    const-string/jumbo v7, "sceneId"

    invoke-static {v0, v7}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1092
    const-string/jumbo v7, "bizId"

    invoke-static {v0, v7}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    const-string/jumbo v7, "bizRequestData"

    invoke-static {v0, v7}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1094
    const-string/jumbo v7, "nextStep"

    invoke-static {v0, v7}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    const-string/jumbo v7, "moduleData"

    invoke-static {v0, v7}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ZolozTask param:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 1099
    invoke-static {v0}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 1100
    invoke-static {v0}, Lcom/mybank/android/api/ZolozTask;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1102
    const-string/jumbo v7, "pubkey"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "pubkey"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "alipay"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1103
    :cond_2
    const-string/jumbo v7, "pubkey"

    const-string/jumbo v8, "alipay"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v0, v1, Lcom/mybank/android/api/ZolozTask;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyAlipay(Landroid/content/Context;)Landroid/os/Bundle;

    .line 1113
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "standard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1119
    :cond_4
    new-instance v2, Ljex;

    invoke-direct {v2, v6}, Ljex;-><init>(Ljfa;)V

    .line 1201
    iget-object v0, v1, Lcom/mybank/android/api/ZolozTask;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacadeBuilder;->create(Landroid/content/Context;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    move-result-object v0

    iput-object v0, v1, Lcom/mybank/android/api/ZolozTask;->b:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    .line 1203
    iget-object v6, v1, Lcom/mybank/android/api/ZolozTask;->b:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    const/4 v7, 0x0

    new-instance v0, Lcom/mybank/android/api/ZolozTask$1;

    invoke-direct/range {v0 .. v5}, Lcom/mybank/android/api/ZolozTask$1;-><init>(Lcom/mybank/android/api/ZolozTask;Ljex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v7, v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->verify(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/security/zim/api/ZIMCallback;)V

    goto/16 :goto_0

    .line 1107
    :cond_5
    const-string/jumbo v7, "pubkey"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mybank"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1109
    const-string/jumbo v7, "gwUrl"

    iget-object v8, v1, Lcom/mybank/android/api/ZolozTask;->a:Landroid/content/Context;

    const-string/jumbo v9, "gateway_url"

    invoke-static {v8, v9}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, v1, Lcom/mybank/android/api/ZolozTask;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyMYBank(Landroid/content/Context;)Landroid/os/Bundle;

    goto :goto_1

    .line 1121
    :cond_6
    const-string/jumbo v0, "verify_init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    const-string/jumbo v0, "verify_module"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
