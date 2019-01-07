.class public final Legj;
.super Ljava/lang/Object;
.source "NewRetailUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Z
    .locals 10
    .param p0, "orgId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1203
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v6, :cond_0

    .line 1208
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v6, "dt_function"

    const-string/jumbo v7, "v430_new_retail_enable"

    .line 1209
    invoke-interface {v3, v6, v7}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v3

    .line 1210
    if-eqz v3, :cond_0

    .line 1211
    invoke-interface {v3}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1212
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const-string/jumbo v7, "value in enableNewRetail : "

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 1213
    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1214
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "NewRetailUtil"

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v6, "disable"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 78
    :goto_0
    if-nez v3, :cond_1

    move v3, v4

    .line 93
    :goto_1
    return v3

    :cond_0
    move v3, v5

    .line 1220
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 83
    .local v0, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v0, :cond_3

    .line 84
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    .line 85
    .local v2, "shortcutObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 87
    .local v1, "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->isNewWorkTabShow()Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    .line 88
    goto :goto_1

    .end local v1    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    .end local v2    # "shortcutObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;>;"
    :cond_3
    move v3, v4

    .line 93
    goto :goto_1
.end method

.method public static b(J)Ljava/util/List;
    .locals 10
    .param p0, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/NewRetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, "newRetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/NewRetailObject;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v4

    .line 127
    .local v4, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_1

    .line 128
    iget-object v6, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    .line 129
    .local v6, "shortcutObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 130
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 131
    .local v5, "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->isNewWorkTabShow()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    new-instance v2, Lcom/alibaba/android/oa/model/NewRetailObject;

    invoke-direct {v2}, Lcom/alibaba/android/oa/model/NewRetailObject;-><init>()V

    .line 133
    .local v2, "newRetailObject":Lcom/alibaba/android/oa/model/NewRetailObject;
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getNewWorkTabName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/android/oa/model/NewRetailObject;->setTitle(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getNewWorkTabJumpUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/android/oa/model/NewRetailObject;->setUrl(Ljava/lang/String;)V

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/alibaba/android/oa/model/NewRetailObject;->setType(I)V

    .line 136
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/alibaba/android/oa/model/NewRetailObject;->setCustom(Z)V

    .line 137
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v2    # "newRetailObject":Lcom/alibaba/android/oa/model/NewRetailObject;
    .end local v5    # "shortcutObject":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    .end local v6    # "shortcutObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;>;"
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, "newRetailModels: "

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 144
    invoke-static {v3}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "description":Ljava/lang/String;
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "NewRetailUtil"

    invoke-static {v7, v8, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "description":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
