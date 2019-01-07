.class public Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;
.super Lipd;
.source "H5SessionPlugin.java"


# static fields
.field private static final GET_SCENE_STACK_INFO:Ljava/lang/String; = "getSceneStackInfo"

.field public static final SHOW_NETWORK_CHECK_ACTIVITY:Ljava/lang/String; = "showNetWorkCheckActivity"

.field public static final TAG:Ljava/lang/String; = "H5SessionPlugin"


# instance fields
.field private SPACE_TIME:I

.field private enableAntiDuplicate4Tiny:Z

.field private h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private lastCallParam:Lcom/alibaba/fastjson/JSONObject;

.field private lastClickTime:J

.field private showFavorites:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .prologue
    .line 84
    invoke-direct {p0}, Lipd;-><init>()V

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->showFavorites:Ljava/lang/Boolean;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->lastClickTime:J

    .line 81
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->SPACE_TIME:I

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;IZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->doPopWindow(Lcom/alibaba/fastjson/JSONObject;IZZ)Z

    move-result v0

    return v0
.end method

.method private addRefererUrl(Ljava/lang/String;)Z
    .locals 7
    .param p1, "openUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v4

    .line 942
    :cond_1
    :try_start_0
    const-string/jumbo v5, "h5_documentRefererWhitelist"

    .line 943
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 944
    .local v0, "domainArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    .line 945
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 946
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "domainRegex":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 948
    const/4 v4, 0x1

    goto :goto_0

    .line 945
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 952
    .end local v0    # "domainArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "domainRegex":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 953
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5SessionPlugin"

    const-string/jumbo v6, "exception detail."

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doPopTo(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const v7, 0x7fffffff

    const/4 v4, 0x0

    .line 276
    .line 8121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 277
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const v0, 0x7fffffff

    .line 279
    .local v0, "index":I
    if-eqz v1, :cond_0

    const-string/jumbo v6, "index"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    const-string/jumbo v6, "index"

    invoke-static {v1, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 284
    :cond_0
    if-ne v0, v7, :cond_1

    .line 285
    const-string/jumbo v6, "url"

    invoke-static {v1, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->getUrlIndex(Ljava/lang/String;Z)I

    move-result v0

    .line 289
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    if-ne v0, v7, :cond_2

    .line 290
    const-string/jumbo v6, "urlPattern"

    invoke-static {v1, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "urlPattern":Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->getUrlIndex(Ljava/lang/String;Z)I

    move-result v0

    .line 295
    .end local v3    # "urlPattern":Ljava/lang/String;
    :cond_2
    if-ne v0, v7, :cond_4

    .line 296
    const-string/jumbo v5, "H5SessionPlugin"

    const-string/jumbo v6, "can\'t find page index"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_3
    :goto_0
    return v4

    :cond_4
    invoke-direct {p0, v1, v0, v4, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->doPopWindow(Lcom/alibaba/fastjson/JSONObject;IZZ)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    goto :goto_0
.end method

.method private doPopWindow(Lcom/alibaba/fastjson/JSONObject;IZZ)Z
    .locals 32
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "minIndex"    # I
    .param p3, "isPush"    # Z
    .param p4, "closeAllWindow"    # Z

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 745
    const/16 v29, 0x0

    .line 867
    :goto_0
    return v29

    .line 747
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v21

    .line 748
    .local v21, "sessionPages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    if-nez v21, :cond_1

    .line 749
    const/16 v29, 0x0

    goto :goto_0

    .line 753
    :cond_1
    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v22

    .line 754
    .local v22, "sessionPagesWithOutPrerender":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->size()I

    move-result v14

    .line 755
    .local v14, "listSize":I
    if-gez p2, :cond_2

    .line 756
    add-int v30, v14, p2

    if-eqz p3, :cond_5

    const/16 v29, 0x2

    :goto_1
    sub-int p2, v30, v29

    .line 758
    :cond_2
    if-ltz p2, :cond_3

    add-int/lit8 v29, v14, -0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 759
    :cond_3
    const-string/jumbo v29, "H5SessionPlugin"

    const-string/jumbo v30, "invalid page index"

    invoke-static/range {v29 .. v30}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Liop;

    .line 762
    .local v18, "page":Liop;
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v29

    if-eqz v29, :cond_4

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v29

    .line 763
    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 764
    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 765
    .local v4, "activity":Landroid/app/Activity;
    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Liop;Landroid/app/Activity;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 766
    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 769
    .end local v4    # "activity":Landroid/app/Activity;
    :cond_4
    const/16 v29, 0x1

    goto :goto_0

    .line 756
    .end local v18    # "page":Liop;
    :cond_5
    const/16 v29, 0x1

    goto :goto_1

    .line 773
    :cond_6
    const/4 v7, 0x0

    .line 774
    .local v7, "dataStr":Ljava/lang/String;
    const-string/jumbo v29, "data"

    new-instance v30, Ljava/lang/Object;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 775
    .local v17, "object":Ljava/lang/Object;
    if-eqz v17, :cond_7

    .line 777
    :try_start_0
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 778
    move-object/from16 v0, v17

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v13, v0

    .line 779
    .local v13, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 806
    .end local v13    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lioc;

    move-result-object v20

    .line 808
    .local v20, "sessionData":Lioc;
    const-string/jumbo v29, "h5_session_pop_param"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .end local v20    # "sessionData":Lioc;
    :cond_8
    if-eqz p3, :cond_11

    const/16 v29, 0x2

    :goto_3
    sub-int v16, v14, v29

    .line 818
    .local v16, "maxIndex":I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v27, "toPopList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/core/H5PageImpl;>;"
    if-nez p4, :cond_12

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v29

    if-eqz v29, :cond_9

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v26

    .line 824
    .local v26, "tabCount":I
    if-lez v26, :cond_9

    .line 825
    add-int/lit8 v29, p2, 0x1

    move/from16 v0, v29

    move/from16 v1, v26

    if-gt v0, v1, :cond_9

    .line 826
    add-int/lit8 p2, v26, -0x1

    .line 835
    .end local v26    # "tabCount":I
    :cond_9
    :goto_4
    add-int/lit8 v10, p2, 0x1

    .local v10, "index":I
    :goto_5
    move/from16 v0, v16

    if-gt v10, v0, :cond_13

    .line 836
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 837
    .local v18, "page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 780
    .end local v10    # "index":I
    .end local v16    # "maxIndex":I
    .end local v18    # "page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local v27    # "toPopList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/core/H5PageImpl;>;"
    :cond_a
    :try_start_1
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONArray;

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 781
    move-object/from16 v0, v17

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v12, v0

    .line 782
    .local v12, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v7

    .line 783
    goto :goto_2

    .end local v12    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_b
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 784
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    .line 785
    .local v24, "str":Ljava/lang/String;
    move-object/from16 v7, v24

    .line 786
    goto/16 :goto_2

    .end local v24    # "str":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 787
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    .line 788
    .local v6, "bool":Ljava/lang/Boolean;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 789
    goto/16 :goto_2

    .end local v6    # "bool":Ljava/lang/Boolean;
    :cond_d
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 790
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Double;

    move-object v8, v0

    .line 791
    .local v8, "doub":Ljava/lang/Double;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 792
    goto/16 :goto_2

    .end local v8    # "doub":Ljava/lang/Double;
    :cond_e
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 793
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    .line 794
    .local v15, "lon":Ljava/lang/Long;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 795
    goto/16 :goto_2

    .end local v15    # "lon":Ljava/lang/Long;
    :cond_f
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/math/BigDecimal;

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 796
    move-object/from16 v0, v17

    check-cast v0, Ljava/math/BigDecimal;

    move-object v5, v0

    .line 797
    .local v5, "bigDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .line 798
    goto/16 :goto_2

    .end local v5    # "bigDecimal":Ljava/math/BigDecimal;
    :cond_10
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v29, v0

    if-eqz v29, :cond_7

    .line 799
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    .line 800
    .local v11, "integer":Ljava/lang/Integer;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_2

    .line 802
    .end local v11    # "integer":Ljava/lang/Integer;
    :catch_0
    move-exception v25

    .line 803
    .local v25, "t":Ljava/lang/Throwable;
    const-string/jumbo v29, "H5SessionPlugin"

    const-string/jumbo v30, "catch exception "

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 815
    .end local v25    # "t":Ljava/lang/Throwable;
    :cond_11
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 831
    .restart local v16    # "maxIndex":I
    .restart local v27    # "toPopList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/core/H5PageImpl;>;"
    :cond_12
    const/16 p2, -0x1

    .line 832
    add-int/lit8 v16, v14, -0x2

    goto/16 :goto_4

    .line 841
    .restart local v10    # "index":I
    :cond_13
    if-eqz p4, :cond_15

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v9

    .line 843
    .local v9, "h5SessionTabManager":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    if-eqz v9, :cond_14

    .line 844
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 846
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v23

    .line 847
    .local v23, "sessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    if-eqz v23, :cond_15

    .line 848
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->setHasShowTab(Z)V

    .line 851
    .end local v9    # "h5SessionTabManager":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    .end local v23    # "sessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    :cond_15
    const/4 v10, 0x0

    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v10, v0, :cond_17

    .line 852
    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 853
    .restart local v18    # "page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    if-eqz p4, :cond_16

    .line 856
    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v19

    .line 857
    .local v19, "pageParams":Landroid/os/Bundle;
    const-string/jumbo v29, "fragmentType"

    const-string/jumbo v30, "normal"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 859
    .local v28, "type":Ljava/lang/String;
    const-string/jumbo v29, "subtab"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 860
    const-string/jumbo v29, "h5PageClose_tab"

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 851
    .end local v19    # "pageParams":Landroid/os/Bundle;
    .end local v28    # "type":Ljava/lang/String;
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 862
    :cond_16
    const-string/jumbo v29, "h5PageClose"

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_7

    .line 867
    .end local v18    # "page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method private exitSession()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitSession()Z

    .line 248
    return-void
.end method

.method private getSceneStackInfo(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 19
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 872
    const-string/jumbo v16, "H5SessionPlugin"

    const-string/jumbo v17, "getSceneStackInfo : h5session is null !"

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :goto_0
    return-void

    .line 11081
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 876
    .local v14, "target":Liob;
    instance-of v0, v14, Liop;

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 877
    const-string/jumbo v16, "H5SessionPlugin"

    const-string/jumbo v17, "getSceneStackInfo : invalid target!"

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v14

    .line 881
    check-cast v6, Liop;

    .line 883
    .local v6, "h5Page":Liop;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v8

    .line 884
    .local v8, "h5pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    if-nez v8, :cond_2

    .line 885
    const-string/jumbo v16, "H5SessionPlugin"

    const-string/jumbo v17, "getSceneStackInfo : H5Page Stack is null !"

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :cond_2
    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v13

    .line 890
    .local v13, "sessionPagesWithOutPrerender":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v2

    .line 891
    .local v2, "count":I
    invoke-virtual {v13, v6}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 893
    .local v3, "currentIndex":I
    const/4 v11, 0x0

    .line 894
    .local v11, "realTopPage":Liop;
    const-class v16, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 895
    .local v7, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v7, :cond_3

    .line 896
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Linw;

    move-result-object v5

    .line 897
    .local v5, "h5BaseFragment":Linw;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Linw;->getH5Page()Liop;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 898
    invoke-interface {v5}, Linw;->getH5Page()Liop;

    move-result-object v11

    .line 902
    .end local v5    # "h5BaseFragment":Linw;
    :cond_3
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 903
    .local v4, "detailArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v13}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Liop;

    .line 904
    .local v10, "page":Liop;
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 905
    .local v9, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v10}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 906
    .local v15, "url":Ljava/lang/String;
    const-string/jumbo v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    if-eqz v11, :cond_4

    invoke-interface {v11}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 908
    const-string/jumbo v17, "isTop"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    :goto_2
    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 910
    :cond_4
    const-string/jumbo v17, "isTop"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 915
    .end local v9    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "page":Liop;
    .end local v15    # "url":Ljava/lang/String;
    :cond_5
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 916
    .local v12, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v16, "count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string/jumbo v16, "currentIndex"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string/jumbo v16, "detail"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string/jumbo v16, "H5SessionPlugin"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "count = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " , currentIndex = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " detail :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0
.end method

.method private getSessionData(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lioc;

    move-result-object v5

    .line 5121
    .local v5, "sessionData":Lioc;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 207
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    if-nez v5, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string/jumbo v8, "keys"

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 211
    .local v1, "jaKeys":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 215
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 216
    .local v4, "resultData":Lcom/alibaba/fastjson/JSONObject;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 217
    .local v7, "values":Lcom/alibaba/fastjson/JSONObject;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 218
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v5, v2}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v7, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "data"

    invoke-virtual {v4, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {p2, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method

.method private getUrlIndex(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isRegular"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v9, 0x7fffffff

    .line 303
    const v1, 0x7fffffff

    .line 304
    .local v1, "index":I
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v6

    .line 305
    .local v6, "sessionPages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    if-nez v6, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v9

    .line 309
    :cond_1
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v7

    .line 310
    .local v7, "sessionPagesWithOutPrerender":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v7, :cond_0

    .line 311
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 314
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v8

    .line 315
    .local v8, "size":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    add-int/lit8 v9, v8, -0x1

    if-gt v0, v9, :cond_2

    .line 316
    invoke-virtual {v7, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liop;

    .line 317
    .local v3, "page":Liop;
    invoke-interface {v3}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "pageUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 322
    if-nez p2, :cond_3

    .line 323
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 324
    move v1, v0

    .end local v3    # "page":Liop;
    .end local v4    # "pageUrl":Ljava/lang/String;
    :cond_2
    :goto_2
    move v9, v1

    .line 339
    goto :goto_0

    .line 328
    .restart local v3    # "page":Liop;
    .restart local v4    # "pageUrl":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 329
    .local v5, "pattern":Ljava/util/regex/Pattern;
    if-eqz v5, :cond_4

    .line 332
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 333
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 334
    move v1, v0

    .line 335
    goto :goto_2

    .line 315
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initConfig()V
    .locals 5

    .prologue
    .line 90
    const-string/jumbo v2, "h5_pushWindowSpace"

    .line 91
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 93
    .local v1, "spaceTimeConfigObj":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string/jumbo v2, "spaceTime"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->SPACE_TIME:I

    .line 94
    const-string/jumbo v2, "enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->enableAntiDuplicate4Tiny:Z

    .line 95
    const-string/jumbo v2, "H5SessionPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "H5SessionPlugin get config SPACE_TIME "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->SPACE_TIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enableAntiDuplicate4Tiny "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->enableAntiDuplicate4Tiny:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5SessionPlugin"

    const-string/jumbo v3, "catch exception "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private logPushWindow(Lior;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pageData"    # Lior;
    .param p2, "param"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 959
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableRecordStartupParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lior;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private popTo(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->doPopTo(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v1

    .line 267
    .local v1, "succeed":Z
    if-nez v1, :cond_0

    .line 268
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 270
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "error"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-interface {p2, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 273
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private popWindow(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 251
    .line 7121
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 252
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    .line 253
    const-string/jumbo v5, "data"

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 254
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lioc;

    move-result-object v4

    .line 255
    .local v4, "sessionData":Lioc;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "dataStr":Ljava/lang/String;
    const-string/jumbo v5, "h5_session_pop_param"

    invoke-interface {v4, v5, v1}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "dataStr":Ljava/lang/String;
    .end local v4    # "sessionData":Lioc;
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Liop;

    move-result-object v2

    .line 260
    .local v2, "page":Liop;
    if-eqz v2, :cond_1

    .line 261
    const-string/jumbo v5, "h5PageClose"

    invoke-interface {v2, v5, v6}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 263
    :cond_1
    return-void
.end method

.method private pushWindow(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 48
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    .prologue
    .line 344
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v42

    if-eqz v42, :cond_0

    .line 345
    new-instance v42, Ljava/lang/StringBuilder;

    const-string/jumbo v43, "H5"

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 346
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v44, v44, v46

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 345
    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    sput-object v42, Lios;->e:Ljava/lang/String;

    .line 9121
    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 10081
    .local v8, "callParam":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v34, v0

    .line 351
    .local v34, "target":Liob;
    move-object/from16 v0, v34

    instance-of v0, v0, Liop;

    move/from16 v42, v0

    if-nez v42, :cond_2

    .line 352
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "invalid target!"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v18, v34

    .line 356
    check-cast v18, Liop;

    .line 357
    .local v18, "h5Page":Liop;
    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    .line 360
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v42, "isTinyApp"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 361
    const-string/jumbo v42, "url"

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "currentUrl":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->initConfig()V

    .line 364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->enableAntiDuplicate4Tiny:Z

    move/from16 v42, v0

    if-eqz v42, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->isFastClick()Z

    move-result v42

    if-eqz v42, :cond_3

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->lastCallParam:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v42, v0

    .line 365
    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 366
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in tinyapp pushWindow duplicated"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    if-eqz v8, :cond_4

    .line 370
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->lastCallParam:Lcom/alibaba/fastjson/JSONObject;

    .line 375
    :cond_4
    :goto_1
    sget-object v42, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 376
    const-string/jumbo v42, "refViewID"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    sput-object v42, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 382
    :cond_5
    :goto_2
    const-string/jumbo v42, "H5LoggerPlugins"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "push window , g5PageData : "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v18 .. v18}, Liop;->getPageData()Lior;

    move-result-object v44

    .line 383
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->hashCode()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " , public ReferUrl :  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 382
    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v42, "transparent"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_8

    const-string/jumbo v42, "fullscreen"

    const/16 v43, 0x0

    .line 387
    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    if-nez v42, :cond_8

    .line 388
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "can not pushwindow in a transparent window"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz p2, :cond_1

    .line 390
    const/16 v42, 0x2

    const-string/jumbo v43, "\u900f\u660e\u7a97\u53e3\u4e0d\u80fd\u4f7f\u7528pushWindow"

    move-object/from16 v0, p2

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v12    # "currentUrl":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v18 .. v18}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "currentUrl":Ljava/lang/String;
    goto :goto_1

    .line 377
    :cond_7
    sget-object v42, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_5

    .line 378
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v42

    if-eqz v42, :cond_5

    .line 379
    sput-object v12, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    goto :goto_2

    .line 396
    :cond_8
    if-eqz v18, :cond_9

    .line 397
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "sendToWeb page event pagePause"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-interface/range {v18 .. v18}, Liop;->getBridge()Linx;

    move-result-object v42

    const-string/jumbo v43, "pagePause"

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-interface/range {v42 .. v45}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 402
    :cond_9
    new-instance v26, Landroid/os/Bundle;

    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v26, "oldParams":Landroid/os/Bundle;
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 406
    const-string/jumbo v42, "h5_MergeParamBlankList"

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 407
    .local v40, "value":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_b

    .line 408
    invoke-static/range {v40 .. v40}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v20

    .line 409
    .local v20, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_b

    .line 410
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_a
    :goto_3
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_b

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 412
    .local v21, "key":Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v43, v0

    if-eqz v43, :cond_a

    .line 413
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    move-object/from16 v32, v0

    .line 414
    .local v32, "removeKey":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_a

    .line 415
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 416
    const-string/jumbo v43, "H5SessionPlugin"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string/jumbo v45, "remove "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " for h5_MergeParamBlankList"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 419
    .end local v32    # "removeKey":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 420
    .local v14, "e":Ljava/lang/Throwable;
    const-string/jumbo v43, "H5SessionPlugin"

    const-string/jumbo v44, "exception detail"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 426
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v20    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v21    # "key":Ljava/lang/Object;
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v15

    .line 427
    .local v15, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v15, :cond_c

    .line 428
    invoke-interface {v15}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getWebViewTag()Ljava/lang/String;

    move-result-object v33

    .line 429
    .local v33, "tag":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_c

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_c

    const-string/jumbo v42, "no"

    const-string/jumbo v43, "H5_removeWebViewTag"

    .line 430
    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_c

    .line 431
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 436
    .end local v33    # "tag":Ljava/lang/String;
    :cond_c
    const-string/jumbo v42, "preRpc"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_d

    .line 437
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete preRpc startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v42, "preRpc"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 442
    :cond_d
    const-string/jumbo v42, "navSearchBar_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_e

    .line 443
    const-string/jumbo v42, "navSearchBar_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 446
    :cond_e
    const-string/jumbo v42, "backgroundColor"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_f

    .line 447
    const-string/jumbo v42, "backgroundColor"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 451
    :cond_f
    const-string/jumbo v42, "transparentTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 452
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete transparentTitle startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v42, "transparentTitle"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 456
    :cond_10
    const-string/jumbo v42, "transparentTitleTextAuto"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 457
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete transparentTitleTextAuto startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v42, "transparentTitleTextAuto"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 462
    :cond_11
    const-string/jumbo v42, "titleImage"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_12

    .line 463
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete titleImage startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string/jumbo v42, "titleImage"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 467
    :cond_12
    const-string/jumbo v42, "bounceTopColor"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_13

    .line 468
    const-string/jumbo v42, "bounceTopColor"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 472
    :cond_13
    const-string/jumbo v42, "fragmentType"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_14

    .line 473
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete fragmentType startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v42, "fragmentType"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 477
    :cond_14
    const-string/jumbo v42, "createPageSence"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_15

    .line 478
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete createPageSence startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v42, "createPageSence"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 482
    :cond_15
    const-string/jumbo v42, "pullRefreshStyle"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_16

    .line 483
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "in H5SessionPlugin delete pullRefreshStyle startparam"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string/jumbo v42, "pullRefreshStyle"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 488
    :cond_16
    const-string/jumbo v42, "isTinyApp"

    const/16 v43, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_17

    const-string/jumbo v42, "no"

    const-string/jumbo v43, "h5_handlerOnPushWindowParam"

    .line 489
    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_17

    .line 490
    const-class v42, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 491
    .local v19, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    if-eqz v19, :cond_17

    .line 493
    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnPushWindowParam(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    .end local v19    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_17
    :goto_4
    const-string/jumbo v42, "param"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v28

    .line 503
    .local v28, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v42, "titleBarColor"

    move-object/from16 v0, v42

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v36

    .line 504
    .local v36, "titleBarColor":I
    const-string/jumbo v42, "closeCurrentWindow"

    const/16 v43, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v10

    .line 506
    .local v10, "closeCurrentWindow":Z
    const-string/jumbo v42, "closeAllWindow"

    const/16 v43, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    .line 507
    .local v9, "closeAllWindow":Z
    const-string/jumbo v43, "popToIndex"

    if-eqz v9, :cond_19

    const/16 v42, 0x0

    .line 508
    :goto_5
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v29

    .line 509
    .local v29, "popToIndex":I
    const/16 v42, -0x1

    move/from16 v0, v36

    move/from16 v1, v42

    if-ne v0, v1, :cond_18

    .line 510
    const/high16 v42, -0x1000000

    or-int v36, v36, v42

    .line 511
    const-string/jumbo v42, "titleBarColor"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_18
    if-eqz v28, :cond_1b

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_1b

    .line 522
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v25, "newParams":Landroid/os/Bundle;
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    .line 524
    const/16 v42, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v25

    .line 525
    invoke-virtual/range {v25 .. v25}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22

    .line 527
    .local v22, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_6
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_1a

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 528
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_6

    .line 494
    .end local v9    # "closeAllWindow":Z
    .end local v10    # "closeCurrentWindow":Z
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "newParams":Landroid/os/Bundle;
    .end local v28    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "popToIndex":I
    .end local v36    # "titleBarColor":I
    .restart local v19    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :catch_1
    move-exception v35

    .line 495
    .local v35, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v42, "H5SessionPlugin"

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 507
    .end local v19    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .end local v35    # "throwable":Ljava/lang/Throwable;
    .restart local v9    # "closeAllWindow":Z
    .restart local v10    # "closeCurrentWindow":Z
    .restart local v28    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "titleBarColor":I
    :cond_19
    const/high16 v42, -0x80000000

    goto :goto_5

    .line 530
    .restart local v22    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25    # "newParams":Landroid/os/Bundle;
    .restart local v29    # "popToIndex":I
    :cond_1a
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 533
    .end local v22    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "newParams":Landroid/os/Bundle;
    :cond_1b
    const-string/jumbo v42, "showFavorites"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->showFavorites:Ljava/lang/Boolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    const-string/jumbo v42, "url"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 536
    .local v38, "url":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 537
    const-string/jumbo v42, "H5SessionPlugin"

    const-string/jumbo v43, "can\'t get url parameter!"

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :cond_1c
    const-string/jumbo v42, "#"

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_25

    .line 541
    const/16 v42, 0x23

    move/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 542
    .local v5, "anchorIndex":I
    const/16 v42, -0x1

    move/from16 v0, v42

    if-eq v5, v0, :cond_1d

    .line 543
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v12, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "afterUrl":Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 545
    const-string/jumbo v42, "H5SessionPlugin"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "stripAnchor url:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v4    # "afterUrl":Ljava/lang/String;
    .end local v5    # "anchorIndex":I
    :cond_1d
    :goto_7
    const-string/jumbo v42, "H5SessionPlugin"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "pushWindow url "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string/jumbo v42, "url"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->addRefererUrl(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1e

    .line 555
    const-string/jumbo v42, "Referer"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_1e
    const-string/jumbo v42, "launchParamsTag"

    move-object/from16 v0, v42

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 559
    .local v23, "launchParamsTag":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_1f

    .line 560
    const-string/jumbo v42, "appId"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v24

    .line 563
    .local v24, "launcher":Landroid/os/Bundle;
    if-eqz v24, :cond_1f

    invoke-virtual/range {v24 .. v24}, Landroid/os/Bundle;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_1f

    .line 564
    const-string/jumbo v42, "H5SessionPlugin"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "launcher "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 569
    .end local v6    # "appId":Ljava/lang/String;
    .end local v24    # "launcher":Landroid/os/Bundle;
    :cond_1f
    const-string/jumbo v42, "H5SessionPlugin"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 571
    const/16 v42, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 572
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v42

    if-eqz v42, :cond_1

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v42

    .line 573
    invoke-virtual/range {v42 .. v42}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v42

    if-eqz v42, :cond_1

    .line 578
    const-string/jumbo v42, "fromType"

    const-string/jumbo v43, "pushWindow"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableRecordStartupParams()Z

    move-result v42

    if-eqz v42, :cond_20

    .line 582
    invoke-interface/range {v18 .. v18}, Liop;->getPageData()Lior;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->logPushWindow(Lior;Landroid/os/Bundle;)V

    .line 585
    :cond_20
    const-string/jumbo v42, "H5SessionPlugin"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "in H5SessionPlugin, oldParams is "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v42

    const-class v43, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 587
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 588
    .local v30, "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    if-eqz v30, :cond_21

    .line 589
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->setStartParams(Landroid/os/Bundle;)V

    .line 590
    invoke-interface/range {v30 .. v30}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->preRpc()V

    .line 593
    :cond_21
    const/4 v11, 0x0

    .line 594
    .local v11, "count":I
    const-string/jumbo v42, "transparent"

    const/16 v43, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    if-nez v42, :cond_22

    const-string/jumbo v42, "YES"

    const-string/jumbo v43, "transparent"

    const-string/jumbo v44, "NO"

    .line 596
    move-object/from16 v0, v26

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_26

    .line 597
    :cond_22
    new-instance v31, Landroid/content/Intent;

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v42

    .line 598
    invoke-virtual/range {v42 .. v42}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v42

    const-class v43, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .local v31, "pushIntent":Landroid/content/Intent;
    const-string/jumbo v42, "transparent"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v42, "transparent"

    const/16 v43, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    const-string/jumbo v42, "showLoadingView"

    const/16 v43, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 602
    const-string/jumbo v42, "asyncIndex"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_23

    .line 603
    const-string/jumbo v42, "asyncIndex"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 605
    :cond_23
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 606
    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 608
    const-string/jumbo v42, "transAnimate"

    const/16 v43, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    if-eqz v42, :cond_24

    .line 609
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFadingStart()V

    .line 611
    :cond_24
    if-eqz v10, :cond_1

    .line 612
    const-string/jumbo v42, "h5PageClose"

    const/16 v43, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 548
    .end local v11    # "count":I
    .end local v23    # "launchParamsTag":Ljava/lang/String;
    .end local v30    # "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    .end local v31    # "pushIntent":Landroid/content/Intent;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getParams()Landroid/os/Bundle;

    move-result-object v42

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-static {v12, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_7

    .line 617
    .restart local v11    # "count":I
    .restart local v23    # "launchParamsTag":Ljava/lang/String;
    .restart local v30    # "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    :cond_26
    invoke-static/range {v26 .. v26}, Lcom/alipay/mobile/nebulacore/Nebula;->isDelayRender(Landroid/os/Bundle;)Z

    move-result v13

    .line 618
    .local v13, "delayRender":Z
    const-string/jumbo v42, "delayRender"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    if-eqz v13, :cond_27

    .line 620
    new-instance v31, Landroid/content/Intent;

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v42

    const-class v43, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .restart local v31    # "pushIntent":Landroid/content/Intent;
    const-string/jumbo v42, "delayRender"

    const/16 v43, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 624
    if-eqz v10, :cond_1

    .line 625
    const-string/jumbo v42, "h5PageClose"

    const/16 v43, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 629
    .end local v31    # "pushIntent":Landroid/content/Intent;
    :cond_27
    sget-boolean v42, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v42, :cond_28

    .line 630
    const-string/jumbo v42, "pageLoad|pushWindowPoint"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v42

    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move/from16 v42, v0

    if-eqz v42, :cond_2c

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v42

    check-cast v42, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual/range {v42 .. v42}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v17

    .line 660
    .local v17, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getEnableTranslateAnimForVIP()Z

    move-result v42

    if-eqz v42, :cond_2b

    .line 661
    const/16 v42, 0x1

    const/16 v43, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 666
    :goto_8
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v11

    .line 674
    .end local v17    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :goto_9
    if-eqz v10, :cond_29

    .line 675
    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v27

    .line 676
    .local v27, "pageParams":Landroid/os/Bundle;
    const-string/jumbo v42, "fragmentType"

    const-string/jumbo v43, "normal"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 678
    .local v37, "type":Ljava/lang/String;
    const-string/jumbo v42, "subtab"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_2d

    .line 680
    new-instance v42, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)V

    const-wide/16 v44, 0x1f4

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 720
    .end local v27    # "pageParams":Landroid/os/Bundle;
    .end local v37    # "type":Ljava/lang/String;
    :cond_29
    :goto_a
    const-string/jumbo v42, "H5SessionPlugin"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string/jumbo v44, "count:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    sget-boolean v42, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v42, :cond_2a

    const/16 v42, 0x5

    move/from16 v0, v42

    if-lt v11, v0, :cond_2a

    .line 722
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    sget v44, Lcom/alipay/mobile/nebula/R$string;->h5_sessionwarningpart1:I

    invoke-virtual/range {v43 .. v44}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 724
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    sget v44, Lcom/alipay/mobile/nebula/R$string;->h5_sessionwarningpart2:I

    .line 725
    invoke-virtual/range {v43 .. v44}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 726
    .local v41, "warning":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v42

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 729
    .end local v41    # "warning":Ljava/lang/String;
    :cond_2a
    const/high16 v42, -0x80000000

    move/from16 v0, v29

    move/from16 v1, v42

    if-eq v0, v1, :cond_1

    .line 733
    new-instance v42, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;IZ)V

    const-wide/16 v44, 0x1f4

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 663
    .restart local v17    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_2b
    const-string/jumbo v42, "pushWindowWithTransAnim"

    const/16 v43, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    .line 664
    .local v39, "useTranslateAnim":Ljava/lang/Boolean;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getEnableTranslateAnimForUser()Z

    move-result v42

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    goto/16 :goto_8

    .line 669
    .end local v17    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .end local v39    # "useTranslateAnim":Ljava/lang/Boolean;
    :cond_2c
    new-instance v16, Linz;

    invoke-direct/range {v16 .. v16}, Linz;-><init>()V

    .line 11043
    .local v16, "h5Bundle":Linz;
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Linz;->b:Landroid/os/Bundle;

    .line 671
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v42

    .line 672
    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v43

    .line 671
    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Z

    goto/16 :goto_9

    .line 709
    .end local v16    # "h5Bundle":Linz;
    .restart local v27    # "pageParams":Landroid/os/Bundle;
    .restart local v37    # "type":Ljava/lang/String;
    :cond_2d
    new-instance v42, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Liop;)V

    const-wide/16 v44, 0x1f4

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_a
.end method

.method private setSessionData(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lioc;

    move-result-object v4

    .line 6121
    .local v4, "sessionData":Lioc;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 229
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 244
    :cond_0
    return-void

    .line 233
    :cond_1
    const-string/jumbo v6, "data"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 234
    .local v0, "joData":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 239
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v1, v5}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 14
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    .line 2065
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 136
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v2, "setSessionData"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->setSessionData(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 138
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 200
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 139
    :cond_1
    const-string/jumbo v2, "getSessionData"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->getSessionData(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string/jumbo v2, "exitSession"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->exitSession()V

    goto :goto_0

    .line 143
    :cond_3
    const-string/jumbo v2, "popTo"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->popTo(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 145
    :cond_4
    const-string/jumbo v2, "popWindow"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->popWindow(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 147
    :cond_5
    const-string/jumbo v2, "pushWindow"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 148
    const-string/jumbo v3, "url"

    const/4 v13, 0x0

    invoke-static {v2, v3, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 150
    const-string/jumbo v3, "u"

    const/4 v13, 0x0

    invoke-static {v2, v3, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 153
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 154
    .local v9, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v9, :cond_7

    const/4 v2, 0x0

    const-string/jumbo v3, "pushWindow"

    invoke-interface {v9, v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 155
    const-string/jumbo v2, "H5SessionPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "stripLandingURL&Deeplink url "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, " bingo deeplink"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 158
    :cond_7
    const-string/jumbo v2, "pushWindowNormal"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 159
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "realUrl":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 161
    if-eqz v9, :cond_9

    .line 162
    const/4 v2, 0x0

    const-string/jumbo v3, "pushWindow"

    invoke-interface {v9, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 163
    .local v12, "result":Z
    const/4 v4, 0x0

    .line 164
    .local v4, "appId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 165
    .local v5, "publicId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 166
    .local v6, "bizScenario":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 167
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "appId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "publicId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "bizScenario"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    :cond_8
    const/4 v2, 0x1

    const-string/jumbo v3, "pushWindowNormal"

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v12, :cond_9

    .line 173
    const-string/jumbo v2, "H5SessionPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "stripLandingURL&Deeplink url "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, " bingo deeplink in landing"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 180
    .end local v1    # "realUrl":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "publicId":Ljava/lang/String;
    .end local v6    # "bizScenario":Ljava/lang/String;
    .end local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v12    # "result":Z
    :cond_9
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->pushWindow(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto/16 :goto_0

    .line 181
    .end local v0    # "url":Ljava/lang/String;
    :cond_a
    const-string/jumbo v2, "showNetWorkCheckActivity"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 182
    new-instance v10, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4121
    .local v10, "intent":Landroid/content/Intent;
    iget-object v11, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 184
    .local v11, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_b

    .line 185
    const-string/jumbo v2, "error_code"

    const-string/jumbo v3, "error_code"

    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v2, "url"

    const-string/jumbo v3, "url"

    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "reason"

    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :cond_b
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v2

    .line 192
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 193
    const/4 v3, 0x0

    .line 191
    invoke-virtual {v2, v3, v10}, Lcom/alipay/mobile/framework/c;->a(Linn;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v8

    .line 195
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5SessionPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "showNetWorkCheckActivity, "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_c
    const-string/jumbo v2, "getSceneStackInfo"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->getSceneStackInfo(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 124
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->showFavorites:Ljava/lang/Boolean;

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 126
    :cond_1
    const-string/jumbo v1, "hideFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->showFavorites:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public declared-synchronized isFastClick()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 925
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 927
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->lastClickTime:J

    sub-long v4, v0, v4

    iget v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->SPACE_TIME:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 929
    const/4 v2, 0x0

    .line 933
    .local v2, "isFastClick":Z
    :goto_0
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    monitor-exit p0

    return v2

    .line 931
    .end local v2    # "isFastClick":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "isFastClick":Z
    goto :goto_0

    .line 925
    .end local v0    # "currentTime":J
    .end local v2    # "isFastClick":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 109
    const-string/jumbo v0, "getSessionData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "setSessionData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "exitSession"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "popWindow"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "popTo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "showFavorites"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "hideFavorites"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "showNetWorkCheckActivity"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "getSceneStackInfo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 105
    return-void
.end method
