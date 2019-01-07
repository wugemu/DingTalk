.class final Ldlc$1;
.super Ljava/lang/Object;
.source "EncryptTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlc;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlc;


# direct methods
.method constructor <init>(Ldlc;)V
    .locals 0
    .param p1, "this$0"    # Ldlc;

    .prologue
    .line 99
    iput-object p1, p0, Ldlc$1;->a:Ldlc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Ldlc$1;->a:Ldlc;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Ldlc;->a(Ldlc;I)I

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, "corpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v16

    .line 105
    .local v16, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v16, :cond_1

    .line 106
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 107
    .local v13, "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v13, :cond_1

    .line 108
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 109
    .local v12, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v12, :cond_0

    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 110
    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    .end local v12    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v13    # "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_1
    sget-object v18, Lcjk$a;->a:Lcjk;

    .line 115
    sget-object v19, Ldkz;->a:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v18

    check-cast v18, Ldkz;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ldkz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 116
    .local v11, "keyObjects":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ldlc$1;->a:Ldlc;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Ldlc;->a(Ldlc;Ljava/util/List;)V

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "corpId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldlc$1;->a:Ldlc;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ldlc;->a(Ldlc;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ldlc$1;->a:Ldlc;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ldlc;->a(Ldlc;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_2

    .line 120
    :cond_3
    invoke-static {}, Ldho;->a()Ldho;

    invoke-static {v4}, Ldho;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 121
    .local v14, "orgId":J
    const-wide/16 v20, 0x0

    cmp-long v18, v14, v20

    if-eqz v18, :cond_2

    .line 122
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Lccr;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v12

    .line 123
    .restart local v12    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v12, :cond_2

    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 124
    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 126
    .local v17, "value":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 127
    invoke-static/range {v17 .. v17}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 128
    .local v9, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v9, :cond_5

    .line 129
    const-string/jumbo v18, "encryption_list"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-class v20, Ldtw;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 130
    .local v10, "keyModelList":Ljava/util/List;, "Ljava/util/List<Ldtw;>;"
    if-eqz v10, :cond_4

    .line 131
    new-instance v8, Ldtf;

    invoke-direct {v8}, Ldtf;-><init>()V

    .line 132
    .local v8, "encryptionModel":Ldtf;
    iput-object v4, v8, Ldtf;->a:Ljava/lang/String;

    .line 133
    iput-object v10, v8, Ldtf;->b:Ljava/util/List;

    .line 134
    invoke-static {v8}, Ldlb;->a(Ldtf;)Ldlb;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v7, v0, Ldlb;->b:Ljava/util/List;

    .line 135
    .local v7, "encryptKeyObjectList":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ldlc$1;->a:Ldlc;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Ldlc;->a(Ldlc;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 143
    .end local v7    # "encryptKeyObjectList":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    .end local v8    # "encryptionModel":Ldtf;
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "keyModelList":Ljava/util/List;, "Ljava/util/List<Ldtw;>;"
    :catch_0
    move-exception v6

    .line 144
    .local v6, "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v18, "crypto"

    invoke-static {}, Ldlc;->c()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "initKey "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 137
    .end local v6    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "keyModelList":Ljava/util/List;, "Ljava/util/List<Ldtw;>;"
    :cond_4
    :try_start_1
    const-string/jumbo v18, "crypto"

    invoke-static {}, Ldlc;->c()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "initKey parse json keyModelList ret null"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 146
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "keyModelList":Ljava/util/List;, "Ljava/util/List<Ldtw;>;"
    :catch_1
    move-exception v6

    .line 147
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "crypto"

    invoke-static {}, Ldlc;->c()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "initKey"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 140
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    :try_start_2
    const-string/jumbo v18, "crypto"

    invoke-static {}, Ldlc;->c()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "initKey parse json jsonObject ret null"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 154
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v14    # "orgId":J
    .end local v17    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ldlc$1;->a:Ldlc;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Ldlc;->a(Ldlc;I)I

    .line 155
    return-void
.end method
