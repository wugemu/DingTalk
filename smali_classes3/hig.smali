.class public final Lhig;
.super Ljava/lang/Object;
.source "TunnelIServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhig$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "%1$s %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Tunnel"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 52
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhig;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lhig;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lhig$a;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lhig$a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "callback":Lhig$a;, "Lhig$a<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lhig;->a(Landroid/app/Activity;Lorg/json/JSONObject;Lhig$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "ERR_JSON"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cannot parse request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lhig;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lhig$a;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lorg/json/JSONObject;Lhig$a;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "request"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/json/JSONObject;",
            "Lhig$a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lhig$a;, "Lhig$a<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "start":J
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_js_mtop_over_lwp_new_enable"

    .line 1083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 82
    if-eqz v2, :cond_0

    const-string/jumbo v2, "dt_mtop_module_version"

    .line 83
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1137
    new-instance v2, Lhig$2;

    invoke-direct {v2, v0, v1, p2, p1}, Lhig$2;-><init>(JLhig$a;Lorg/json/JSONObject;)V

    .line 1171
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 91
    :goto_0
    return-void

    .line 2097
    :cond_0
    const-class v2, Lcom/alibaba/lightapp/runtime/idl/TunnelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/idl/TunnelIService;

    .line 2098
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhig$1;

    invoke-direct {v4, v0, v1, p2, p1}, Lhig$1;-><init>(JLhig$a;Lorg/json/JSONObject;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/idl/TunnelIService;->mtop(Ljava/lang/String;Lcmi;)V

    goto :goto_0
.end method

.method public static a(Lhjh;Ljava/lang/String;ZZLcmi;)V
    .locals 9
    .param p0, "request"    # Lhjh;
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "autoSetCookie"    # Z
    .param p3, "autoAppendRequestCookie"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhjh;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcmi",
            "<",
            "Lhji;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p4, "callback":Lcmi;, "Lcmi<Lhji;>;"
    iget-object v1, p0, Lhjh;->c:Ljava/util/Map;

    .line 201
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 202
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    .restart local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v1, p0, Lhjh;->c:Ljava/util/Map;

    .line 209
    :cond_0
    :try_start_0
    const-string/jumbo v6, "Referer"

    invoke-interface {v1, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-eqz p3, :cond_5

    .line 213
    const-string/jumbo v6, "Cookie"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    const-string/jumbo v0, ""

    .line 217
    :cond_1
    move-object v2, v0

    .line 218
    .local v2, "syntheticCookie":Ljava/lang/String;
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "sysCookie":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 221
    move-object v2, v3

    .line 227
    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 228
    const-string/jumbo v6, "Cookie"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v2    # "syntheticCookie":Ljava/lang/String;
    .end local v3    # "sysCookie":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v6, "User-Agent"

    sget-object v7, Lhig;->a:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_2
    const-class v6, Lcom/alibaba/lightapp/runtime/idl/TunnelIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/idl/TunnelIService;

    .line 247
    .local v5, "tunnelIService":Lcom/alibaba/lightapp/runtime/idl/TunnelIService;
    new-instance v6, Lhig$3;

    invoke-direct {v6, p0, p2, p1, p4}, Lhig$3;-><init>(Lhjh;ZLjava/lang/String;Lcmi;)V

    invoke-interface {v5, p0, v6}, Lcom/alibaba/lightapp/runtime/idl/TunnelIService;->httpOverLwp(Lhjh;Lcmi;)V

    .line 305
    return-void

    .line 224
    .end local v5    # "tunnelIService":Lcom/alibaba/lightapp/runtime/idl/TunnelIService;
    .restart local v0    # "cookie":Ljava/lang/String;
    .restart local v2    # "syntheticCookie":Ljava/lang/String;
    .restart local v3    # "sysCookie":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "; "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 232
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v2    # "syntheticCookie":Ljava/lang/String;
    .end local v3    # "sysCookie":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "Cookie"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 233
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "cookie":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 235
    const-string/jumbo v6, "Cookie"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 242
    .end local v0    # "cookie":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 243
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "request"    # Lorg/json/JSONObject;
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v2, "r":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 181
    .local v3, "ret":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "::"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 182
    const-string/jumbo v4, "api"

    const-string/jumbo v5, "api"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v4, "v"

    const-string/jumbo v5, "v"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string/jumbo v4, "ret"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "ret":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    return-object v2

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
