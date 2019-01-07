.class public final Ljre;
.super Ljava/lang/Object;
.source "WMLUTUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljre$a;,
        Ljre$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljre;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ljre;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 1133
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v0, v1, Ljpo$a;->d:Ljqa;

    .line 37
    .local v0, "userTrackAdapter":Ljqa;
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p0}, Ljqa;->skipActivityTracker(Landroid/app/Activity;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Ljqd;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isHomePage"    # Z

    .prologue
    .line 64
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v3

    .line 4133
    iget-object v3, v3, Ljpo;->c:Ljpo$a;

    iget-object v2, v3, Ljpo$a;->d:Ljqa;

    .line 65
    .local v2, "userTrackAdapter":Ljqa;
    if-eqz v2, :cond_1

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "wml-url"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string/jumbo v3, "wml-id"

    invoke-interface {p1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 72
    .local v0, "cnt":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "miniapp_object_type"

    if-eqz p3, :cond_2

    const-string/jumbo v3, "index"

    :goto_0
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v3, "miniapp_id"

    invoke-interface {p1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v3, "utparam-cnt"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    invoke-interface {p1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v3, :cond_0

    .line 78
    const-string/jumbo v3, "wml-version"

    invoke-interface {p1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v3, "wml-template-id"

    invoke-interface {p1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v0    # "cnt":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-interface {v2, p0, v1}, Ljqa;->updatePageProperties(Landroid/app/Activity;Ljava/util/Map;)V

    .line 85
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 72
    .restart local v0    # "cnt":Lcom/alibaba/fastjson/JSONObject;
    .restart local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v3, "subpage"

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljqd;)V
    .locals 4
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "context"    # Ljqd;

    .prologue
    .line 53
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v2

    .line 3133
    iget-object v2, v2, Ljpo;->c:Ljpo$a;

    iget-object v1, v2, Ljpo$a;->d:Ljqa;

    .line 54
    .local v1, "userTrackAdapter":Ljqa;
    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "nextProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "wml-id-pre"

    invoke-interface {p1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v1, p0, v0}, Ljqa;->onFragmentVisible(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    .line 61
    .end local v0    # "nextProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 2133
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v0, v1, Ljpo$a;->d:Ljqa;

    .line 47
    .local v0, "userTrackAdapter":Ljqa;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0}, Ljqa;->pageDisAppearForActivity(Landroid/app/Activity;)V

    .line 50
    :cond_0
    return-void
.end method
