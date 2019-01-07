.class final Lhra$1;
.super Lcmi;
.source "UidTokenDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhiq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:J

.field final synthetic c:Lhqz$a;

.field final synthetic d:Lhra;


# direct methods
.method constructor <init>(Lhra;Landroid/net/Uri;JLhqz$a;)V
    .locals 1
    .param p1, "this$0"    # Lhra;

    .prologue
    .line 113
    iput-object p1, p0, Lhra$1;->d:Lhra;

    iput-object p2, p0, Lhra$1;->a:Landroid/net/Uri;

    iput-wide p3, p0, Lhra$1;->b:J

    iput-object p5, p0, Lhra$1;->c:Lhqz$a;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 135
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    const-string/jumbo v1, "CookiesIService_getAuthorizeCookie"

    iget-object v2, p0, Lhra$1;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lgvi;->warnLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lhra$1;->c:Lhqz$a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lhra$1;->d:Lhra;

    iget-object v0, p0, Lhra$1;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lhra$1;->b:J

    .line 1039
    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lhra;->a(Ljava/lang/String;JZ)V

    .line 138
    iget-object v0, p0, Lhra$1;->c:Lhqz$a;

    invoke-interface {v0, p1, p2}, Lhqz$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 113
    check-cast p1, Lhiq;

    .line 1116
    if-eqz p1, :cond_3

    .line 1117
    iget-object v0, p0, Lhra$1;->d:Lhra;

    .line 2039
    invoke-virtual {v0, p1}, Lhra;->a(Lhiq;)Lhrb;

    move-result-object v2

    .line 1118
    iget-object v0, p0, Lhra$1;->d:Lhra;

    .line 3039
    iget-object v0, v0, Lhra;->a:Ljava/util/Map;

    .line 1118
    iget-object v1, p0, Lhra$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v3, p0, Lhra$1;->d:Lhra;

    .line 4172
    iget-object v0, v3, Lhra;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4173
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 4175
    iget-object v0, v3, Lhra;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4176
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4178
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4179
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4180
    iget-object v1, v3, Lhra;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrb;

    .line 4181
    invoke-virtual {v1}, Lhrb;->a()Ljava/lang/String;

    move-result-object v1

    .line 4182
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4185
    :catch_0
    move-exception v0

    .line 4186
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1120
    :cond_0
    :goto_1
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lhra$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lhrb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lhra$1;->d:Lhra;

    iget-object v0, p0, Lhra$1;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lhra$1;->b:J

    .line 5039
    invoke-static {v0, v4, v5, v6}, Lhra;->a(Ljava/lang/String;JZ)V

    .line 1122
    iget-object v0, p0, Lhra$1;->c:Lhqz$a;

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lhra$1;->c:Lhqz$a;

    iget-object v1, v2, Lhrb;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhqz$a;->onSuccess(Ljava/lang/String;)V

    .line 1125
    :cond_1
    :goto_2
    return-void

    .line 4184
    :cond_2
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "light_app_uid_token_map"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1126
    :cond_3
    iget-object v0, p0, Lhra$1;->c:Lhqz$a;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lhra$1;->d:Lhra;

    iget-object v0, p0, Lhra$1;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lhra$1;->b:J

    .line 6039
    invoke-static {v0, v2, v3, v6}, Lhra;->a(Ljava/lang/String;JZ)V

    .line 1128
    iget-object v0, p0, Lhra$1;->c:Lhqz$a;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "cookieModel is null"

    invoke-interface {v0, v1, v2}, Lhqz$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
