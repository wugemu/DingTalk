.class final Leiq$1;
.super Ljava/lang/Object;
.source "OAConfigHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leiq;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 294
    invoke-static {}, Leen;->b()Leen;

    move-result-object v3

    .line 295
    .local v3, "oaXmlLocalDataAccessor":Leen;
    invoke-virtual {v3}, Leen;->a()Ljava/util/List;

    move-result-object v5

    .line 296
    .local v5, "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-nez v5, :cond_0

    .line 297
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .restart local v5    # "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1048
    invoke-static {v8, v8}, Leiq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v4

    .line 303
    .local v4, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_1

    .line 304
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_6

    .line 351
    .end local v4    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    :goto_0
    return-void

    .line 313
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "default_home_page"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-static {v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "homepage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 319
    const-string/jumbo v6, "9223372036854775807"

    .line 320
    .local v6, "virtualOrgKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 321
    .local v1, "isChanged":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 322
    .restart local v4    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_4

    iget-object v8, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 326
    const/4 v1, 0x1

    .line 327
    iput-object v0, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->oaHomePage:Ljava/lang/String;

    .line 332
    .end local v4    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_5
    if-eqz v1, :cond_2

    .line 338
    .end local v0    # "homepage":Ljava/lang/String;
    .end local v1    # "isChanged":Z
    .end local v6    # "virtualOrgKey":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v5}, Leen;->a(Ljava/util/List;)V

    .line 341
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v8, "csconfig_update_miniapp_info"

    invoke-virtual {v7, v8, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 342
    invoke-static {}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateAllMicroAppsOpenType()V

    .line 343
    invoke-static {}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateAllMiniAppBizType()V

    .line 346
    :cond_7
    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    .line 347
    .local v2, "oaDatasource":Leek;
    invoke-interface {v2, v12}, Leek;->a(Z)V

    .line 348
    invoke-interface {v2}, Leek;->a()Ljava/util/List;

    .line 349
    invoke-interface {v2}, Leek;->e()Z

    .line 350
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.workapp.org.sync"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
