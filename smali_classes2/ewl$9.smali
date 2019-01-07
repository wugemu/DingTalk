.class final Lewl$9;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lewl;


# direct methods
.method constructor <init>(Lewl;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1137
    iput-object p1, p0, Lewl$9;->c:Lewl;

    iput-object p2, p0, Lewl$9;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lewl$9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1141
    :try_start_0
    iget-object v0, p0, Lewl$9;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 1142
    .local v12, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "name"

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "save_mc_2_local_contact"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-static {v1}, Leyt;->c(Ljava/lang/String;)Z

    move-result v10

    .line 1146
    .local v10, "hasExist":Z
    if-nez v10, :cond_0

    .line 1147
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Save mc may have no permission"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    .end local v1    # "name":Ljava/lang/String;
    .end local v10    # "hasExist":Z
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 1151
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const-string/jumbo v0, "phones"

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v13

    .line 1152
    .local v13, "phones":Lcom/alibaba/fastjson/JSONArray;
    const-class v0, [Ljava/lang/String;

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/JSONArray;->toJavaObject(Lgxk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 1153
    .local v11, "list":[Ljava/lang/String;
    if-eqz v11, :cond_1

    array-length v0, v11

    if-lez v0, :cond_1

    .line 1154
    iget-object v0, p0, Lewl$9;->c:Lewl;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lewl;->a(Lewl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lewl$9;->b:Z

    if-eqz v0, :cond_1

    .line 1155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "save_mc_2_local_contact"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1158
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "local: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lewl$9;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1159
    .end local v1    # "name":Ljava/lang/String;
    .end local v11    # "list":[Ljava/lang/String;
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "phones":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v9

    .line 1160
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1161
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
