.class public final Legk;
.super Ljava/lang/Object;
.source "OALoadManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string/jumbo v11, "oa_load_model_key"

    invoke-static {v11}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "oaLoadModelString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40
    .local v3, "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :try_start_0
    const-class v11, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    invoke-static {v5, v11}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    if-eqz v3, :cond_2

    .line 49
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    const-string/jumbo v12, "fetch_oa_model_new_logic_enable"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 50
    iget-wide v6, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->orgId:J

    .line 51
    .local v6, "orgId":J
    iget v11, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 52
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v9

    .line 53
    .local v9, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v9, :cond_1

    iget-object v11, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    if-eqz v11, :cond_1

    iget-object v11, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 54
    iget-object v11, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 55
    .local v10, "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->isShortCutDisplay()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 56
    iget-object v12, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    if-eqz v12, :cond_0

    iget-object v12, v10, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    iget-object v13, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    iget-object v13, v13, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->value:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v4, v3

    .line 99
    .end local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .end local v6    # "orgId":J
    .end local v9    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v10    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    .local v4, "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :goto_1
    return-object v4

    .line 41
    .end local v4    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .restart local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "orgId":J
    .restart local v9    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    const/4 v3, 0x0

    .line 72
    .end local v6    # "orgId":J
    .end local v9    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    :goto_2
    if-nez v3, :cond_6

    .line 73
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v6

    .line 74
    .restart local v6    # "orgId":J
    const-string/jumbo v11, "oa"

    const-string/jumbo v12, "OALoadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "oaLoadModel is null in getLastOALoadModel & orgId="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-lez v11, :cond_6

    .line 77
    new-instance v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    .end local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    invoke-direct {v3}, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;-><init>()V

    .line 78
    .restart local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    iput-wide v6, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->orgId:J

    .line 79
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v9

    .line 80
    .restart local v9    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v9, :cond_5

    iget-object v11, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    if-eqz v11, :cond_5

    iget-object v11, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 81
    iget-object v11, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 82
    .restart local v10    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz v10, :cond_3

    iget-wide v12, v10, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->type:J

    const-wide/16 v14, 0x2

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->isShortCutDisplay()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 83
    const/4 v11, 0x2

    iput v11, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    .line 84
    iput-object v10, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 89
    .end local v10    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    :cond_4
    iget-object v11, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    if-nez v11, :cond_6

    .line 93
    :cond_5
    const/4 v11, 0x1

    iput v11, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    .line 97
    .end local v6    # "orgId":J
    .end local v9    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_6
    const-string/jumbo v12, "oa"

    const-string/jumbo v13, "OALoadManager"

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v15, "oaLoadModel in getLastOALoadModel & orgId="

    aput-object v15, v14, v11

    const/4 v15, 0x1

    if-eqz v3, :cond_9

    .line 98
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_3
    aput-object v11, v14, v15

    .line 97
    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 99
    .end local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .restart local v4    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    goto/16 :goto_1

    .line 63
    .end local v4    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .restart local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .restart local v6    # "orgId":J
    :cond_7
    iget v11, v3, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 64
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v8

    .line 65
    .local v8, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v4, v3

    .line 66
    .end local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .restart local v4    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    goto/16 :goto_1

    .line 68
    .end local v4    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .restart local v3    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 98
    .end local v6    # "orgId":J
    .end local v8    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_9
    const-string/jumbo v11, ""

    goto :goto_3
.end method

.method public static a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V
    .locals 10
    .param p0, "shortcutObject"    # Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 123
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, "OALoadManager"

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v3, "updateLastOALoadModel & shortcutObject= "

    aput-object v3, v6, v8

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v6, v9

    .line 123
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p0, :cond_0

    .line 126
    new-instance v1, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;-><init>()V

    .line 127
    .local v1, "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    iput v7, v1, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->oaType:I

    .line 128
    iput-object p0, v1, Lcom/alibaba/dingtalk/oabase/models/OALoadModel;->shortcutObject:Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 130
    :try_start_0
    invoke-static {v1}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "oaLoadModelString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const-string/jumbo v3, "oa_load_model_key"

    invoke-static {v3, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .end local v2    # "oaLoadModelString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 124
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0

    .line 134
    .restart local v1    # "oaLoadModel":Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "OALoadManager"

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "updateLastOALoadModel exception="

    aput-object v6, v5, v8

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 136
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
