.class public Ljqr;
.super Ljava/lang/Object;
.source "WMLRouter.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Ljqo;

.field public b:Ljqp;

.field public c:Z

.field private e:Landroid/app/Activity;

.field private f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Ljqr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljqr;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "manifest"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljqr;->e:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .line 49
    new-instance v0, Ljqp;

    invoke-direct {v0}, Ljqp;-><init>()V

    iput-object v0, p0, Ljqr;->b:Ljqp;

    .line 50
    new-instance v0, Ljqo;

    iget-object v1, p0, Ljqr;->b:Ljqp;

    invoke-direct {v0, v1, p1, p2}, Ljqo;-><init>(Ljqp;Landroid/support/v4/app/FragmentActivity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    iput-object v0, p0, Ljqr;->a:Ljqo;

    .line 51
    return-void
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 226
    iget-object v3, p0, Ljqr;->a:Ljqo;

    invoke-virtual {v3}, Ljqo;->c()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->f()Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 228
    iget-object v3, p0, Ljqr;->a:Ljqo;

    invoke-virtual {v3}, Ljqo;->c()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 229
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 230
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 234
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 236
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    iget-object v3, p0, Ljqr;->b:Ljqp;

    .line 4091
    iget-object v3, v3, Ljqp;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 238
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "startedPath"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v13, 0x1

    .line 1054
    .local v13, "isSuccess":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    .line 1056
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    .line 71
    :goto_0
    if-eqz v2, :cond_d

    .line 72
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v8, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "key_page_tab_model"

    move-object/from16 v0, p0

    iget-object v3, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    const-string/jumbo v2, "key_page_window_model"

    move-object/from16 v0, p0

    iget-object v3, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->defaultWindow:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    const-string/jumbo v2, "key_page_tab_query"

    move-object/from16 v0, p2

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "_wml_from_share=true"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "keyPageFromShare"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->tabPageModel:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->isPathInTabs(Ljava/lang/String;)I

    move-result v11

    .line 81
    .local v11, "index":I
    if-ltz v11, :cond_b

    .line 82
    const-string/jumbo v2, "key_page_tab_start_index"

    move-object/from16 v0, p1

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/16 p1, 0x0

    .line 106
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljqr;->c:Z

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    const-class v3, Lcom/taobao/windmill/bundle/container/router/fragment/WMLTabFragment;

    .line 109
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v2, v3, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v15

    .line 110
    .local v15, "page":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 1163
    const/4 v2, 0x3

    sget-object v4, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v5, "SUCCESS_TAB"

    const-string/jumbo v6, ""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string/jumbo v21, "url"

    aput-object v21, v7, v20

    const/16 v20, 0x1

    aput-object p1, v7, v20

    invoke-static/range {v2 .. v7}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v11    # "index":I
    :cond_2
    :goto_1
    instance-of v2, v15, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v2, :cond_3

    move-object v12, v15

    .line 200
    check-cast v12, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .line 201
    .local v12, "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    invoke-virtual {v12, v2}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a(Landroid/app/Activity;)V

    .line 204
    .end local v12    # "ipf":Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->a:Ljqo;

    invoke-virtual {v2}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 205
    invoke-direct/range {p0 .. p0}, Ljqr;->b()V

    .line 208
    :cond_4
    if-eqz v13, :cond_8

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    .line 2228
    invoke-static {}, Ljre;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2231
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2232
    const-string/jumbo v4, "wml-id"

    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2234
    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_5

    .line 2235
    const-string/jumbo v4, "wml-version"

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    const-string/jumbo v4, "wml-template-id"

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    :cond_5
    const-string/jumbo v2, "windmill"

    const-string/jumbo v4, "launcher"

    const-string/jumbo v5, "wml_success"

    const-string/jumbo v6, ""

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v5, v6, v3}, Ljre$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljqr;->e:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    .line 3098
    invoke-static {}, Ljre;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 3099
    if-eqz v3, :cond_8

    .line 3100
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3101
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3102
    const-string/jumbo v6, "wml-id"

    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3104
    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v6, :cond_7

    .line 3105
    const-string/jumbo v6, "wml-version"

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    const-string/jumbo v6, "wml-template-id"

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3109
    :cond_7
    const-string/jumbo v2, "time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    const-string/jumbo v2, "windmill"

    const-string/jumbo v3, "render"

    invoke-static {v2, v3, v4, v5}, Ljre$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->b:Ljqp;

    const-string/jumbo v3, "homePage"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljqp;->a(Ljava/lang/String;Ljqn;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->a:Ljqo;

    invoke-virtual {v2}, Ljqo;->c()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 216
    .local v10, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Ljrg$a;->wml_fade_in:I

    sget v3, Ljrg$a;->wml_fade_out:I

    sget v4, Ljrg$a;->wml_push_right_in:I

    sget v5, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    sget v2, Ljrg$b;->tab_page_container:I

    const-string/jumbo v3, "0"

    invoke-virtual {v10, v2, v15, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 220
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->a:Ljqo;

    invoke-virtual {v2, v15}, Ljqo;->a(Landroid/support/v4/app/Fragment;)V

    .line 223
    .end local v10    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v15    # "page":Landroid/support/v4/app/Fragment;
    :cond_9
    :goto_2
    return-void

    .line 1056
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 85
    .restart local v8    # "args":Landroid/os/Bundle;
    .restart local v11    # "index":I
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljqr;->c:Z

    .line 87
    move-object/from16 v17, p1

    .line 88
    .local v17, "pageName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 95
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 96
    .local v19, "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 97
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 99
    .end local v19    # "uri":Landroid/net/Uri;
    :cond_c
    sget-object v2, Lcom/taobao/windmill/bundle/container/router/AnimType;->POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Ljqr;->a(Lcom/taobao/windmill/bundle/container/router/AnimType;Ljava/lang/String;ZZ)Z

    move-result v18

    .line 100
    .local v18, "result":Z
    if-eqz v18, :cond_1

    goto :goto_2

    .line 114
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v11    # "index":I
    .end local v17    # "pageName":Ljava/lang/String;
    .end local v18    # "result":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->pageList:Ljava/util/Map;

    const-string/jumbo v3, "homePage"

    .line 115
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .line 117
    .local v14, "model":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->pageName:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljqr;->c:Z

    .line 120
    move-object/from16 v17, p1

    .line 121
    .restart local v17    # "pageName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 128
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 129
    .restart local v19    # "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 130
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 132
    .end local v19    # "uri":Landroid/net/Uri;
    :cond_e
    sget-object v2, Lcom/taobao/windmill/bundle/container/router/AnimType;->POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3, v4}, Ljqr;->a(Lcom/taobao/windmill/bundle/container/router/AnimType;Ljava/lang/String;ZZ)Z

    move-result v18

    .line 133
    .restart local v18    # "result":Z
    if-nez v18, :cond_9

    .line 137
    .end local v17    # "pageName":Ljava/lang/String;
    .end local v18    # "result":Z
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljqr;->c:Z

    .line 139
    if-eqz v14, :cond_13

    iget-object v2, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 150
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 158
    iget-object v2, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->pageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 159
    .restart local v19    # "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 160
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .end local v19    # "uri":Landroid/net/Uri;
    .local v9, "enterUrl":Ljava/lang/String;
    :goto_3
    new-instance v2, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;

    invoke-direct {v2, v9}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljqr;->e:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    const/4 v5, 0x0

    .line 166
    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;Z)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v16

    .line 168
    .local v16, "pageModel":Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    if-nez v16, :cond_11

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    const/4 v3, 0x1

    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v5, "\u914d\u7f6e\u4fe1\u606f\u6709\u8bef"

    invoke-static {v2, v3, v4, v5}, Ljqt;->a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v15

    .line 171
    .restart local v15    # "page":Landroid/support/v4/app/Fragment;
    const/4 v13, 0x0

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_2

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    .line 176
    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .line 175
    invoke-static {v2, v3}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$d;->a(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    goto/16 :goto_1

    .line 162
    .end local v9    # "enterUrl":Ljava/lang/String;
    .end local v15    # "page":Landroid/support/v4/app/Fragment;
    .end local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    :cond_10
    iget-object v9, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->pageName:Ljava/lang/String;

    .restart local v9    # "enterUrl":Ljava/lang/String;
    goto :goto_3

    .line 179
    .restart local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    .line 2022
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Ljqt;->a(ZLandroid/app/Activity;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Landroid/support/v4/app/Fragment;

    move-result-object v15

    .line 183
    .restart local v15    # "page":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 2169
    const/4 v2, 0x3

    sget-object v4, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v5, "SUCCESS_PAGE"

    const-string/jumbo v6, ""

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string/jumbo v21, "url"

    aput-object v21, v7, v20

    const/16 v20, 0x1

    iget-object v0, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v7, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "type"

    aput-object v21, v7, v20

    const/16 v21, 0x3

    iget-object v0, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    const-string/jumbo v20, ""

    .line 2170
    :goto_4
    aput-object v20, v7, v21

    .line 2169
    invoke-static/range {v2 .. v7}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, v14, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->type:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-object/from16 v20, v0

    .line 2170
    invoke-virtual/range {v20 .. v20}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->name()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 186
    .end local v9    # "enterUrl":Ljava/lang/String;
    .end local v15    # "page":Landroid/support/v4/app/Fragment;
    .end local v16    # "pageModel":Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    const/4 v3, 0x1

    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v5, "\u914d\u7f6e\u4fe1\u606f\u6709\u8bef"

    invoke-static {v2, v3, v4, v5}, Ljqt;->a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v15

    .line 188
    .restart local v15    # "page":Landroid/support/v4/app/Fragment;
    const/4 v13, 0x0

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Ljqr;->e:Landroid/app/Activity;

    check-cast v2, Ljqd;

    .line 193
    invoke-interface {v2}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .line 192
    invoke-static {v2, v3}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$d;->a(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V

    goto/16 :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ljqr;->a:Ljqo;

    invoke-virtual {v0}, Ljqo;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 368
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/taobao/windmill/bundle/container/router/AnimType;Ljava/lang/String;ZZ)Z
    .locals 11
    .param p1, "animType"    # Lcom/taobao/windmill/bundle/container/router/AnimType;
    .param p2, "enterUrl"    # Ljava/lang/String;
    .param p3, "skipOpenUrl"    # Z
    .param p4, "downgrade"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 264
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v7

    .line 290
    :goto_0
    return v0

    .line 268
    :cond_0
    new-instance v1, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;

    invoke-direct {v1, p2}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljqr;->e:Landroid/app/Activity;

    iget-object v3, p0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    invoke-virtual {v1, v2, v3, v7}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;Z)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v6

    .line 269
    .local v6, "page":Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    if-nez v6, :cond_2

    .line 274
    if-nez p3, :cond_1

    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/taobao/windmill/bundle/WMLActivity;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Ljqr;->b:Ljqp;

    invoke-virtual {v0, p2}, Ljqp;->a(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    check-cast v0, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0, p2}, Lcom/taobao/windmill/bundle/WMLActivity;->onStartActivityByUrl(Ljava/lang/String;)Z

    .line 278
    :cond_1
    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    check-cast v0, Ljqd;

    invoke-interface {v0}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 4189
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "FAIL_OPENPAGE_NOT_FOUND"

    const-string/jumbo v4, ""

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v8, "url"

    aput-object v8, v5, v7

    aput-object p2, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move v0, v7

    .line 279
    goto :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Ljqr;->e:Landroid/app/Activity;

    check-cast v1, Ljqd;

    invoke-interface {v1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 5182
    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "SUCCESS_OPEN"

    const-string/jumbo v4, ""

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "url"

    aput-object v8, v5, v7

    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    const-string/jumbo v7, "type"

    aput-object v7, v5, v10

    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v7

    if-nez v7, :cond_4

    const-string/jumbo v7, ""

    :goto_1
    aput-object v7, v5, v0

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;

    if-ne p1, v0, :cond_5

    .line 283
    sget v0, Ljrg$a;->wml_push_left_in:I

    sget v1, Ljrg$a;->wml_push_left_out:I

    sget v2, Ljrg$a;->wml_push_right_in:I

    sget v3, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->setCustomAnimations(IIII)V

    .line 290
    :cond_3
    :goto_2
    iget-object v0, p0, Ljqr;->a:Ljqo;

    invoke-virtual {v0, v6}, Ljqo;->a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z

    move-result v0

    goto/16 :goto_0

    .line 5182
    :cond_4
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 286
    :cond_5
    sget-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

    if-ne p1, v0, :cond_3

    .line 287
    sget v0, Ljrg$a;->wml_fade_in:I

    sget v1, Ljrg$a;->wml_fade_out:I

    sget v2, Ljrg$a;->wml_push_right_in:I

    sget v3, Ljrg$a;->wml_push_right_out:I

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->setCustomAnimations(IIII)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "enterUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 294
    sget-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;

    invoke-virtual {p0, v0, p1, v1, v1}, Ljqr;->a(Lcom/taobao/windmill/bundle/container/router/AnimType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "enterUrl"    # Ljava/lang/String;
    .param p2, "isHome"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v2

    .line 310
    :cond_1
    new-instance v3, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;

    invoke-direct {v3, p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljqr;->e:Landroid/app/Activity;

    iget-object v5, p0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;Z)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v0

    .line 312
    .local v0, "page":Lcom/taobao/windmill/bundle/container/router/WMLPageModel;
    if-eqz v0, :cond_0

    .line 315
    iput-boolean p2, v0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    .line 316
    iget-object v2, p0, Ljqr;->b:Ljqp;

    invoke-virtual {v2}, Ljqp;->a()Ljqp$b;

    move-result-object v1

    .line 317
    .local v1, "stackItem":Ljqp$b;
    iget-object v2, v1, Ljqp$b;->e:Ljqn;

    instance-of v2, v2, Ljqq;

    if-eqz v2, :cond_2

    .line 318
    iget-object v2, v1, Ljqp$b;->e:Ljqn;

    invoke-virtual {v2, v0}, Ljqn;->b(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z

    move-result v2

    goto :goto_0

    .line 320
    :cond_2
    iget-object v2, p0, Ljqr;->a:Ljqo;

    invoke-virtual {v2, v0}, Ljqo;->b(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z

    move-result v2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 11
    .param p1, "enterUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 325
    .line 5329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5333
    new-instance v1, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;

    invoke-direct {v1, p1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljqr;->e:Landroid/app/Activity;

    iget-object v3, p0, Ljqr;->f:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    invoke-virtual {v1, v2, v3, v8}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel$a;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;Z)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v9

    .line 5334
    if-nez v9, :cond_2

    .line 5335
    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/taobao/windmill/bundle/WMLActivity;

    if-eqz v0, :cond_0

    .line 5336
    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    check-cast v0, Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0, p1}, Lcom/taobao/windmill/bundle/WMLActivity;->onStartActivityByUrl(Ljava/lang/String;)Z

    .line 5338
    :cond_0
    iget-object v0, p0, Ljqr;->e:Landroid/app/Activity;

    check-cast v0, Ljqd;

    invoke-interface {v0}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 6202
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "FAIL_SWITCHPAGE_NOT_FOUND"

    const-string/jumbo v4, ""

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    move v0, v8

    .line 5350
    :goto_0
    return v0

    .line 5342
    :cond_2
    iget-object v1, p0, Ljqr;->e:Landroid/app/Activity;

    check-cast v1, Ljqd;

    invoke-interface {v1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 7196
    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "SUCCESS_SWTICH"

    const-string/jumbo v4, ""

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v8

    invoke-virtual {v9}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "type"

    aput-object v6, v5, v10

    invoke-virtual {v9}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ""

    :goto_1
    aput-object v6, v5, v0

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5343
    iget-object v0, p0, Ljqr;->b:Ljqp;

    invoke-virtual {v0}, Ljqp;->a()Ljqp$b;

    move-result-object v1

    .line 5344
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljqp$b;->e:Ljqn;

    instance-of v0, v0, Ljqq;

    if-eqz v0, :cond_1

    iget-object v0, v1, Ljqp$b;->e:Ljqn;

    .line 5345
    invoke-virtual {v0, v9}, Ljqn;->a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z

    .line 5346
    iget-object v2, p0, Ljqr;->b:Ljqp;

    iget-object v0, v1, Ljqp$b;->e:Ljqn;

    .line 5347
    invoke-virtual {v0}, Ljqn;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, v1, Ljqp$b;->e:Ljqn;

    .line 5346
    invoke-virtual {v2, v0, v1}, Ljqp;->a(Ljava/util/ArrayList;Ljqn;)V

    move v0, v7

    .line 5350
    goto :goto_0

    .line 7196
    :cond_3
    invoke-virtual {v9}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageType()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
