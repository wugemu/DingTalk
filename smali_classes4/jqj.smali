.class public final Ljqj;
.super Ljava/lang/Object;
.source "ManifestInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljqj$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static a(Lcom/taobao/windmill/bundle/container/core/AppConfigModel;)Ljqj$a;
    .locals 29
    .param p0, "data"    # Lcom/taobao/windmill/bundle/container/core/AppConfigModel;

    .prologue
    .line 20
    :try_start_0
    new-instance v22, Ljqj$a;

    invoke-direct/range {v22 .. v22}, Ljqj$a;-><init>()V

    .line 22
    .local v22, "result":Ljqj$a;
    if-eqz p0, :cond_f

    .line 24
    new-instance v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    invoke-direct {v12}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;-><init>()V

    .line 26
    .local v12, "manifest":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 28
    .local v4, "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    iput-object v4, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->defaultWindow:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 30
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->pages:Ljava/util/List;

    .line 37
    .local v14, "page":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;>;"
    if-eqz v14, :cond_3

    .line 39
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;

    .line 40
    .local v15, "pageInfo":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->pageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 42
    .local v17, "pageName":Ljava/lang/String;
    const-string/jumbo v26, "webview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->appType:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 43
    sget-object v19, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEB:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    .line 47
    .local v19, "pageType":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    :goto_1
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->pageUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 49
    .local v20, "pageUrl":Ljava/lang/String;
    new-instance v16, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;-><init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v16, "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 51
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;->android:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->h5Url:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->setDowngrade(Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;Ljava/lang/String;)V

    .line 56
    :goto_2
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    move-object/from16 v26, v0

    :goto_3
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 58
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    .end local v12    # "manifest":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    .end local v14    # "page":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;>;"
    .end local v15    # "pageInfo":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    .end local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .end local v17    # "pageName":Ljava/lang/String;
    .end local v19    # "pageType":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .end local v20    # "pageUrl":Ljava/lang/String;
    .end local v22    # "result":Ljqj$a;
    :catch_0
    move-exception v5

    .line 140
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "ManifestInitializer"

    const-string/jumbo v27, "loadAppConfig"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v5}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    new-instance v22, Ljqj$a;

    invoke-direct/range {v22 .. v22}, Ljqj$a;-><init>()V

    .line 142
    .restart local v22    # "result":Ljqj$a;
    sget-object v26, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CONFIG:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Ljqj$a;->b:Ljava/lang/String;

    .line 143
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Ljqj$a;->c:Ljava/lang/String;

    .line 144
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v22

    .line 45
    .restart local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    .restart local v12    # "manifest":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    .restart local v14    # "page":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;>;"
    .restart local v15    # "pageInfo":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    .restart local v17    # "pageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v19, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEEX:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    .restart local v19    # "pageType":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    goto :goto_1

    .line 53
    .restart local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .restart local v20    # "pageUrl":Ljava/lang/String;
    :cond_1
    const/16 v26, 0x0

    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->h5Url:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->setDowngrade(Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v26, v4

    .line 56
    goto :goto_3

    .line 62
    .end local v15    # "pageInfo":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    .end local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .end local v17    # "pageName":Ljava/lang/String;
    .end local v19    # "pageType":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .end local v20    # "pageUrl":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->h5Pages:Ljava/util/List;

    .line 63
    .local v9, "h5Pages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    .line 64
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 65
    .local v8, "h5PageUrl":Ljava/lang/String;
    invoke-static {v8}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 66
    .restart local v17    # "pageName":Ljava/lang/String;
    new-instance v16, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    sget-object v27, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->H5:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;-><init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .restart local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 68
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 72
    .end local v8    # "h5PageUrl":Ljava/lang/String;
    .end local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .end local v17    # "pageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->list:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->list:Ljava/util/List;

    move-object/from16 v26, v0

    .line 73
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_8

    .line 74
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v24, "tabItemModelList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->list:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    const/4 v13, 0x5

    .line 81
    .local v13, "maxSize":I
    :goto_6
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    if-ge v10, v13, :cond_7

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->list:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;

    .line 84
    .local v11, "itemModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;
    iget-object v0, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;->pageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 85
    .local v18, "pageNameWithoutQuery":Ljava/lang/String;
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .line 87
    .local v21, "pm":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    if-nez v21, :cond_6

    .line 88
    add-int/lit8 v13, v13, 0x1

    .line 81
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 79
    .end local v10    # "i":I
    .end local v11    # "itemModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;
    .end local v13    # "maxSize":I
    .end local v18    # "pageNameWithoutQuery":Ljava/lang/String;
    .end local v21    # "pm":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;->list:Ljava/util/List;

    move-object/from16 v26, v0

    .line 80
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_6

    .line 92
    .restart local v10    # "i":I
    .restart local v11    # "itemModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;
    .restart local v13    # "maxSize":I
    .restart local v18    # "pageNameWithoutQuery":Ljava/lang/String;
    .restart local v21    # "pm":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    :cond_6
    new-instance v23, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;->pageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;-><init>(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;)V

    .line 94
    .local v23, "tabItemModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 96
    .end local v11    # "itemModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;
    .end local v18    # "pageNameWithoutQuery":Ljava/lang/String;
    .end local v21    # "pm":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .end local v23    # "tabItemModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;
    :cond_7
    new-instance v25, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;-><init>(Ljava/util/List;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;)V

    .line 98
    .local v25, "tabPageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;
    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 99
    move-object/from16 v0, v25

    iput-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    .line 101
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string/jumbo v27, "homePage"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    .end local v10    # "i":I
    .end local v13    # "maxSize":I
    .end local v24    # "tabItemModelList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;>;"
    .end local v25    # "tabPageModel":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;
    :goto_9
    move-object/from16 v0, v22

    iput-object v12, v0, Ljqj$a;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    goto/16 :goto_4

    .line 103
    .restart local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    :cond_8
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 104
    :cond_9
    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 105
    :cond_a
    sget-object v26, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CONFIG:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Ljqj$a;->b:Ljava/lang/String;

    .line 106
    sget-object v26, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CONFIG:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Ljqj$a;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 109
    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 110
    .local v7, "firstPageName":Ljava/lang/String;
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    .line 111
    invoke-static {v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .line 112
    .local v6, "firstPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    iput-object v4, v6, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 113
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string/jumbo v27, "homePage"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 115
    .end local v6    # "firstPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .end local v7    # "firstPageName":Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;

    .line 117
    .restart local v15    # "pageInfo":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->pageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 118
    invoke-static/range {v27 .. v27}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .line 119
    .restart local v6    # "firstPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 120
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;->android:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->h5Url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->setDowngrade(Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;Ljava/lang/String;)V

    .line 125
    :goto_a
    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    iget-object v4, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .end local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    :cond_d
    iput-object v4, v6, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 127
    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string/jumbo v27, "homePage"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 123
    .restart local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    :cond_e
    const/16 v26, 0x0

    iget-object v0, v15, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;->h5Url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->setDowngrade(Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;Ljava/lang/String;)V

    goto :goto_a

    .line 135
    .end local v4    # "defaultWindow":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    .end local v6    # "firstPage":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    .end local v9    # "h5Pages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "manifest":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
    .end local v14    # "page":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;>;"
    .end local v15    # "pageInfo":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    :cond_f
    sget-object v26, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Ljqj$a;->b:Ljava/lang/String;

    .line 136
    sget-object v26, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Ljqj$a;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
