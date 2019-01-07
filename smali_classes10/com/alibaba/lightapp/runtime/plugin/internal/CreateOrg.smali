.class public Lcom/alibaba/lightapp/runtime/plugin/internal/CreateOrg;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "CreateOrg.java"


# static fields
.field private static final JUMP_TYPE_1:Ljava/lang/String; = "artificial"

.field private static final JUMP_TYPE_2:Ljava/lang/String; = "workTab"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public industryInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    move-result-object v0

    .line 79
    .local v0, "createNewOrgInfo":Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v2, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    const-string/jumbo v3, "name"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v3, "orgId"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v3, "corpId"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v3, :cond_0

    .line 87
    const-string/jumbo v3, "industryCode"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v3, "industryDesc"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v3

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "lightapp"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lastCreateOrgInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    move-result-object v0

    .line 101
    .local v0, "createNewOrgInfo":Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v2, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    const-string/jumbo v3, "orgName"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v3, "orgId"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v3, "corpId"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v3, "province"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->province:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v3, "city"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->city:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v3, "scale"

    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->scale:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v3, :cond_0

    .line 112
    const-string/jumbo v3, "industryCode"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v3, "industryName"

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    :goto_0
    return-object v3

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "lightapp"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/CreateOrg;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public successJump(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const-string/jumbo v5, ""

    .line 49
    .local v5, "type":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 50
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    :cond_0
    const-string/jumbo v6, "artificial"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 54
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CreateOrg;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;)V

    .line 73
    :cond_1
    :goto_0
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v6

    .line 55
    :cond_2
    const-string/jumbo v6, "workTab"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    move-result-object v0

    .line 57
    .local v0, "createNewOrgInfo":Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "orgId":J
    if-eqz v0, :cond_3

    .line 59
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    .line 62
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v4

    .line 64
    .local v4, "orgInfo":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_4

    .line 65
    const-string/jumbo v6, "to_page"

    const-string/jumbo v7, "to_oa"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v6, "corpid"

    iget-object v7, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CreateOrg;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v7, v6, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string/jumbo v6, "to_page"

    const-string/jumbo v7, "to_contact"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
