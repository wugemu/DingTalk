.class final Lewl$10;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->b(Ljava/lang/String;Z)V
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
    .line 1177
    iput-object p1, p0, Lewl$10;->c:Lewl;

    iput-object p2, p0, Lewl$10;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lewl$10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 1181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lewl$10;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    .line 1182
    .local v14, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1216
    .end local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 1186
    .restart local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v3, "save_new_mc_2_local_contact"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 1188
    .local v15, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v15, :cond_2

    .line 1189
    const-string/jumbo v1, "name"

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1190
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Leyt;->c(Ljava/lang/String;)Z

    move-result v12

    .line 1191
    .local v12, "hasExist":Z
    if-nez v12, :cond_2

    .line 1192
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Save new mc may have no permission"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1212
    .end local v2    # "name":Ljava/lang/String;
    .end local v12    # "hasExist":Z
    .end local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v15    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v10

    .line 1213
    .local v10, "e":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1214
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    const/4 v11, 0x0

    .line 1199
    .local v11, "hasAdd":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_4

    .line 1200
    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 1201
    .restart local v15    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "name"

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1202
    .restart local v2    # "name":Ljava/lang/String;
    const-string/jumbo v1, "phones"

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v17

    .line 1203
    .local v17, "phones":Lcom/alibaba/fastjson/JSONArray;
    const-class v1, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->toJavaObject(Lgxk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    .line 1204
    .local v16, "list":[Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_3

    .line 1205
    move-object/from16 v0, p0

    iget-object v1, v0, Lewl$10;->c:Lewl;

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v1 .. v9}, Lewl;->a(Lewl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lewl$10;->b:Z

    if-eqz v1, :cond_3

    if-nez v11, :cond_3

    .line 1206
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v3, "save_new_mc_2_local_contact"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1207
    const/4 v11, 0x1

    .line 1199
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1211
    .end local v2    # "name":Ljava/lang/String;
    .end local v15    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "list":[Ljava/lang/String;
    .end local v17    # "phones":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "new local:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lewl$10;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
