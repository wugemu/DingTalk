.class public Leiv;
.super Ljava/lang/Object;
.source "TeamHandler.java"

# interfaces
.implements Leij;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    const-string/jumbo v7, "org"

    const-string/jumbo v8, "org_team"

    invoke-static {v7, v8, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 52
    :cond_0
    if-eqz v3, :cond_2

    .line 53
    const-string/jumbo v7, "artificial_service_switch"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    .line 54
    .local v6, "serviceSwitch":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "artificial_service_switch"

    invoke-static {v7, v8, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 55
    const-string/jumbo v7, "artificial_service_content"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "serviceContent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 57
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "artificial_service_content"

    invoke-static {v7, v8, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    const-string/jumbo v7, "experience_team"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 61
    .local v1, "experienceTeam":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "experience_team"

    invoke-static {v7, v8, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v7, "role_pop"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 64
    .local v4, "rolePopSwitch":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "role_pop"

    invoke-static {v7, v8, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 66
    const-string/jumbo v7, "industryLimit"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 67
    .local v2, "industryObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_2

    .line 68
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "create_org_industry_limit_member"

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "experienceTeam":Z
    .end local v2    # "industryObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "rolePopSwitch":Z
    .end local v5    # "serviceContent":Ljava/lang/String;
    .end local v6    # "serviceSwitch":Z
    :cond_2
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    const-class v7, Leiv;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
