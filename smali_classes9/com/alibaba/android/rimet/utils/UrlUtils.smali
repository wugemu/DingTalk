.class public Lcom/alibaba/android/rimet/utils/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/alibaba/android/rimet/utils/UrlUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/utils/UrlUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2383
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 213
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v6

    .line 216
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v1, "url":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 221
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/utils/UrlUtils$1;

    invoke-direct {v4, p2}, Lcom/alibaba/android/rimet/utils/UrlUtils$1;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v1    # "url":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p0, "orgIdString"    # Ljava/lang/String;
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 2235
    const-wide/16 v2, 0x0

    .line 2236
    .local v2, "orgId":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2238
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    move-wide v4, v2

    .line 2252
    .end local v2    # "orgId":J
    .local v4, "orgId":J
    :goto_1
    return-wide v4

    .line 2239
    .end local v4    # "orgId":J
    .restart local v2    # "orgId":J
    :catch_0
    move-exception v0

    .line 2240
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-class v6, Lcom/alibaba/android/rimet/utils/UrlUtils;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 2241
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "bad param orgId=%s"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    goto :goto_0

    .line 2246
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2247
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 2248
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_1

    .line 2249
    iget-wide v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    move-wide v4, v2

    .line 2252
    .end local v2    # "orgId":J
    .restart local v4    # "orgId":J
    goto :goto_1
.end method

.method private static a(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "uid1"    # J
    .param p2, "uid2"    # J

    .prologue
    .line 2266
    const-wide/32 v0, 0x39dfa

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(JJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JJZ)Ljava/lang/String;
    .locals 8
    .param p0, "uid1"    # J
    .param p2, "uid2"    # J
    .param p4, "secretChat"    # Z

    .prologue
    .line 2256
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 2257
    .local v4, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2258
    .local v0, "max":J
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2259
    .local v2, "min":J
    if-eqz p4, :cond_0

    move-wide v6, v0

    :goto_0
    invoke-virtual {v4, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    .line 2260
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    if-eqz p4, :cond_1

    .line 2261
    .end local v2    # "min":J
    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2262
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v2    # "min":J
    :cond_0
    move-wide v6, v2

    .line 2259
    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 2260
    goto :goto_1
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 176
    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 177
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 181
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 182
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "matchName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    move-object v0, v1

    .line 193
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 194
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 196
    goto :goto_0

    .end local v0    # "matchName":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .line 199
    goto :goto_0

    .end local v2    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .line 203
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 2270
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2271
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 2273
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2274
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v10, "https"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "http"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_0
    const-string/jumbo v10, "static.dingtalk.com"

    .line 2275
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "down.dingtalk.com"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3305
    const-string/jumbo v10, "down-cdn.dingtalk.com"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3306
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v10

    const-string/jumbo v11, "f_doraemon_down_cdn_use_http"

    .line 4083
    invoke-virtual {v10, v11, v9}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v10

    .line 3306
    if-nez v10, :cond_7

    .line 2275
    :goto_0
    if-eqz v9, :cond_8

    .line 2276
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "/media"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "/ddmedia"

    .line 2277
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2278
    :cond_2
    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v4

    .line 2279
    .local v4, "port":I
    invoke-virtual {v8}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 2280
    .local v5, "query":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 2281
    .local v0, "fragement":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 2282
    .local v2, "newUrl":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v9, "lwp"

    invoke-virtual {v2, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "://"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2283
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    .line 2284
    const-string/jumbo v9, ":"

    invoke-virtual {v2, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2286
    :cond_3
    if-eqz v3, :cond_4

    .line 2287
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2289
    :cond_4
    if-eqz v5, :cond_5

    .line 2290
    const-string/jumbo v9, "?"

    invoke-virtual {v2, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2292
    :cond_5
    if-eqz v0, :cond_6

    .line 2293
    const-string/jumbo v9, "#"

    invoke-virtual {v2, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2295
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2298
    .end local v0    # "fragement":Ljava/lang/String;
    .end local v2    # "newUrl":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v4    # "port":I
    .end local v5    # "query":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 3306
    :cond_7
    const/4 v9, 0x0

    goto :goto_0

    :cond_8
    move-object v6, p0

    .line 2298
    goto :goto_1
.end method

.method private static a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/List;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 245
    if-nez p0, :cond_2

    move-object v1, v8

    .line 246
    .local v1, "className":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const/16 v9, 0xc0

    invoke-static {v5, v9}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 252
    .local v6, "r":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_0

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 256
    :cond_1
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v9, :cond_4

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v9}, Landroid/content/IntentFilter;->countCategories()I

    move-result v9

    if-lez v9, :cond_4

    .line 257
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 258
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 259
    .local v2, "count":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 261
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "r":Landroid/content/pm/ResolveInfo;
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "i":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "r":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v8, v7

    .line 271
    .end local v2    # "count":I
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "i":I
    .end local v6    # "r":Landroid/content/pm/ResolveInfo;
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v8
.end method

.method private static a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2373
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2376
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2380
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Ljava/util/List;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2320
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2370
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    const-string/jumbo v6, "/action/change_ent_group"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2325
    const-string/jumbo v6, "cid"

    invoke-static {p1, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2326
    .local v1, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, p0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2330
    .end local v1    # "cid":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2331
    .local v3, "mIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2333
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2337
    const/16 v6, 0xc0

    invoke-static {v3, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2339
    .local v0, "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 2340
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2341
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_4

    .line 2342
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2343
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2344
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2341
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2347
    .end local v2    # "i":I
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 2349
    :cond_5
    const v6, 0x10080

    invoke-static {v3, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2351
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 2352
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v6, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/rimet/utils/UrlUtils$26;

    invoke-direct {v8, p2}, Lcom/alibaba/android/rimet/utils/UrlUtils$26;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 2363
    :cond_7
    move-object v5, p2

    .local v5, "tempBundle":Landroid/os/Bundle;
    if-nez p2, :cond_8

    .line 2364
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "tempBundle":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2366
    .restart local v5    # "tempBundle":Landroid/os/Bundle;
    :cond_8
    const-string/jumbo v6, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 279
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v1, v2

    .line 301
    :goto_0
    return v1

    .line 282
    :cond_1
    invoke-static {p0, p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 284
    const-string/jumbo v1, "com.alibaba.android.rimet.category.UNIFY_JUMP"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 285
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I

    move-result v1

    goto :goto_0

    .line 286
    :cond_2
    const-string/jumbo v1, "com.alibaba.android.rimet.category.WEB"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 287
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v3, "https://qr.dingtalk.com/ding/home.html"

    new-instance v4, Lcom/alibaba/android/rimet/utils/UrlUtils$12;

    invoke-direct {v4, p1}, Lcom/alibaba/android/rimet/utils/UrlUtils$12;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    :cond_3
    move v1, v2

    .line 301
    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 22
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2162
    const-string/jumbo v20, "code"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2163
    .local v5, "code":Ljava/lang/String;
    const-string/jumbo v20, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2164
    .local v19, "url":Ljava/lang/String;
    const-string/jumbo v20, "noLimit"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2165
    .local v11, "noLimit":Ljava/lang/String;
    const-string/jumbo v20, "lowerLimit"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2166
    .local v10, "lowerLimitStr":Ljava/lang/String;
    const-string/jumbo v20, "source"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2167
    .local v16, "source":Ljava/lang/String;
    const-string/jumbo v20, "orgId"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2168
    .local v14, "orgId":Ljava/lang/String;
    const-string/jumbo v20, "orgName"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2169
    .local v15, "orgName":Ljava/lang/String;
    const-string/jumbo v20, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2170
    .local v2, "actionBarTitle":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2171
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v20, "fromSighUp"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2172
    const-string/jumbo v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 2173
    const-string/jumbo v20, "is_no_limit"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2177
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2178
    const/4 v9, 0x0

    .line 2180
    .local v9, "lowerLimit":I
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    .line 2183
    :goto_1
    const-string/jumbo v20, "intent_key_lower_limit"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2185
    .end local v9    # "lowerLimit":I
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 2186
    const-string/jumbo v20, "isv_code"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_1
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 2189
    const-string/jumbo v20, "isv_authorize_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 2192
    const-string/jumbo v20, "key_org_source"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :cond_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 2195
    const-wide/16 v12, 0x0

    .line 2197
    .local v12, "oid":J
    :try_start_1
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 2200
    :goto_2
    const-string/jumbo v20, "display_enterprise_oid"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2202
    .end local v12    # "oid":J
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2203
    const-string/jumbo v20, "org_name"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 2206
    const-string/jumbo v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_6
    const-string/jumbo v20, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2211
    .local v17, "src":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 2213
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2214
    .local v7, "from":I
    const-string/jumbo v20, "key_create_org_source"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2219
    .end local v7    # "from":I
    :cond_7
    :goto_3
    const-string/jumbo v20, "jumpUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2220
    .local v8, "jumpUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 2221
    const-string/jumbo v20, "key_create_org_jump_url"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    :cond_8
    const-string/jumbo v20, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2224
    .local v18, "title":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 2225
    const-string/jumbo v20, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_9
    const-string/jumbo v20, "banner"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2228
    .local v3, "bannerMediaId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2229
    const-string/jumbo v20, "media_id"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    :cond_a
    return-object v4

    .line 2175
    .end local v3    # "bannerMediaId":Ljava/lang/String;
    .end local v8    # "jumpUrl":Ljava/lang/String;
    .end local v17    # "src":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :cond_b
    const-string/jumbo v20, "is_no_limit"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2215
    .restart local v17    # "src":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2216
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v17    # "src":Ljava/lang/String;
    .restart local v12    # "oid":J
    :catch_1
    move-exception v20

    goto/16 :goto_2

    .end local v12    # "oid":J
    .restart local v9    # "lowerLimit":I
    :catch_2
    move-exception v20

    goto/16 :goto_1
.end method

.method private static b(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 1968
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_recruitment_wml_nav_url"

    .line 3083
    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1969
    .local v1, "open":Z
    if-eqz v1, :cond_0

    .line 1970
    const-string/jumbo v4, "_wml_nav_url"

    invoke-static {p1, v4}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1972
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1973
    const-string/jumbo v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 2063
    const-string/jumbo v3, "corpid"

    invoke-static {p1, v3}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, "corpid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2066
    const-string/jumbo v3, "general"

    const-string/jumbo v4, "smartdevice_list, corpid empty"

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    :goto_0
    return-void

    .line 2070
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    .line 2071
    .local v2, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v2, :cond_1

    .line 2072
    const-string/jumbo v3, "general"

    const-string/jumbo v4, "smartdevice_list, main org null"

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 2077
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v0, :cond_2

    .line 2078
    const-string/jumbo v3, "general"

    const-string/jumbo v4, "smartdevice_list, micro app null"

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2083
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "/ding/home.html"

    .line 3225
    invoke-static {v4, v5}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 2083
    new-instance v5, Lcom/alibaba/android/rimet/utils/UrlUtils$22;

    invoke-direct {v5}, Lcom/alibaba/android/rimet/utils/UrlUtils$22;-><init>()V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2093
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 2095
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/contact/other_org.html"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 2099
    :cond_3
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/contact/alpha_device.html"

    new-instance v5, Lcom/alibaba/android/rimet/utils/UrlUtils$24;

    invoke-direct {v5, v0}, Lcom/alibaba/android/rimet/utils/UrlUtils$24;-><init>(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 217
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    :cond_0
    const/4 v6, 0x0

    .line 1961
    :goto_0
    return v6

    .line 308
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v173

    .line 309
    .local v173, "path":Ljava/lang/String;
    const-string/jumbo v6, "/page/link"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "/p/link"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 310
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcpx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 311
    .local v18, "jumpUrl":Ljava/lang/String;
    const-string/jumbo v6, "alphaUrl"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 312
    .local v78, "alphaUrl":Ljava/lang/String;
    invoke-static/range {v78 .. v78}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 313
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    new-instance v19, Lcom/alibaba/android/rimet/utils/UrlUtils$23;

    invoke-direct/range {v19 .. v19}, Lcom/alibaba/android/rimet/utils/UrlUtils$23;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1961
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v78    # "alphaUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 322
    .restart local v18    # "jumpUrl":Ljava/lang/String;
    .restart local v78    # "alphaUrl":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "dd_mode"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 323
    .local v60, "actionType":Ljava/lang/String;
    const-string/jumbo v6, "pop"

    move-object/from16 v0, v60

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 324
    const-string/jumbo v6, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v213

    .line 325
    .local v213, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v213

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    .end local v213    # "url":Ljava/lang/String;
    :cond_5
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v21, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 332
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v60    # "actionType":Ljava/lang/String;
    .end local v78    # "alphaUrl":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "/action/joingroup"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 333
    const-string/jumbo v6, "code"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 334
    .local v94, "code":Ljava/lang/String;
    invoke-static/range {v94 .. v94}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 335
    const-string/jumbo v6, "origin"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->c(Ljava/lang/String;)I

    move-result v172

    .line 336
    .local v172, "original":I
    if-gtz v172, :cond_7

    .line 337
    const/16 v172, 0x1

    .line 339
    :cond_7
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 340
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "qrcode_key"

    move-object/from16 v0, v21

    move-object/from16 v1, v94

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v6, "from_share"

    move-object/from16 v0, v21

    move/from16 v1, v172

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 344
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v94    # "code":Ljava/lang/String;
    .end local v172    # "original":I
    :cond_8
    const-string/jumbo v6, "/ding/home.html"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 345
    const-string/jumbo v6, "from"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v6, "to_page"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, "to":Ljava/lang/String;
    const-string/jumbo v6, "ding_id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, "dingId":Ljava/lang/String;
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, "cid":Ljava/lang/String;
    const-string/jumbo v6, "confirm_ding"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, "needConfirm":Ljava/lang/String;
    const-string/jumbo v6, "intent_key_event_id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 351
    .local v12, "eventId":J
    const-string/jumbo v6, "intent_key_event_start_millis"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 352
    .local v14, "startMillis":J
    const-string/jumbo v6, "intent_key_event_end_millis"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v16

    .line 353
    .local v16, "endMillis":J
    const-string/jumbo v6, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 355
    .restart local v18    # "jumpUrl":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "apn_nav_url"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v135

    .line 356
    .local v135, "h5NavUrl":Ljava/lang/String;
    invoke-static/range {v135 .. v135}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 357
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    invoke-static/range {v135 .. v135}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 358
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 361
    :cond_9
    const-string/jumbo v6, "to_chat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_a

    .line 363
    :try_start_1
    const-string/jumbo v6, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/app/ActivityManager;

    .line 364
    .local v79, "am":Landroid/app/ActivityManager;
    const/4 v6, 0x1

    move-object/from16 v0, v79

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v203

    .line 368
    .local v203, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v203, :cond_a

    invoke-interface/range {v203 .. v203}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x0

    move-object/from16 v0, v203

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 369
    const/4 v6, 0x0

    move-object/from16 v0, v203

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v96, v0

    .line 370
    .local v96, "componentInfo":Landroid/content/ComponentName;
    if-eqz v96, :cond_a

    const-class v6, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v96 .. v96}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 371
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v9, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 375
    .end local v79    # "am":Landroid/app/ActivityManager;
    .end local v96    # "componentInfo":Landroid/content/ComponentName;
    .end local v203    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v123

    .line 376
    .local v123, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    .end local v123    # "e":Ljava/lang/Exception;
    :cond_a
    new-instance v213, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v213

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .local v213, "url":Ljava/net/URI;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v19

    invoke-virtual/range {v213 .. v213}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Lcom/alibaba/android/rimet/utils/UrlUtils$27;

    invoke-direct/range {v6 .. v18}, Lcom/alibaba/android/rimet/utils/UrlUtils$27;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 403
    const v6, 0x7f050028

    const v19, 0x7f050028

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 404
    .end local v135    # "h5NavUrl":Ljava/lang/String;
    .end local v213    # "url":Ljava/net/URI;
    :catch_1
    move-exception v123

    .line 405
    .local v123, "e":Ljava/net/URISyntaxException;
    invoke-virtual/range {v123 .. v123}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 407
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "to":Ljava/lang/String;
    .end local v9    # "cid":Ljava/lang/String;
    .end local v10    # "dingId":Ljava/lang/String;
    .end local v11    # "needConfirm":Ljava/lang/String;
    .end local v12    # "eventId":J
    .end local v14    # "startMillis":J
    .end local v16    # "endMillis":J
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v123    # "e":Ljava/net/URISyntaxException;
    :cond_b
    const-string/jumbo v6, "/market/laiwang/dingding.php"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 408
    const-string/jumbo v6, "to_page"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    .restart local v8    # "to":Ljava/lang/String;
    :try_start_3
    new-instance v213, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v213

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .restart local v213    # "url":Ljava/net/URI;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    invoke-virtual/range {v213 .. v213}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/alibaba/android/rimet/utils/UrlUtils$28;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Lcom/alibaba/android/rimet/utils/UrlUtils$28;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 419
    .end local v213    # "url":Ljava/net/URI;
    :catch_2
    move-exception v123

    .line 420
    .restart local v123    # "e":Ljava/net/URISyntaxException;
    invoke-virtual/range {v123 .. v123}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 422
    .end local v8    # "to":Ljava/lang/String;
    .end local v123    # "e":Ljava/net/URISyntaxException;
    :cond_c
    const-string/jumbo v6, "/page/dinglist"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 424
    :try_start_4
    new-instance v157, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v157

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v157, "navURI":Ljava/net/URI;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    invoke-virtual/range {v157 .. v157}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/alibaba/android/rimet/utils/UrlUtils$29;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/android/rimet/utils/UrlUtils$29;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 433
    .end local v157    # "navURI":Ljava/net/URI;
    :catch_3
    move-exception v123

    .line 434
    .restart local v123    # "e":Ljava/net/URISyntaxException;
    invoke-virtual/range {v123 .. v123}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 436
    .end local v123    # "e":Ljava/net/URISyntaxException;
    :cond_d
    const-string/jumbo v6, "/page/conversation"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 437
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    .restart local v9    # "cid":Ljava/lang/String;
    const-string/jumbo v6, "draft"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    .line 439
    .local v122, "draft":Ljava/lang/String;
    const-string/jumbo v6, "msgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v152

    .line 440
    .local v152, "msgId":Ljava/lang/String;
    const-string/jumbo v6, "remind_type"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->c(Ljava/lang/String;)I

    move-result v184

    .line 441
    .local v184, "remindType":I
    const-string/jumbo v6, "source"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v200

    .line 442
    .local v200, "source":Ljava/lang/String;
    const-string/jumbo v6, "remind_ext"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v182

    .line 444
    .local v182, "remindEXt":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 445
    const/16 v21, 0x0

    .line 446
    .restart local v21    # "bundle":Landroid/os/Bundle;
    invoke-static/range {v122 .. v122}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 447
    new-instance v21, Landroid/os/Bundle;

    .end local v21    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 448
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "intent_key_send_pre_text"

    move-object/from16 v0, v21

    move-object/from16 v1, v122

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_e
    invoke-static/range {v152 .. v152}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 451
    if-nez v21, :cond_f

    .line 452
    new-instance v21, Landroid/os/Bundle;

    .end local v21    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 454
    .restart local v21    # "bundle":Landroid/os/Bundle;
    :cond_f
    const-string/jumbo v6, "anchor_id"

    invoke-static/range {v152 .. v152}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 456
    :cond_10
    if-nez v21, :cond_11

    .line 457
    new-instance v21, Landroid/os/Bundle;

    .end local v21    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 459
    .restart local v21    # "bundle":Landroid/os/Bundle;
    :cond_11
    const-string/jumbo v6, "remind_type"

    move-object/from16 v0, v21

    move/from16 v1, v184

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string/jumbo v6, "source"

    move-object/from16 v0, v21

    move-object/from16 v1, v200

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string/jumbo v6, "remind_ext"

    move-object/from16 v0, v21

    move-object/from16 v1, v182

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v9, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 464
    .end local v9    # "cid":Ljava/lang/String;
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v122    # "draft":Ljava/lang/String;
    .end local v152    # "msgId":Ljava/lang/String;
    .end local v182    # "remindEXt":Ljava/lang/String;
    .end local v184    # "remindType":I
    .end local v200    # "source":Ljava/lang/String;
    :cond_12
    const-string/jumbo v6, "/page/ding"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 465
    const-string/jumbo v6, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 466
    .restart local v10    # "dingId":Ljava/lang/String;
    const-string/jumbo v6, "is_repeat"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v19, "1"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v139

    .line 467
    .local v139, "isRepeat":Z
    const-string/jumbo v6, "unique_id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v212

    .line 468
    .local v212, "uniqueId":Ljava/lang/String;
    const-string/jumbo v6, "recurrence_id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v181

    .line 469
    .local v181, "recurrenceId":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 470
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "isRepeat"

    move-object/from16 v0, v21

    move/from16 v1, v139

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    const-string/jumbo v6, "unique_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v212

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v6, "recurrence_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v181

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 474
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v10, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 476
    :cond_13
    const-string/jumbo v6, "dingId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v188

    .line 477
    .local v188, "secretDingId":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 478
    .local v98, "corpId":Ljava/lang/String;
    invoke-static/range {v188 .. v188}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 479
    new-instance v127, Ljava/util/HashMap;

    invoke-direct/range {v127 .. v127}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v127, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "dingId"

    move-object/from16 v0, v127

    move-object/from16 v1, v188

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, v98

    move-object/from16 v1, v127

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v110

    .line 482
    .local v110, "decryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "dingId"

    move-object/from16 v0, v110

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v137

    check-cast v137, Ljava/lang/String;

    .line 483
    .local v137, "id":Ljava/lang/String;
    invoke-static/range {v137 .. v137}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 484
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v137

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 488
    .end local v10    # "dingId":Ljava/lang/String;
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v110    # "decryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v127    # "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v137    # "id":Ljava/lang/String;
    .end local v139    # "isRepeat":Z
    .end local v181    # "recurrenceId":Ljava/lang/String;
    .end local v188    # "secretDingId":Ljava/lang/String;
    .end local v212    # "uniqueId":Ljava/lang/String;
    :cond_14
    const-string/jumbo v6, "/page/ding_check_in"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 489
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v6

    const-string/jumbo v19, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 490
    :cond_15
    const-string/jumbo v6, "/page/dingcheckin"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 491
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v6

    const-string/jumbo v19, "code"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 492
    :cond_16
    const-string/jumbo v6, "/page/schedule_detail"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 493
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v20

    const-string/jumbo v6, "calendarid"

    .line 494
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    const-string/jumbo v6, "date"

    .line 495
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v21, p0

    .line 493
    invoke-virtual/range {v20 .. v25}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;JJ)V

    goto/16 :goto_1

    .line 496
    :cond_17
    const-string/jumbo v6, "/action/sharedcalendar"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 497
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v6

    const-string/jumbo v19, "uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;J)V

    goto/16 :goto_1

    .line 498
    :cond_18
    const-string/jumbo v6, "/page/devicebind"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "/page/smartdevice"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 499
    :cond_19
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v6

    const-string/jumbo v19, "native"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    :cond_1a
    const-string/jumbo v6, "/page/dingcreate"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 501
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v6

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 502
    :cond_1b
    const-string/jumbo v6, "/page/fileshelper"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 503
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 504
    :cond_1c
    const-string/jumbo v6, "/page/profile"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 506
    :try_start_5
    const-string/jumbo v6, "profile"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v209

    .line 507
    .local v209, "uidProfile":Ljava/lang/String;
    const-string/jumbo v6, "intent_key_forbidden_add_friend"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 508
    .local v129, "forbiddenAddFriend":Ljava/lang/String;
    invoke-static/range {v209 .. v209}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 509
    const-string/jumbo v6, "UTF-8"

    move-object/from16 v0, v209

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v215

    .line 510
    .local v215, "value":Ljava/lang/String;
    invoke-static/range {v215 .. v215}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v30

    .line 511
    .local v30, "data":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual/range {v30 .. v30}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v116

    .line 512
    .local v116, "dest":J
    const-wide/16 v22, 0x0

    cmp-long v6, v116, v22

    if-eqz v6, :cond_3

    .line 513
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 528
    .end local v30    # "data":Lcom/laiwang/protocol/media/MediaId;
    .end local v116    # "dest":J
    .end local v129    # "forbiddenAddFriend":Ljava/lang/String;
    .end local v209    # "uidProfile":Ljava/lang/String;
    .end local v215    # "value":Ljava/lang/String;
    :catch_4
    move-exception v123

    .line 529
    .local v123, "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 516
    .end local v123    # "e":Ljava/lang/Exception;
    .restart local v129    # "forbiddenAddFriend":Ljava/lang/String;
    .restart local v209    # "uidProfile":Ljava/lang/String;
    :cond_1d
    :try_start_6
    const-string/jumbo v6, "phone"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v150

    .line 517
    .local v150, "mobile":Ljava/lang/String;
    const-string/jumbo v6, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v153

    .line 518
    .local v153, "nameParam":Ljava/lang/String;
    invoke-static/range {v153 .. v153}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 519
    const-string/jumbo v6, "UTF-8"

    move-object/from16 v0, v153

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v153

    .line 521
    :cond_1e
    move-object/from16 v34, v153

    .line 522
    .local v34, "name":Ljava/lang/String;
    invoke-static/range {v150 .. v150}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 523
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move-object/from16 v2, v34

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 525
    :cond_1f
    const v6, 0x7f091dc8

    invoke-static {v6}, Lcms;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 531
    .end local v34    # "name":Ljava/lang/String;
    .end local v129    # "forbiddenAddFriend":Ljava/lang/String;
    .end local v150    # "mobile":Ljava/lang/String;
    .end local v153    # "nameParam":Ljava/lang/String;
    .end local v209    # "uidProfile":Ljava/lang/String;
    :cond_20
    const-string/jumbo v6, "/page/friendrequest"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 532
    const-string/jumbo v6, "_dt_from_page"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v134

    .line 533
    .local v134, "fromPage":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 534
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "intent_key_page_source"

    move-object/from16 v0, v21

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 536
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v134    # "fromPage":Ljava/lang/String;
    :cond_21
    const-string/jumbo v6, "/page/add_friend"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string/jumbo v6, "/page/addContact"

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 538
    :cond_22
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 539
    :cond_23
    const-string/jumbo v6, "/page/robots_finish"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 541
    :try_start_7
    const-string/jumbo v6, "botId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 542
    .local v86, "botId":Ljava/lang/String;
    invoke-static/range {v86 .. v86}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 543
    invoke-static/range {v86 .. v86}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v88

    .line 544
    .local v88, "botIdLong":J
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v88

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/app/Activity;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    .line 546
    .end local v86    # "botId":Ljava/lang/String;
    .end local v88    # "botIdLong":J
    :catch_5
    move-exception v128

    .line 547
    .local v128, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v128 .. v128}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 549
    .end local v128    # "ex":Ljava/lang/Exception;
    :cond_24
    const-string/jumbo v6, "/page/robots_setting"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 551
    :try_start_8
    const-string/jumbo v6, "botId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 552
    .restart local v86    # "botId":Ljava/lang/String;
    invoke-static/range {v86 .. v86}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 553
    invoke-static/range {v86 .. v86}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v88

    .line 554
    .restart local v88    # "botIdLong":J
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v88

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 556
    .end local v86    # "botId":Ljava/lang/String;
    .end local v88    # "botIdLong":J
    :catch_6
    move-exception v128

    .line 557
    .restart local v128    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v128 .. v128}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 559
    .end local v128    # "ex":Ljava/lang/Exception;
    :cond_25
    const-string/jumbo v6, "/page/robots_market"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 561
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v154

    .line 564
    .local v154, "nameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_9
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 565
    .restart local v21    # "bundle":Landroid/os/Bundle;
    if-eqz v154, :cond_27

    invoke-interface/range {v154 .. v154}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_27

    .line 566
    invoke-interface/range {v154 .. v154}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Ljava/lang/String;

    .line 567
    .local v143, "keyName":Ljava/lang/String;
    invoke-static/range {v143 .. v143}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_26

    .line 568
    move-object/from16 v0, p1

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v143

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_2

    .line 573
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v143    # "keyName":Ljava/lang/String;
    :catch_7
    move-exception v128

    .line 574
    .restart local v128    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v128 .. v128}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    const-string/jumbo v6, "general"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v22, "UrlUtils dispatch RobotMarket Exception:"

    aput-object v22, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {v128 .. v128}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 572
    .end local v128    # "ex":Ljava/lang/Exception;
    .restart local v21    # "bundle":Landroid/os/Bundle;
    :cond_27
    :try_start_a
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_1

    .line 578
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v154    # "nameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_28
    const-string/jumbo v6, "/page/birth_setting"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 579
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 580
    :cond_29
    const-string/jumbo v6, "/page/search_enterprise_page"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 581
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->e(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 582
    :cond_2a
    const-string/jumbo v6, "/page/createorg_from_conversation"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 583
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 585
    .restart local v9    # "cid":Ljava/lang/String;
    new-instance v83, Ljava/util/HashMap;

    invoke-direct/range {v83 .. v83}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v83, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "cid"

    move-object/from16 v0, v83

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const/16 v19, 0x0

    const-string/jumbo v20, "chat_normal_group_transto_org_click"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v83

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 589
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 590
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "intent_key_activity_task"

    new-instance v19, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 591
    const-string/jumbo v6, "key_create_org_source"

    const/16 v19, 0x19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 593
    .end local v9    # "cid":Ljava/lang/String;
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v83    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    const-string/jumbo v6, "/page/yunpan"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 594
    const-wide/16 v28, 0x0

    .line 595
    .local v28, "orgId":J
    const/16 v30, 0x0

    .line 596
    .local v30, "data":Ljava/lang/String;
    const/16 v187, 0x0

    .line 597
    .local v187, "routerFlag":Ljava/lang/String;
    const/16 v133, 0x0

    .line 599
    .local v133, "fromFalg":Ljava/lang/String;
    :try_start_b
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 600
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v28

    .line 601
    const-string/jumbo v6, "data"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 602
    const-string/jumbo v6, "route"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v187

    .line 603
    const-string/jumbo v6, "from"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    move-result-object v133

    .line 608
    .end local v98    # "corpId":Ljava/lang/String;
    :goto_3
    const-string/jumbo v6, "album"

    move-object/from16 v0, v187

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 609
    const-string/jumbo v6, "im"

    move-object/from16 v0, v133

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 611
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    sget-object v19, Lcom/alibaba/android/rimet/utils/UrlUtils;->a:Ljava/lang/String;

    const-string/jumbo v20, "cspace_messege_photo_in"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 617
    :goto_4
    new-instance v156, Lcom/alibaba/android/rimet/utils/UrlUtils$30;

    move-object/from16 v0, v156

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$30;-><init>(Landroid/app/Activity;)V

    .line 638
    .local v156, "navListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v156

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;JLcma;)V

    goto/16 :goto_1

    .line 604
    .end local v156    # "navListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :catch_8
    move-exception v123

    .line 605
    .restart local v123    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 614
    .end local v123    # "e":Ljava/lang/Exception;
    :cond_2c
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    sget-object v19, Lcom/alibaba/android/rimet/utils/UrlUtils;->a:Ljava/lang/String;

    const-string/jumbo v20, "cspace_photo_work_in"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 639
    :cond_2d
    const-string/jumbo v6, "previewDentry"

    move-object/from16 v0, v187

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 640
    new-instance v63, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct/range {v63 .. v63}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 643
    .local v63, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :try_start_c
    const-string/jumbo v6, "spaceId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 644
    const-string/jumbo v6, "fileId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 645
    const-string/jumbo v6, "fileName"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 646
    const-string/jumbo v6, "type"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 654
    :goto_5
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 655
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "data"

    move-object/from16 v0, v21

    move-object/from16 v1, v63

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    new-instance v24, Lcom/alibaba/android/rimet/utils/UrlUtils$31;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$31;-><init>(Landroid/app/Activity;)V

    .line 680
    .local v24, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v19

    const-wide/16 v22, 0x0

    move-object/from16 v20, p0

    invoke-virtual/range {v19 .. v24}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_1

    .line 647
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v24    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :catch_9
    move-exception v123

    .line 648
    .restart local v123    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CSpace"

    sget-object v19, Lcom/alibaba/android/rimet/utils/UrlUtils;->a:Ljava/lang/String;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "UrlUtils CSpace nav2SpaceDetail exception: "

    aput-object v23, v20, v22

    const/16 v22, 0x1

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "--"

    aput-object v23, v20, v22

    const/16 v22, 0x3

    .line 651
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    .line 649
    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 648
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 681
    .end local v63    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v123    # "e":Ljava/lang/Exception;
    :cond_2e
    const-string/jumbo v6, "open_share_link"

    move-object/from16 v0, v187

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 682
    const-string/jumbo v6, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v194

    .line 683
    .local v194, "shareLink":Ljava/lang/String;
    invoke-static/range {v194 .. v194}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 684
    invoke-static/range {v194 .. v194}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v19, "key"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v142

    .line 685
    .local v142, "key":Ljava/lang/String;
    const-string/jumbo v6, "EVENTBUTLER"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v19, Lcom/alibaba/android/rimet/utils/UrlUtils$32;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$32;-><init>(Landroid/app/Activity;)V

    const-class v20, Lcma;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcma;

    .line 714
    .local v31, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 716
    .end local v31    # "apiEventListener":Lcma;
    .end local v142    # "key":Ljava/lang/String;
    .end local v194    # "shareLink":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v6, "permissionSetting"

    move-object/from16 v0, v187

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 717
    const-string/jumbo v6, "spaceId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v201

    .line 718
    .local v201, "spaceId":Ljava/lang/String;
    const-string/jumbo v6, "dentryId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 719
    .local v111, "dentryId":Ljava/lang/String;
    new-instance v80, Lcom/alibaba/android/rimet/utils/UrlUtils$2;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$2;-><init>(Landroid/app/Activity;)V

    .line 739
    .local v80, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v6, Lcma;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-static {v0, v6, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v80

    .end local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v80, Lcma;

    .line 740
    .restart local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v201

    move-object/from16 v2, v111

    move-object/from16 v3, v80

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 741
    .end local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v111    # "dentryId":Ljava/lang/String;
    .end local v201    # "spaceId":Ljava/lang/String;
    :cond_30
    const-string/jumbo v6, "createShare"

    move-object/from16 v0, v187

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 742
    const-string/jumbo v6, "spaceId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v201

    .line 743
    .restart local v201    # "spaceId":Ljava/lang/String;
    const-string/jumbo v6, "dentryId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 744
    .restart local v111    # "dentryId":Ljava/lang/String;
    new-instance v80, Lcom/alibaba/android/rimet/utils/UrlUtils$3;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$3;-><init>(Landroid/app/Activity;)V

    .line 764
    .restart local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v6, Lcma;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-static {v0, v6, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v80

    .end local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v80, Lcma;

    .line 765
    .restart local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v201

    move-object/from16 v2, v111

    move-object/from16 v3, v80

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 766
    .end local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v111    # "dentryId":Ljava/lang/String;
    .end local v201    # "spaceId":Ljava/lang/String;
    :cond_31
    const-string/jumbo v6, "send"

    move-object/from16 v0, v187

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 767
    const-string/jumbo v6, "spaceId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v201

    .line 768
    .restart local v201    # "spaceId":Ljava/lang/String;
    const-string/jumbo v6, "dentryId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 769
    .restart local v111    # "dentryId":Ljava/lang/String;
    new-instance v80, Lcom/alibaba/android/rimet/utils/UrlUtils$4;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$4;-><init>(Landroid/app/Activity;)V

    .line 789
    .restart local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v6, Lcma;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-static {v0, v6, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v80

    .end local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v80, Lcma;

    .line 790
    .restart local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v201

    move-object/from16 v2, v111

    move-object/from16 v3, v80

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 793
    .end local v80    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v111    # "dentryId":Ljava/lang/String;
    .end local v201    # "spaceId":Ljava/lang/String;
    :cond_32
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const/16 v19, 0x0

    const-string/jumbo v20, "space_main_entry_click"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 795
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v26

    .line 796
    .local v26, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    const-string/jumbo v6, "EVENTBUTLER"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v19, Lcom/alibaba/android/rimet/utils/UrlUtils$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$5;-><init>(Landroid/app/Activity;)V

    const-class v20, Lcma;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcma;

    .restart local v31    # "apiEventListener":Lcma;
    move-object/from16 v27, p0

    .line 820
    invoke-virtual/range {v26 .. v31}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 822
    .end local v26    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v28    # "orgId":J
    .end local v30    # "data":Ljava/lang/String;
    .end local v31    # "apiEventListener":Lcma;
    .end local v133    # "fromFalg":Ljava/lang/String;
    .end local v187    # "routerFlag":Ljava/lang/String;
    :cond_33
    const-string/jumbo v6, "/page/maillist"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 824
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const/16 v19, 0x0

    const-string/jumbo v20, "mail_work_tab_click"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 825
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v32

    .line 827
    .local v32, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    const/16 v97, 0x0

    .line 833
    .local v97, "consumed":Z
    :try_start_d
    invoke-static/range {p2 .. p2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v21

    .line 835
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "alertType"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 836
    .local v77, "alertType":Ljava/lang/String;
    invoke-static/range {v77 .. v77}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    if-eqz v21, :cond_34

    .line 837
    const-string/jumbo v6, "alertType"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 840
    :cond_34
    const-string/jumbo v6, "email"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 841
    .local v35, "email":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    if-eqz v21, :cond_35

    .line 842
    const-string/jumbo v6, "email"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 845
    :cond_35
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 846
    .local v28, "orgId":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    if-eqz v21, :cond_36

    .line 847
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 850
    :cond_36
    const-string/jumbo v6, "login"

    move-object/from16 v0, v77

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 851
    const/4 v6, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 852
    const/16 v97, 0x1

    .line 865
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v35    # "email":Ljava/lang/String;
    .end local v77    # "alertType":Ljava/lang/String;
    :cond_37
    :goto_6
    if-nez v97, :cond_3

    .line 866
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b()Lcma;

    move-result-object v6

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcma;)V

    goto/16 :goto_1

    .line 853
    .restart local v21    # "bundle":Landroid/os/Bundle;
    .restart local v28    # "orgId":Ljava/lang/String;
    .restart local v35    # "email":Ljava/lang/String;
    .restart local v77    # "alertType":Ljava/lang/String;
    :cond_38
    :try_start_e
    const-string/jumbo v6, "org"

    move-object/from16 v0, v77

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 854
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b()Lcma;

    move-result-object v6

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 855
    const/16 v97, 0x1

    goto :goto_6

    .line 856
    :cond_39
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 857
    const-string/jumbo v6, ""

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b()Lcma;

    move-result-object v19

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 858
    const/16 v97, 0x1

    goto :goto_6

    .line 861
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v35    # "email":Ljava/lang/String;
    .end local v77    # "alertType":Ljava/lang/String;
    :catch_a
    move-exception v123

    .line 862
    .restart local v123    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 869
    .end local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v97    # "consumed":Z
    .end local v123    # "e":Ljava/lang/Exception;
    :cond_3a
    const-string/jumbo v6, "/page/dispatchorgmail"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 870
    const-string/jumbo v6, "sourceAppData"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    .line 871
    .local v126, "encodeOrgId":Ljava/lang/String;
    invoke-static/range {v126 .. v126}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 873
    .local v109, "decodeOrgId":Ljava/lang/String;
    :try_start_f
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v32

    .line 874
    .restart local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-static/range {v109 .. v109}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_1

    .line 878
    .end local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    :catch_b
    move-exception v6

    goto/16 :goto_1

    .end local v109    # "decodeOrgId":Ljava/lang/String;
    .end local v126    # "encodeOrgId":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v6, "/page/mailsignatureList"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 879
    const-string/jumbo v6, "email"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 880
    .restart local v35    # "email":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v32

    .line 881
    .restart local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 882
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 884
    :cond_3c
    const-string/jumbo v6, "CMail"

    const-string/jumbo v19, "MAIL_SIGNATURE_LIST_PATH, email is not valid"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 886
    .end local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v35    # "email":Ljava/lang/String;
    :cond_3d
    const-string/jumbo v6, "/page/mailcompose"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 888
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v32

    .line 889
    .restart local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    const-string/jumbo v6, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 890
    .restart local v34    # "name":Ljava/lang/String;
    const-string/jumbo v6, "email"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 891
    .restart local v35    # "email":Ljava/lang/String;
    const-string/jumbo v6, "subject"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 892
    .local v36, "subject":Ljava/lang/String;
    const-string/jumbo v6, "source"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v200

    .line 894
    .restart local v200    # "source":Ljava/lang/String;
    invoke-static/range {v200 .. v200}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 895
    new-instance v179, Ljava/util/HashMap;

    invoke-direct/range {v179 .. v179}, Ljava/util/HashMap;-><init>()V

    .line 896
    .local v179, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "source"

    move-object/from16 v0, v179

    move-object/from16 v1, v200

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const/16 v19, 0x0

    const-string/jumbo v20, "mail_create_transfer_click"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v179

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 899
    .end local v179    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b()Lcma;

    move-result-object v37

    move-object/from16 v33, p0

    invoke-virtual/range {v32 .. v37}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 900
    .end local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v34    # "name":Ljava/lang/String;
    .end local v35    # "email":Ljava/lang/String;
    .end local v36    # "subject":Ljava/lang/String;
    .end local v200    # "source":Ljava/lang/String;
    :cond_3f
    const-string/jumbo v6, "/page/maildetail"

    move-object/from16 v0, v173

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 902
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v32

    .line 903
    .restart local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    const-string/jumbo v6, "email"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 904
    .restart local v35    # "email":Ljava/lang/String;
    const-string/jumbo v6, "mailmessageid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v145

    .line 906
    .local v145, "mailId":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b()Lcma;

    move-result-object v6

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v145

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 907
    .end local v32    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v35    # "email":Ljava/lang/String;
    .end local v145    # "mailId":Ljava/lang/String;
    :cond_40
    const-string/jumbo v6, "/page/confenencelist"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 909
    :try_start_10
    new-instance v213, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v213

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    .restart local v213    # "url":Ljava/net/URI;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    invoke-virtual/range {v213 .. v213}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/alibaba/android/rimet/utils/UrlUtils$6;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/android/rimet/utils/UrlUtils$6;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_1

    .line 917
    .end local v213    # "url":Ljava/net/URI;
    :catch_c
    move-exception v123

    .line 918
    .local v123, "e":Ljava/net/URISyntaxException;
    invoke-virtual/range {v123 .. v123}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 920
    .end local v123    # "e":Ljava/net/URISyntaxException;
    :cond_41
    const-string/jumbo v6, "/page/calendar"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 922
    :try_start_11
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 923
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "calendar_date_long"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 924
    .local v108, "dateStr":Ljava/lang/String;
    const-wide/16 v106, 0x0

    .line 925
    .local v106, "dateLong":J
    invoke-static/range {v108 .. v108}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 926
    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v106

    .line 928
    :cond_42
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v100

    .line 929
    .local v100, "corpOrgId":J
    const-string/jumbo v6, "oid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v163

    .line 930
    .local v163, "oidStr":Ljava/lang/String;
    const-wide/16 v164, 0x0

    .line 931
    .local v164, "oid":J
    invoke-static/range {v163 .. v163}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 932
    invoke-static/range {v163 .. v163}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v164

    .line 934
    :cond_43
    const-wide/16 v22, 0x0

    cmp-long v6, v100, v22

    if-nez v6, :cond_44

    move-wide/from16 v49, v164

    .line 935
    .local v49, "finalOrgId":J
    :goto_7
    move-wide/from16 v130, v106

    .line 936
    .local v130, "finalDateLog":J
    const-string/jumbo v213, "https://qr.dingtalk.com/calendar/attendance_home.html"

    .line 937
    .local v213, "url":Ljava/lang/String;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    new-instance v19, Lcom/alibaba/android/rimet/utils/UrlUtils$7;

    move-object/from16 v0, v19

    move-wide/from16 v1, v49

    move-wide/from16 v3, v130

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/rimet/utils/UrlUtils$7;-><init>(JJ)V

    move-object/from16 v0, v213

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_1

    .line 945
    .end local v49    # "finalOrgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v100    # "corpOrgId":J
    .end local v106    # "dateLong":J
    .end local v108    # "dateStr":Ljava/lang/String;
    .end local v130    # "finalDateLog":J
    .end local v163    # "oidStr":Ljava/lang/String;
    .end local v164    # "oid":J
    .end local v213    # "url":Ljava/lang/String;
    :catch_d
    move-exception v123

    .line 946
    .local v123, "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v123    # "e":Ljava/lang/Exception;
    .restart local v98    # "corpId":Ljava/lang/String;
    .restart local v100    # "corpOrgId":J
    .restart local v106    # "dateLong":J
    .restart local v108    # "dateStr":Ljava/lang/String;
    .restart local v163    # "oidStr":Ljava/lang/String;
    .restart local v164    # "oid":J
    :cond_44
    move-wide/from16 v49, v100

    .line 934
    goto :goto_7

    .line 948
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v100    # "corpOrgId":J
    .end local v106    # "dateLong":J
    .end local v108    # "dateStr":Ljava/lang/String;
    .end local v163    # "oidStr":Ljava/lang/String;
    .end local v164    # "oid":J
    :cond_45
    const-string/jumbo v6, "/page/attendance"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 950
    :try_start_12
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 951
    .local v28, "orgId":J
    const-string/jumbo v6, "deptId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    .line 952
    .local v40, "deptId":J
    const-string/jumbo v6, "date"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 953
    .local v42, "currentTimeMillis":J
    const-string/jumbo v6, "appId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 954
    .local v45, "appId":Ljava/lang/String;
    const-string/jumbo v6, "subAppId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 955
    .local v46, "subAppId":Ljava/lang/String;
    const-string/jumbo v6, "itemType"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .line 956
    .local v44, "type":I
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 957
    .local v47, "title":Ljava/lang/String;
    const-string/jumbo v213, "https://qr.dingtalk.com/calendar/attendance.html"

    .line 958
    .restart local v213    # "url":Ljava/lang/String;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    new-instance v37, Lcom/alibaba/android/rimet/utils/UrlUtils$8;

    move-wide/from16 v38, v28

    invoke-direct/range {v37 .. v47}, Lcom/alibaba/android/rimet/utils/UrlUtils$8;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v213

    move-object/from16 v1, v37

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    goto/16 :goto_1

    .line 974
    .end local v28    # "orgId":J
    .end local v40    # "deptId":J
    .end local v42    # "currentTimeMillis":J
    .end local v44    # "type":I
    .end local v45    # "appId":Ljava/lang/String;
    .end local v46    # "subAppId":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    .end local v213    # "url":Ljava/lang/String;
    :catch_e
    move-exception v123

    .line 975
    .restart local v123    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 977
    .end local v123    # "e":Ljava/lang/Exception;
    :cond_46
    const-string/jumbo v6, "/action/switchtab"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 978
    const-string/jumbo v6, "index"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v138

    .line 979
    .local v138, "index":Ljava/lang/String;
    const-string/jumbo v6, "showAnim"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 980
    .local v197, "showAnim":Ljava/lang/String;
    if-eqz v138, :cond_3

    .line 981
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/ding/home.html"

    new-instance v20, Lcom/alibaba/android/rimet/utils/UrlUtils$9;

    move-object/from16 v0, v20

    move-object/from16 v1, v138

    move-object/from16 v2, p1

    move-object/from16 v3, v197

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/utils/UrlUtils$9;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1043
    .end local v138    # "index":Ljava/lang/String;
    .end local v197    # "showAnim":Ljava/lang/String;
    :cond_47
    const-string/jumbo v6, "/page/bosslist"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1044
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1045
    .local v169, "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1046
    .restart local v98    # "corpId":Ljava/lang/String;
    move-object/from16 v0, v169

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1047
    .restart local v28    # "orgId":J
    const-wide/16 v22, 0x0

    cmp-long v6, v28, v22

    if-lez v6, :cond_3

    .line 1048
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;J)V

    goto/16 :goto_1

    .line 1050
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v169    # "orgIdString":Ljava/lang/String;
    :cond_48
    const-string/jumbo v6, "/page/createorg"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1051
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1052
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "fromSighUp"

    const/16 v19, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1054
    const-string/jumbo v6, "from"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v202

    .line 1055
    .local v202, "src":Ljava/lang/String;
    invoke-static/range {v202 .. v202}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 1057
    :try_start_13
    invoke-static/range {v202 .. v202}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v132

    .line 1058
    .local v132, "from":I
    const-string/jumbo v6, "key_create_org_source"

    move-object/from16 v0, v21

    move/from16 v1, v132

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_f

    .line 1063
    .end local v132    # "from":I
    :cond_49
    :goto_8
    const-string/jumbo v6, "jumpUrl"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1064
    .restart local v18    # "jumpUrl":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 1065
    const-string/jumbo v6, "key_create_org_jump_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_4a
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1068
    .restart local v47    # "title":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1069
    const-string/jumbo v6, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_4b
    const-string/jumbo v6, "banner"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 1072
    .local v85, "bannerMediaId":Ljava/lang/String;
    invoke-static/range {v85 .. v85}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 1073
    const-string/jumbo v6, "media_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v85

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_4c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 1059
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    .end local v85    # "bannerMediaId":Ljava/lang/String;
    :catch_f
    move-exception v123

    .line 1060
    .local v123, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_8

    .line 1076
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .end local v202    # "src":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v6, "/page/createorg_v1"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1077
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v21

    .line 1078
    .restart local v21    # "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1079
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_4e
    const-string/jumbo v6, "/page/createorg_v1_legacy"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1080
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v21

    .line 1081
    .restart local v21    # "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1082
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_4f
    const-string/jumbo v6, "/page/createorg_v2"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1084
    const-string/jumbo v6, "tid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 1085
    .local v204, "templateId":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1087
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "from"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v202

    .line 1088
    .restart local v202    # "src":Ljava/lang/String;
    invoke-static/range {v202 .. v202}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 1090
    :try_start_14
    invoke-static/range {v202 .. v202}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v132

    .line 1091
    .restart local v132    # "from":I
    const-string/jumbo v6, "key_create_org_source"

    move-object/from16 v0, v21

    move/from16 v1, v132

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_10

    .line 1096
    .end local v132    # "from":I
    :cond_50
    :goto_9
    const-string/jumbo v6, "jumpUrl"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1097
    .restart local v18    # "jumpUrl":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 1098
    const-string/jumbo v6, "key_create_org_jump_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_51
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1101
    .restart local v47    # "title":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 1102
    const-string/jumbo v6, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_52
    const-string/jumbo v6, "banner"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 1105
    .restart local v85    # "bannerMediaId":Ljava/lang/String;
    invoke-static/range {v85 .. v85}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 1106
    const-string/jumbo v6, "media_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v85

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_53
    invoke-static/range {v204 .. v204}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 1111
    :try_start_15
    invoke-static/range {v204 .. v204}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_11

    move-result-wide v206

    .line 1115
    .local v206, "templateIdLong":J
    :goto_a
    const-wide/16 v22, -0x1

    cmp-long v6, v206, v22

    if-nez v6, :cond_54

    .line 1116
    const-string/jumbo v6, "fromSighUp"

    const/16 v19, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1117
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1092
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    .end local v85    # "bannerMediaId":Ljava/lang/String;
    .end local v206    # "templateIdLong":J
    :catch_10
    move-exception v123

    .line 1093
    .restart local v123    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_9

    .line 1113
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "jumpUrl":Ljava/lang/String;
    .restart local v47    # "title":Ljava/lang/String;
    .restart local v85    # "bannerMediaId":Ljava/lang/String;
    :catch_11
    move-exception v6

    const-wide/16 v206, -0x1

    .restart local v206    # "templateIdLong":J
    goto :goto_a

    .line 1119
    :cond_54
    const-string/jumbo v6, "template_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v206

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1120
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1123
    .end local v206    # "templateIdLong":J
    :cond_55
    const-string/jumbo v6, "fromSighUp"

    const/16 v19, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1126
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v47    # "title":Ljava/lang/String;
    .end local v85    # "bannerMediaId":Ljava/lang/String;
    .end local v202    # "src":Ljava/lang/String;
    .end local v204    # "templateId":Ljava/lang/String;
    :cond_56
    const-string/jumbo v6, "/page/createorg_v2_h5"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1128
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1129
    :cond_57
    const-string/jumbo v6, "/page/createorg_v4"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1130
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v21

    .line 1131
    .restart local v21    # "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1132
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_58
    const-string/jumbo v6, "/page/crmconversation"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 1133
    const-string/jumbo v6, "customerid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 1134
    .local v99, "customerId":Ljava/lang/String;
    invoke-static/range {v99 .. v99}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1135
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1137
    .end local v99    # "customerId":Ljava/lang/String;
    :cond_59
    const-string/jumbo v6, "/page/groupchat"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1138
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1139
    :cond_5a
    const-string/jumbo v6, "/page/manageorg"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1140
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1141
    .restart local v169    # "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1142
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "deptId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 1143
    .local v114, "departIdStr":Ljava/lang/String;
    const-string/jumbo v6, "tips"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v205

    .line 1144
    .local v205, "tipsMessage":Ljava/lang/String;
    const-string/jumbo v6, "showAddStaff"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v196

    .line 1146
    .local v196, "showAddStaffString":Ljava/lang/String;
    const-wide/16 v112, 0x0

    .line 1147
    .local v112, "departId":J
    invoke-static/range {v114 .. v114}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 1149
    :try_start_16
    invoke-static/range {v114 .. v114}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_12

    move-result-wide v112

    .line 1155
    :cond_5b
    :goto_b
    move-object/from16 v0, v169

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1156
    .restart local v28    # "orgId":J
    const-wide/16 v22, 0x0

    cmp-long v6, v28, v22

    if-lez v6, :cond_3

    .line 1157
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v158

    .line 1158
    .local v158, "oaInterface":Lcom/alibaba/dingtalk/oabase/OAInterface;
    move-wide/from16 v118, v112

    .line 1159
    .local v118, "did":J
    move-object/from16 v0, v158

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v151

    .line 1160
    .local v151, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v151, :cond_5e

    .line 1161
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "bread_node_name"

    move-object/from16 v0, v151

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v6, "display_enterprise_oid"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1164
    const-string/jumbo v6, "display_department_oid"

    move-object/from16 v0, v21

    move-wide/from16 v1, v118

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1165
    const-string/jumbo v6, "title"

    const v19, 0x7f091f74

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static/range {v205 .. v205}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 1167
    const-string/jumbo v6, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v205

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_5c
    const-string/jumbo v19, "intent_key_show_add_staff"

    const-string/jumbo v6, "1"

    move-object/from16 v0, v196

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1170
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1150
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":J
    .end local v118    # "did":J
    .end local v151    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v158    # "oaInterface":Lcom/alibaba/dingtalk/oabase/OAInterface;
    :catch_12
    move-exception v123

    .line 1151
    .restart local v123    # "e":Ljava/lang/NumberFormatException;
    const-class v6, Lcom/alibaba/android/rimet/utils/UrlUtils;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 1152
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "bad param departId=%s"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    aput-object v114, v6, v19

    goto/16 :goto_b

    .line 1169
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "bundle":Landroid/os/Bundle;
    .restart local v28    # "orgId":J
    .restart local v118    # "did":J
    .restart local v151    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .restart local v158    # "oaInterface":Lcom/alibaba/dingtalk/oabase/OAInterface;
    :cond_5d
    const/4 v6, 0x0

    goto :goto_c

    .line 1172
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_5e
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "model null orgId=%d"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    goto/16 :goto_1

    .line 1175
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v112    # "departId":J
    .end local v114    # "departIdStr":Ljava/lang/String;
    .end local v118    # "did":J
    .end local v151    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v158    # "oaInterface":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .end local v169    # "orgIdString":Ljava/lang/String;
    .end local v196    # "showAddStaffString":Ljava/lang/String;
    .end local v205    # "tipsMessage":Ljava/lang/String;
    :cond_5f
    const-string/jumbo v6, "/page/orginfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 1176
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1177
    .restart local v169    # "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1178
    .restart local v98    # "corpId":Ljava/lang/String;
    move-object/from16 v0, v169

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1179
    .restart local v28    # "orgId":J
    const-wide/16 v22, 0x0

    cmp-long v6, v28, v22

    if-lez v6, :cond_3

    .line 1180
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 1182
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v169    # "orgIdString":Ljava/lang/String;
    :cond_60
    const-string/jumbo v6, "/page/orginvite"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1184
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1185
    .restart local v169    # "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1186
    .restart local v98    # "corpId":Ljava/lang/String;
    move-object/from16 v0, v169

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1187
    .restart local v28    # "orgId":J
    const-wide/16 v22, 0x0

    cmp-long v6, v28, v22

    if-gtz v6, :cond_61

    .line 1188
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "model null orgId=%d"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    goto/16 :goto_1

    .line 1190
    :cond_61
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JZ)V

    goto/16 :goto_1

    .line 1192
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v169    # "orgIdString":Ljava/lang/String;
    :cond_62
    const-string/jumbo v6, "/page/attendanceDetail"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 1193
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1194
    .restart local v169    # "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, "staffId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1195
    .local v51, "staffId":Ljava/lang/String;
    const-string/jumbo v6, "date"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 1196
    .restart local v108    # "dateStr":Ljava/lang/String;
    const-string/jumbo v6, "appId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1197
    .restart local v45    # "appId":Ljava/lang/String;
    const-string/jumbo v6, "subAppId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1198
    .restart local v46    # "subAppId":Ljava/lang/String;
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1199
    .restart local v47    # "title":Ljava/lang/String;
    const-wide/16 v28, 0x0

    .line 1200
    .restart local v28    # "orgId":J
    const-wide/16 v104, 0x0

    .line 1201
    .local v104, "date":J
    invoke-static/range {v169 .. v169}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 1203
    :try_start_17
    invoke-static/range {v169 .. v169}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1204
    invoke-static/range {v108 .. v108}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_22

    move-result-wide v104

    .line 1209
    :cond_63
    :goto_d
    const-wide/16 v22, 0x0

    cmp-long v6, v28, v22

    if-eqz v6, :cond_3

    .line 1210
    move-wide/from16 v49, v28

    .line 1211
    .restart local v49    # "finalOrgId":J
    move-wide/from16 v52, v104

    .line 1212
    .local v52, "finalDate":J
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/calendar/attendance_detail.html"

    new-instance v48, Lcom/alibaba/android/rimet/utils/UrlUtils$10;

    move-object/from16 v54, v45

    move-object/from16 v55, v46

    move-object/from16 v56, v47

    invoke-direct/range {v48 .. v56}, Lcom/alibaba/android/rimet/utils/UrlUtils$10;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1225
    .end local v28    # "orgId":J
    .end local v45    # "appId":Ljava/lang/String;
    .end local v46    # "subAppId":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    .end local v49    # "finalOrgId":J
    .end local v51    # "staffId":Ljava/lang/String;
    .end local v52    # "finalDate":J
    .end local v104    # "date":J
    .end local v108    # "dateStr":Ljava/lang/String;
    .end local v169    # "orgIdString":Ljava/lang/String;
    :cond_64
    const-string/jumbo v6, "/page/redpacketsDetail"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1226
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    .line 1227
    .local v91, "cidStr":Ljava/lang/String;
    const-string/jumbo v6, "senderId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v189

    .line 1228
    .local v189, "senderIdStr":Ljava/lang/String;
    const-string/jumbo v6, "clusterId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1229
    .local v58, "clusterId":Ljava/lang/String;
    const-string/jumbo v6, "clusterType"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 1230
    .local v93, "clusterTypeStr":Ljava/lang/String;
    const/16 v92, 0x0

    .line 1232
    .local v92, "clusterType":I
    :try_start_18
    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_20

    move-result v92

    .line 1236
    :goto_e
    const-wide/16 v190, 0x0

    .line 1238
    .local v190, "senderId":J
    :try_start_19
    invoke-static/range {v189 .. v189}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_21

    move-result-wide v190

    .line 1242
    :goto_f
    move-wide/from16 v56, v190

    .line 1243
    .local v56, "finalSenderId":J
    move/from16 v59, v92

    .line 1244
    .local v59, "finalClusterType":I
    const-class v6, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v54, Lcom/alibaba/android/rimet/utils/UrlUtils$11;

    move-object/from16 v55, p0

    invoke-direct/range {v54 .. v59}, Lcom/alibaba/android/rimet/utils/UrlUtils$11;-><init>(Landroid/app/Activity;JLjava/lang/String;I)V

    move-object/from16 v0, v54

    move-object/from16 v1, v91

    invoke-interface {v6, v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1261
    .end local v56    # "finalSenderId":J
    .end local v58    # "clusterId":Ljava/lang/String;
    .end local v59    # "finalClusterType":I
    .end local v91    # "cidStr":Ljava/lang/String;
    .end local v92    # "clusterType":I
    .end local v93    # "clusterTypeStr":Ljava/lang/String;
    .end local v189    # "senderIdStr":Ljava/lang/String;
    .end local v190    # "senderId":J
    :cond_65
    const-string/jumbo v6, "/page/sharespace"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 1263
    const-string/jumbo v6, "org_id"

    const-wide/16 v22, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v6, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v28

    .line 1264
    .restart local v28    # "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1265
    .end local v28    # "orgId":J
    :cond_66
    const-string/jumbo v6, "/page/dingxiaomi"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1266
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v102

    .line 1267
    .local v102, "currentUid":J
    const-wide/32 v22, 0x39dfa

    move-wide/from16 v0, v102

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(JJ)Ljava/lang/String;

    move-result-object v9

    .line 1268
    .restart local v9    # "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v6, v0, v9, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1269
    .end local v9    # "cid":Ljava/lang/String;
    .end local v102    # "currentUid":J
    :cond_67
    const-string/jumbo v6, "/page/crminfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1271
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1272
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "appid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 1273
    .local v81, "appIdStr":Ljava/lang/String;
    const-string/jumbo v6, "staffid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1274
    .restart local v51    # "staffId":Ljava/lang/String;
    const-wide/16 v28, 0x0

    .line 1275
    .restart local v28    # "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v82

    .line 1276
    .local v82, "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v82, :cond_68

    .line 1277
    move-object/from16 v0, v82

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    move-wide/from16 v28, v0

    .line 1279
    :cond_68
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1280
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "corp_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string/jumbo v6, "intent_key_appId"

    move-object/from16 v0, v21

    move-object/from16 v1, v81

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string/jumbo v6, "staff_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string/jumbo v6, "display_enterprise_oid"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1284
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v6

    const-string/jumbo v19, "c_config"

    const-string/jumbo v20, "crm_slide"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v215

    .line 1285
    .restart local v215    # "value":Ljava/lang/String;
    invoke-static/range {v215 .. v215}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 1287
    :try_start_1a
    new-instance v141, Lorg/json/JSONObject;

    move-object/from16 v0, v141

    move-object/from16 v1, v215

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v141, "json":Lorg/json/JSONObject;
    move-object/from16 v0, v141

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1289
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_13

    goto/16 :goto_1

    .line 1295
    .end local v141    # "json":Lorg/json/JSONObject;
    :catch_13
    move-exception v123

    .line 1296
    .local v123, "e":Lorg/json/JSONException;
    invoke-virtual/range {v123 .. v123}, Lorg/json/JSONException;->printStackTrace()V

    .line 1297
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1298
    const-string/jumbo v6, "user_ct"

    const-string/jumbo v19, "crm_slide"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-object v215, v20, v22

    const/16 v22, 0x1

    invoke-virtual/range {v123 .. v123}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1291
    .end local v123    # "e":Lorg/json/JSONException;
    .restart local v141    # "json":Lorg/json/JSONObject;
    :cond_69
    const/4 v6, 0x1

    :try_start_1b
    move-object/from16 v0, v141

    move-object/from16 v1, v98

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1292
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->m(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1293
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v6

    const-string/jumbo v19, "c_config"

    const-string/jumbo v20, "crm_slide"

    invoke-virtual/range {v141 .. v141}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_13

    goto/16 :goto_1

    .line 1301
    .end local v141    # "json":Lorg/json/JSONObject;
    :cond_6a
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->m(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1302
    new-instance v141, Lorg/json/JSONObject;

    invoke-direct/range {v141 .. v141}, Lorg/json/JSONObject;-><init>()V

    .line 1304
    .restart local v141    # "json":Lorg/json/JSONObject;
    const/4 v6, 0x1

    :try_start_1c
    move-object/from16 v0, v141

    move-object/from16 v1, v98

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1305
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v6

    const-string/jumbo v19, "c_config"

    const-string/jumbo v20, "crm_slide"

    invoke-virtual/range {v141 .. v141}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_14

    goto/16 :goto_1

    .line 1306
    :catch_14
    move-exception v123

    .line 1307
    .restart local v123    # "e":Lorg/json/JSONException;
    invoke-virtual/range {v123 .. v123}, Lorg/json/JSONException;->printStackTrace()V

    .line 1308
    const-string/jumbo v6, "user_ct"

    const-string/jumbo v19, "crm_slide"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-object v215, v20, v22

    const/16 v22, 0x1

    invoke-virtual/range {v123 .. v123}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1311
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":J
    .end local v51    # "staffId":Ljava/lang/String;
    .end local v81    # "appIdStr":Ljava/lang/String;
    .end local v82    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v123    # "e":Lorg/json/JSONException;
    .end local v141    # "json":Lorg/json/JSONObject;
    .end local v215    # "value":Ljava/lang/String;
    :cond_6b
    const-string/jumbo v6, "/page/extcontact"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1312
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1313
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "appid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 1314
    const-string/jumbo v6, "staffid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 1315
    const-wide/16 v28, 0x0

    .line 1316
    .restart local v28    # "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v82

    .line 1317
    .restart local v82    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v82, :cond_6c

    .line 1318
    move-object/from16 v0, v82

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    move-wide/from16 v28, v0

    .line 1320
    :cond_6c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/app/Activity;J)V

    goto/16 :goto_1

    .line 1321
    .end local v28    # "orgId":J
    .end local v82    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_6d
    const-string/jumbo v6, "/page/batchAddExtContacts"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1322
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1323
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1324
    .local v28, "orgId":Ljava/lang/String;
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1325
    .restart local v47    # "title":Ljava/lang/String;
    const-wide/16 v146, 0x0

    .line 1326
    .local v146, "longOrgId":J
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1327
    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 1328
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v146

    .line 1337
    :cond_6e
    :goto_10
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1338
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "org_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v146

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1339
    const-string/jumbo v6, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->s(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1332
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_6f
    :try_start_1d
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_15

    move-result-wide v146

    goto :goto_10

    .line 1333
    :catch_15
    move-exception v123

    .line 1334
    .local v123, "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 1341
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v123    # "e":Ljava/lang/Exception;
    .end local v146    # "longOrgId":J
    :cond_70
    const-string/jumbo v6, "/action/crmCustomerList"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1343
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1344
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v168

    .line 1345
    .local v168, "orgIdStr":Ljava/lang/String;
    const-string/jumbo v6, "staffid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1346
    .restart local v51    # "staffId":Ljava/lang/String;
    const-wide/16 v28, 0x0

    .line 1348
    .local v28, "orgId":J
    :try_start_1e
    invoke-static/range {v168 .. v168}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1349
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v171

    .line 1350
    .local v171, "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v171, :cond_71

    move-object/from16 v0, v171

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    move-wide/from16 v28, v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_16

    .line 1359
    .end local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_11
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1360
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "staff_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string/jumbo v6, "display_enterprise_oid"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1362
    const-string/jumbo v6, "choose_enterprise_oid"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1363
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1350
    .end local v21    # "bundle":Landroid/os/Bundle;
    .restart local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_71
    const-wide/16 v28, 0x0

    goto :goto_11

    .line 1352
    .end local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_72
    :try_start_1f
    invoke-static/range {v168 .. v168}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_16

    move-result-wide v28

    goto :goto_11

    .line 1354
    :catch_16
    move-exception v123

    .line 1355
    .local v123, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1357
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "bad param orgIdStr=%s"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    aput-object v168, v6, v19

    goto :goto_11

    .line 1364
    .end local v28    # "orgId":J
    .end local v51    # "staffId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .end local v168    # "orgIdStr":Ljava/lang/String;
    :cond_73
    const-string/jumbo v6, "/action/crmFollowList"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1366
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1367
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v168

    .line 1368
    .restart local v168    # "orgIdStr":Ljava/lang/String;
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1369
    .restart local v47    # "title":Ljava/lang/String;
    const-string/jumbo v6, "appId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1370
    .restart local v45    # "appId":Ljava/lang/String;
    const-string/jumbo v6, "showSubordinate"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v198

    .line 1371
    .local v198, "showSubEmp":Z
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1372
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-wide/16 v28, 0x0

    .line 1374
    .restart local v28    # "orgId":J
    :try_start_20
    invoke-static/range {v168 .. v168}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 1375
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v171

    .line 1376
    .restart local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v171, :cond_74

    move-object/from16 v0, v171

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    move-wide/from16 v28, v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_17

    .line 1385
    .end local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_12
    const-string/jumbo v6, "display_enterprise_oid"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1386
    const-string/jumbo v6, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v6, "intent_key_appId"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string/jumbo v6, "intent_key_showSubEmp"

    move-object/from16 v0, v21

    move/from16 v1, v198

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1389
    new-instance v159, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct/range {v159 .. v159}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 1390
    .local v159, "object":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v159

    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 1391
    move/from16 v0, v198

    move-object/from16 v1, v159

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 1392
    const-string/jumbo v6, "intent_key_filter_model"

    move-object/from16 v0, v21

    move-object/from16 v1, v159

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1393
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1376
    .end local v159    # "object":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .restart local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_74
    const-wide/16 v28, 0x0

    goto :goto_12

    .line 1378
    .end local v171    # "orgObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_75
    :try_start_21
    invoke-static/range {v168 .. v168}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_17

    move-result-wide v28

    goto :goto_12

    .line 1380
    :catch_17
    move-exception v123

    .line 1381
    .restart local v123    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1383
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "bad param orgIdStr=%s"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    aput-object v168, v6, v19

    goto :goto_12

    .line 1394
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":J
    .end local v45    # "appId":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .end local v168    # "orgIdStr":Ljava/lang/String;
    .end local v198    # "showSubEmp":Z
    :cond_76
    const-string/jumbo v6, "/page/dingtalk_id_settings"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1395
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1396
    :cond_77
    const-string/jumbo v6, "/page/create_call_from_conversation"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1397
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1398
    .restart local v9    # "cid":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1399
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v9}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1401
    .end local v9    # "cid":Ljava/lang/String;
    :cond_78
    const-string/jumbo v6, "/action/login"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1402
    const-string/jumbo v6, "code"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v180

    .line 1403
    .local v180, "qrcode":Ljava/lang/String;
    invoke-static/range {v180 .. v180}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1404
    new-instance v136, Landroid/os/Bundle;

    invoke-direct/range {v136 .. v136}, Landroid/os/Bundle;-><init>()V

    .line 1405
    .local v136, "i":Landroid/os/Bundle;
    const-string/jumbo v6, "QR_CODE_RESULT_TYPE"

    const/16 v19, 0x1

    move-object/from16 v0, v136

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    const-string/jumbo v6, "qrcode"

    move-object/from16 v0, v136

    move-object/from16 v1, v180

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string/jumbo v6, "type"

    const/16 v19, 0x0

    move-object/from16 v0, v136

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1408
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1410
    .end local v136    # "i":Landroid/os/Bundle;
    .end local v180    # "qrcode":Ljava/lang/String;
    :cond_79
    const-string/jumbo v6, "/action/oa_login"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1411
    const-string/jumbo v6, "code"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v180

    .line 1412
    .restart local v180    # "qrcode":Ljava/lang/String;
    const-string/jumbo v6, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1413
    .restart local v47    # "title":Ljava/lang/String;
    const-string/jumbo v6, "desc"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    .line 1414
    .local v115, "desc":Ljava/lang/String;
    invoke-static/range {v180 .. v180}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1415
    new-instance v136, Landroid/os/Bundle;

    invoke-direct/range {v136 .. v136}, Landroid/os/Bundle;-><init>()V

    .line 1416
    .restart local v136    # "i":Landroid/os/Bundle;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 1417
    const-string/jumbo v6, "title"

    move-object/from16 v0, v136

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_7a
    invoke-static/range {v115 .. v115}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 1420
    const-string/jumbo v6, "desc"

    move-object/from16 v0, v136

    move-object/from16 v1, v115

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_7b
    const-string/jumbo v6, "QR_CODE_RESULT_TYPE"

    const/16 v19, 0x1

    move-object/from16 v0, v136

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1423
    const-string/jumbo v6, "qrcode"

    move-object/from16 v0, v136

    move-object/from16 v1, v180

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string/jumbo v6, "type"

    const/16 v19, 0x1

    move-object/from16 v0, v136

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1425
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1427
    .end local v47    # "title":Ljava/lang/String;
    .end local v115    # "desc":Ljava/lang/String;
    .end local v136    # "i":Landroid/os/Bundle;
    .end local v180    # "qrcode":Ljava/lang/String;
    :cond_7c
    const-string/jumbo v6, "/action/debug_login"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1428
    const-string/jumbo v6, "code"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v180

    .line 1429
    .restart local v180    # "qrcode":Ljava/lang/String;
    invoke-static/range {v180 .. v180}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1430
    new-instance v136, Landroid/os/Bundle;

    invoke-direct/range {v136 .. v136}, Landroid/os/Bundle;-><init>()V

    .line 1431
    .restart local v136    # "i":Landroid/os/Bundle;
    const-string/jumbo v6, "QR_CODE_RESULT_TYPE"

    const/16 v19, 0x1

    move-object/from16 v0, v136

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    const-string/jumbo v6, "qrcode"

    move-object/from16 v0, v136

    move-object/from16 v1, v180

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string/jumbo v6, "type"

    const/16 v19, 0x3

    move-object/from16 v0, v136

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1434
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1436
    .end local v136    # "i":Landroid/os/Bundle;
    .end local v180    # "qrcode":Ljava/lang/String;
    :cond_7d
    const-string/jumbo v6, "/page/attendAssistant"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1439
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1440
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v170

    .line 1441
    .local v170, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v170, :cond_3

    .line 1442
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v61

    move-object/from16 v0, v170

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x9e

    const/16 v66, 0x1

    invoke-virtual/range {v61 .. v66}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v149

    .line 1443
    .local v149, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v149, :cond_3

    .line 1445
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    move-object/from16 v0, v149

    invoke-virtual {v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v84

    .line 1446
    .local v84, "attendHomePage":Ljava/lang/String;
    invoke-static/range {v84 .. v84}, Lcpx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v213

    .line 1447
    .restart local v213    # "url":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1448
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v213

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1451
    new-instance v90, Landroid/os/Bundle;

    invoke-direct/range {v90 .. v90}, Landroid/os/Bundle;-><init>()V

    .line 1452
    .local v90, "bundleRoute":Landroid/os/Bundle;
    const-string/jumbo v6, "corp_id"

    move-object/from16 v0, v90

    move-object/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToAttendRoutePage(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1456
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v84    # "attendHomePage":Ljava/lang/String;
    .end local v90    # "bundleRoute":Landroid/os/Bundle;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v149    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v170    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v213    # "url":Ljava/lang/String;
    :cond_7e
    const-string/jumbo v6, "/action/change_ent_group"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 1457
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1458
    .restart local v9    # "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1459
    .end local v9    # "cid":Ljava/lang/String;
    :cond_7f
    const-string/jumbo v6, "/page/channelManagement"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 1460
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1461
    .restart local v169    # "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, ""

    move-object/from16 v0, v169

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1462
    .restart local v28    # "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1463
    .end local v28    # "orgId":J
    .end local v169    # "orgIdString":Ljava/lang/String;
    :cond_80
    const-string/jumbo v6, "/page/edit_employee"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 1464
    const-string/jumbo v6, "uid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v210

    .line 1466
    .local v210, "uid":J
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1467
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1468
    .restart local v169    # "orgIdString":Ljava/lang/String;
    move-object/from16 v0, v169

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 1470
    .restart local v28    # "orgId":J
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1471
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v210

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1472
    const-string/jumbo v6, "org_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1475
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->r(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1476
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v169    # "orgIdString":Ljava/lang/String;
    .end local v210    # "uid":J
    :cond_81
    const-string/jumbo v6, "/page/mailconfig"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1478
    invoke-static/range {p2 .. p2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v21

    .line 1479
    .restart local v21    # "bundle":Landroid/os/Bundle;
    if-eqz v21, :cond_82

    .line 1480
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v87

    .line 1481
    .local v87, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v6, "oid"

    const-string/jumbo v19, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v164

    .line 1482
    .local v164, "oid":Ljava/lang/String;
    const-string/jumbo v6, "domain"

    const-string/jumbo v19, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 1483
    .local v121, "domain":Ljava/lang/String;
    const-string/jumbo v6, "type"

    const-string/jumbo v19, "v1"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1484
    .local v44, "type":Ljava/lang/String;
    const-string/jumbo v6, "oid"

    move-object/from16 v0, v87

    move-object/from16 v1, v164

    invoke-virtual {v0, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v19, "domain"

    move-object/from16 v0, v19

    move-object/from16 v1, v121

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1485
    const-string/jumbo v6, "type"

    move-object/from16 v0, v87

    move-object/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1486
    invoke-virtual/range {v87 .. v87}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v213

    .line 1490
    .end local v44    # "type":Ljava/lang/String;
    .end local v87    # "builder":Landroid/net/Uri$Builder;
    .end local v121    # "domain":Ljava/lang/String;
    .end local v164    # "oid":Ljava/lang/String;
    .restart local v213    # "url":Ljava/lang/String;
    :goto_13
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v213

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1488
    .end local v213    # "url":Ljava/lang/String;
    :cond_82
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v213

    .restart local v213    # "url":Ljava/lang/String;
    goto :goto_13

    .line 1491
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v213    # "url":Ljava/lang/String;
    :cond_83
    const-string/jumbo v6, "/page/externalcontact"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1492
    invoke-static/range {p2 .. p2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v21

    .line 1493
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1494
    .local v28, "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1495
    .restart local v98    # "corpId":Ljava/lang/String;
    if-eqz v21, :cond_85

    .line 1496
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 1497
    const-string/jumbo v6, "orgId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1499
    :cond_84
    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1500
    const-string/jumbo v6, "corpId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1503
    :cond_85
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1504
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_86
    const-string/jumbo v6, "/page/channel_detail"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 1505
    invoke-static/range {p2 .. p2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v21

    .line 1508
    .restart local v21    # "bundle":Landroid/os/Bundle;
    if-eqz v21, :cond_89

    .line 1509
    const-string/jumbo v6, "orgId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1510
    .restart local v28    # "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    const-string/jumbo v19, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1511
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1513
    :try_start_22
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1514
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_18

    move-result-object v98

    .line 1529
    :cond_87
    :goto_14
    const-wide/16 v166, 0x0

    .line 1530
    .local v166, "orgIdLong":J
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8a

    .line 1532
    :try_start_23
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_1a

    move-result-wide v166

    .line 1542
    :cond_88
    :goto_15
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v166

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;J)V

    goto/16 :goto_1

    .line 1516
    .end local v166    # "orgIdLong":J
    :catch_18
    move-exception v6

    const/16 v28, 0x0

    .line 1517
    const/16 v98, 0x0

    .line 1518
    goto :goto_14

    .line 1522
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_89
    :try_start_24
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1523
    .restart local v28    # "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_19

    move-result-object v98

    .restart local v98    # "corpId":Ljava/lang/String;
    goto :goto_14

    .line 1525
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :catch_19
    move-exception v6

    const/16 v28, 0x0

    .line 1526
    .restart local v28    # "orgId":Ljava/lang/String;
    const/16 v98, 0x0

    .restart local v98    # "corpId":Ljava/lang/String;
    goto :goto_14

    .line 1533
    .restart local v166    # "orgIdLong":J
    :catch_1a
    move-exception v123

    .line 1534
    .restart local v123    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1535
    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 1536
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f(Ljava/lang/String;)J

    move-result-wide v166

    goto :goto_15

    .line 1539
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    :cond_8a
    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 1540
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f(Ljava/lang/String;)J

    move-result-wide v166

    goto :goto_15

    .line 1543
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v166    # "orgIdLong":J
    :cond_8b
    const-string/jumbo v6, "/page/myRedenvelop"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 1544
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1545
    :cond_8c
    const-string/jumbo v6, "/page/orgapplylist"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 1546
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1547
    :cond_8d
    const-string/jumbo v6, "/page/visitor"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1548
    new-instance v136, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    move-object/from16 v0, v136

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1549
    .local v136, "i":Landroid/content/Intent;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v214

    .line 1550
    .local v214, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v214, :cond_3

    move-object/from16 v0, v214

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1551
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v193

    .line 1552
    .local v193, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    const/16 v124, 0x0

    .line 1553
    .local v124, "encStr":Ljava/lang/String;
    if-eqz v193, :cond_8e

    .line 1554
    invoke-virtual/range {v193 .. v193}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v95

    .line 1555
    .local v95, "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v95, :cond_8e

    .line 1556
    const/16 v6, 0x10

    const-string/jumbo v19, "23601162"

    move-object/from16 v0, v214

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v6, v1, v2}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v124

    .line 1559
    .end local v95    # "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    :cond_8e
    const-string/jumbo v6, "phone_number"

    move-object/from16 v0, v136

    move-object/from16 v1, v124

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string/jumbo v6, "cop_name"

    const-string/jumbo v19, "dingtalk"

    move-object/from16 v0, v136

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1563
    .end local v124    # "encStr":Ljava/lang/String;
    .end local v136    # "i":Landroid/content/Intent;
    .end local v193    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v214    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_8f
    const-string/jumbo v6, "/action/messagejump"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 1564
    const-string/jumbo v6, "objectType"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v162

    .line 1565
    .local v162, "objectType":Ljava/lang/String;
    const-string/jumbo v6, "objectId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v161

    .line 1566
    .local v161, "objectId":Ljava/lang/String;
    const-string/jumbo v6, "objectContainer"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v160

    .line 1567
    .local v160, "objectContainerId":Ljava/lang/String;
    const-string/jumbo v6, "objectContentType"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 1568
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1569
    .local v68, "conversationId":Ljava/lang/String;
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1570
    .restart local v28    # "orgId":Ljava/lang/String;
    const-string/jumbo v6, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1572
    .restart local v34    # "name":Ljava/lang/String;
    const-string/jumbo v6, "0"

    move-object/from16 v0, v162

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 1573
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1574
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "space_preview_type"

    const-string/jumbo v19, "normal"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    new-instance v63, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct/range {v63 .. v63}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 1576
    .restart local v63    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v34

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 1577
    move-object/from16 v0, v161

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 1578
    move-object/from16 v0, v160

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1579
    move-object/from16 v0, v28

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1580
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v61

    invoke-static/range {v28 .. v28}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v64

    const-wide/16 v66, 0x0

    move-object/from16 v62, p0

    move-object/from16 v69, v21

    invoke-virtual/range {v61 .. v69}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1582
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v63    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_90
    const-string/jumbo v6, "1"

    move-object/from16 v0, v162

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1583
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1584
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v144

    .line 1585
    .local v144, "linkUrl":Ljava/lang/String;
    const-string/jumbo v6, "message_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v161

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string/jumbo v6, "conversation_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v160

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string/jumbo v6, "comment_view_show"

    const/16 v19, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1589
    const-wide/16 v49, 0x0

    .line 1592
    .restart local v49    # "finalOrgId":J
    :try_start_25
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_1b

    move-result-wide v49

    .line 1596
    :goto_16
    const-string/jumbo v6, "org_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v49

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1597
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1593
    :catch_1b
    move-exception v123

    .line 1594
    .restart local v123    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_16

    .line 1599
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v34    # "name":Ljava/lang/String;
    .end local v49    # "finalOrgId":J
    .end local v68    # "conversationId":Ljava/lang/String;
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .end local v144    # "linkUrl":Ljava/lang/String;
    .end local v160    # "objectContainerId":Ljava/lang/String;
    .end local v161    # "objectId":Ljava/lang/String;
    .end local v162    # "objectType":Ljava/lang/String;
    :cond_91
    const-string/jumbo v6, "/page/bussiness_contact_page"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1600
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1601
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v28

    .line 1602
    .local v28, "orgId":J
    const-string/jumbo v6, "staffid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1603
    .restart local v51    # "staffId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/page/business_list"

    new-instance v20, Lcom/alibaba/android/rimet/utils/UrlUtils$13;

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/utils/UrlUtils$13;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1611
    .end local v28    # "orgId":J
    .end local v51    # "staffId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_92
    const-string/jumbo v6, "/page/safecenter"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1612
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1613
    .local v28, "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1614
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1615
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_93
    const-string/jumbo v6, "/page/groupsetting"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 1616
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1617
    .restart local v28    # "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1618
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1619
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_94
    const-string/jumbo v6, "/page/orgroot"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 1620
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1621
    .restart local v28    # "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1622
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1623
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_95
    const-string/jumbo v6, "/page/managerRoleSetting"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1624
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1625
    .restart local v28    # "orgId":Ljava/lang/String;
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1626
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1627
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_96
    const-string/jumbo v6, "/action/message_to_ding"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1628
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1629
    .restart local v9    # "cid":Ljava/lang/String;
    const-string/jumbo v6, "messageId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v148

    .line 1630
    .local v148, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-static/range {v148 .. v148}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v9, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1631
    .end local v9    # "cid":Ljava/lang/String;
    .end local v148    # "messageId":Ljava/lang/String;
    :cond_97
    const-string/jumbo v6, "/action/focus_ding"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1632
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1633
    .restart local v9    # "cid":Ljava/lang/String;
    const-string/jumbo v6, "messageId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v148

    .line 1634
    .restart local v148    # "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-static/range {v148 .. v148}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v9, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1635
    .end local v9    # "cid":Ljava/lang/String;
    .end local v148    # "messageId":Ljava/lang/String;
    :cond_98
    const-string/jumbo v6, "/action/dingword"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1636
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/ding/home.html"

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Lcom/alibaba/android/rimet/utils/UrlUtils$14;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$14;-><init>(Landroid/net/Uri;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_1

    .line 1646
    :cond_99
    const-string/jumbo v6, "/action/upgrade_inner_group"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 1647
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1648
    .restart local v9    # "cid":Ljava/lang/String;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/action/upgrade_inner_group_internal"

    .line 1649
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Lcom/alibaba/android/rimet/utils/UrlUtils$15;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Lcom/alibaba/android/rimet/utils/UrlUtils$15;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_1

    .line 1656
    .end local v9    # "cid":Ljava/lang/String;
    :cond_9a
    const-string/jumbo v6, "/action/upgrade_cooperative_group"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 1657
    const-string/jumbo v6, "cid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1658
    .restart local v9    # "cid":Ljava/lang/String;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/action/upgrade_cooperative_group_internal"

    .line 1659
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Lcom/alibaba/android/rimet/utils/UrlUtils$16;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Lcom/alibaba/android/rimet/utils/UrlUtils$16;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_1

    .line 1666
    .end local v9    # "cid":Ljava/lang/String;
    :cond_9b
    const-string/jumbo v6, "/page/group_invite_qrcode"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 1667
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    .line 1668
    .restart local v169    # "orgIdString":Ljava/lang/String;
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1670
    .restart local v98    # "corpId":Ljava/lang/String;
    const-wide/16 v28, 0x0

    .line 1672
    .local v28, "orgId":J
    :try_start_26
    invoke-static/range {v169 .. v169}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_1c

    move-result-wide v28

    .line 1676
    :goto_17
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1677
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "corp_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string/jumbo v6, "org_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1679
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1673
    .end local v21    # "bundle":Landroid/os/Bundle;
    :catch_1c
    move-exception v123

    .line 1674
    .restart local v123    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_17

    .line 1680
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v123    # "e":Ljava/lang/NumberFormatException;
    .end local v169    # "orgIdString":Ljava/lang/String;
    :cond_9c
    const-string/jumbo v6, "/action/vpn_result"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 1681
    const-string/jumbo v6, "errcode"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 1682
    .restart local v94    # "code":Ljava/lang/String;
    const/16 v185, -0x1

    .line 1684
    .local v185, "resultCode":I
    :try_start_27
    invoke-static/range {v94 .. v94}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1d

    move-result v185

    .line 1688
    :goto_18
    new-instance v216, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.action.vpn.result"

    move-object/from16 v0, v216

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1689
    .local v216, "vpnResultIntent":Landroid/content/Intent;
    const-string/jumbo v6, "vpn_result_error_code"

    move-object/from16 v0, v216

    move/from16 v1, v185

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    move-object/from16 v0, v216

    invoke-virtual {v6, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1685
    .end local v216    # "vpnResultIntent":Landroid/content/Intent;
    :catch_1d
    move-exception v123

    .line 1686
    .local v123, "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 1692
    .end local v94    # "code":Ljava/lang/String;
    .end local v123    # "e":Ljava/lang/Exception;
    .end local v185    # "resultCode":I
    :cond_9d
    const-string/jumbo v6, "/action/sendmsg"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1693
    const-string/jumbo v6, "dingtalk_id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v120

    .line 1694
    .local v120, "dingtalkId":Ljava/lang/String;
    invoke-static/range {v120 .. v120}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    .line 1695
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v19

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v6

    new-instance v20, Lcom/alibaba/android/rimet/utils/UrlUtils$17;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v120

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/rimet/utils/UrlUtils$17;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v22, Lcma;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    move-object/from16 v0, v19

    move-object/from16 v1, v120

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 1723
    :cond_9e
    const-string/jumbo v6, "general"

    const/16 v19, 0x0

    const-string/jumbo v20, "UrlUtils sendmsg param dingtalkid is null"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/alibaba/android/rimet/biz/BokuiActivity;

    if-eqz v6, :cond_9f

    .line 1725
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 1727
    :cond_9f
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1730
    .end local v120    # "dingtalkId":Ljava/lang/String;
    :cond_a0
    const-string/jumbo v6, "/page/new_mail_account"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1731
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v19, "https://qr.dingtalk.com/page/new_mail_account.html"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1732
    :cond_a1
    const-string/jumbo v6, "/page/bindOrgMail"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 1733
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1734
    :cond_a2
    const-string/jumbo v6, "/action/jumprobot"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 1735
    invoke-static/range {p0 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->d(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1736
    :cond_a3
    const-string/jumbo v6, "/page/orgCustomizeManage"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1737
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1739
    .restart local v98    # "corpId":Ljava/lang/String;
    const-wide/16 v28, 0x0

    .line 1740
    .restart local v28    # "orgId":J
    invoke-static/range {v98 .. v98}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a4

    .line 1741
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v28

    .line 1744
    :cond_a4
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1745
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "org_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1746
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->y(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1747
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v28    # "orgId":J
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_a5
    const-string/jumbo v6, "/page/sendfriendrequest"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 1748
    const-string/jumbo v6, "profile"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v178

    .line 1749
    .local v178, "profile":Ljava/lang/String;
    invoke-static/range {v178 .. v178}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1750
    invoke-static/range {v178 .. v178}, Lcoh;->b(Ljava/lang/String;)J

    move-result-wide v210

    .line 1751
    .restart local v210    # "uid":J
    const-wide/16 v22, 0x0

    cmp-long v6, v210, v22

    if-lez v6, :cond_3

    .line 1752
    const/16 v200, 0x0

    .line 1754
    .local v200, "source":I
    :try_start_28
    const-string/jumbo v6, "source"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1e

    move-result v200

    .line 1758
    :goto_19
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v210

    move/from16 v3, v200

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JI)V

    goto/16 :goto_1

    .line 1755
    :catch_1e
    move-exception v123

    .line 1756
    .restart local v123    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 1761
    .end local v123    # "e":Ljava/lang/Exception;
    .end local v178    # "profile":Ljava/lang/String;
    .end local v200    # "source":I
    .end local v210    # "uid":J
    :cond_a6
    const-string/jumbo v6, "/page/print_task_list"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 1762
    if-eqz p2, :cond_3

    .line 1763
    const-string/jumbo v6, "sn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v199

    .line 1764
    .local v199, "sn":Ljava/lang/String;
    const-string/jumbo v6, "serviceId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v192

    .line 1765
    .local v192, "serviceId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    move-object/from16 v0, v199

    move-object/from16 v1, v192

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v177

    .line 1767
    .local v177, "printTaskListUrl":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcid;->c()Landroid/app/Application;

    move-result-object v19

    const v20, 0x7f090cdd

    invoke-virtual/range {v19 .. v20}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1769
    .end local v177    # "printTaskListUrl":Ljava/lang/String;
    .end local v192    # "serviceId":Ljava/lang/String;
    .end local v199    # "sn":Ljava/lang/String;
    :cond_a7
    const-string/jumbo v6, "/page/myProfile"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 1770
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1771
    :cond_a8
    const-string/jumbo v6, "/page/mailguide"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 1772
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1773
    :cond_a9
    const-string/jumbo v6, "/page/smartdevice_list"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 1774
    invoke-static/range {p0 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1775
    :cond_aa
    const-string/jumbo v6, "/page/live_select_conversation_and_open"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 1776
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1777
    :cond_ab
    const-string/jumbo v6, "/page/member_messages"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1778
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1779
    :cond_ac
    const-string/jumbo v6, "/page/member_list_oa"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 1780
    const-string/jumbo v6, "from"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v132

    .line 1781
    .local v132, "from":Ljava/lang/String;
    new-instance v195, Landroid/os/Bundle;

    invoke-direct/range {v195 .. v195}, Landroid/os/Bundle;-><init>()V

    .line 1782
    .local v195, "shoppingBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "intent_key_biz_tag"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-wide/16 v22, 0x10

    aput-wide v22, v19, v20

    move-object/from16 v0, v195

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1783
    const-string/jumbo v6, "from"

    move-object/from16 v0, v195

    move-object/from16 v1, v132

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v195

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1785
    .end local v132    # "from":Ljava/lang/String;
    .end local v195    # "shoppingBundle":Landroid/os/Bundle;
    :cond_ad
    const-string/jumbo v6, "/page/dt_mail_login"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 1786
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1787
    :cond_ae
    const-string/jumbo v6, "/page/singleconversation"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 1788
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v102

    .line 1789
    .restart local v102    # "currentUid":J
    const-string/jumbo v6, "uid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v174

    .line 1790
    .local v174, "peerUid":J
    const-string/jumbo v6, "type"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->c(Ljava/lang/String;)I

    move-result v44

    .line 1791
    .local v44, "type":I
    const-string/jumbo v6, "remind_type"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->c(Ljava/lang/String;)I

    move-result v184

    .line 1792
    .restart local v184    # "remindType":I
    const-string/jumbo v6, "source"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v200

    .line 1793
    .local v200, "source":Ljava/lang/String;
    const-string/jumbo v6, "remind_ext"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v183

    .line 1794
    .local v183, "remindExt":Ljava/lang/String;
    const-wide/16 v22, 0x0

    cmp-long v6, v102, v22

    if-lez v6, :cond_b0

    const-wide/16 v22, 0x0

    cmp-long v6, v174, v22

    if-lez v6, :cond_b0

    .line 1796
    const/4 v6, 0x1

    move/from16 v0, v44

    if-ne v0, v6, :cond_af

    const/4 v6, 0x1

    :goto_1a
    move-wide/from16 v0, v102

    move-wide/from16 v2, v174

    invoke-static {v0, v1, v2, v3, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(JJZ)Ljava/lang/String;

    move-result-object v9

    .line 1797
    .restart local v9    # "cid":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1798
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "remind_type"

    move-object/from16 v0, v21

    move/from16 v1, v184

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1799
    const-string/jumbo v6, "source"

    move-object/from16 v0, v21

    move-object/from16 v1, v200

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string/jumbo v6, "remind_ext"

    move-object/from16 v0, v21

    move-object/from16 v1, v183

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v9, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 1796
    .end local v9    # "cid":Ljava/lang/String;
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_af
    const/4 v6, 0x0

    goto :goto_1a

    .line 1803
    :cond_b0
    const-string/jumbo v6, "general"

    const/16 v19, 0x0

    const-string/jumbo v20, "singleconversation invalid uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1805
    .end local v44    # "type":I
    .end local v102    # "currentUid":J
    .end local v174    # "peerUid":J
    .end local v183    # "remindExt":Ljava/lang/String;
    .end local v184    # "remindType":I
    .end local v200    # "source":Ljava/lang/String;
    :cond_b1
    const-string/jumbo v6, "/im/forward.html"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 1806
    invoke-static/range {p0 .. p2}, Lcom/alibaba/android/rimet/utils/UrlUtils;->e(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1807
    :cond_b2
    const-string/jumbo v6, "/im/send_auth.html"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 1808
    invoke-static/range {p0 .. p2}, Lcom/alibaba/android/rimet/utils/UrlUtils;->d(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1809
    :cond_b3
    const-string/jumbo v6, "/page/im_campus_hr_conversations"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 1810
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1811
    :cond_b4
    const-string/jumbo v6, "/page/im_campus_student_conversations"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 1812
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1813
    :cond_b5
    const-string/jumbo v6, "/page/recruitment_resume_feed"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 1814
    invoke-static/range {p0 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1815
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1817
    :cond_b6
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1818
    .restart local v98    # "corpId":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1819
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, v21

    move-object/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string/jumbo v6, "resume_feed_model"

    const/16 v19, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1821
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->a()Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1822
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_b7
    const-string/jumbo v6, "/page/recruitment_job_feed"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 1823
    invoke-static/range {p0 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1824
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1826
    :cond_b8
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->a()Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1827
    :cond_b9
    const-string/jumbo v6, "/page/recruitment_resume_info"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 1828
    invoke-static/range {p0 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 1829
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1831
    :cond_ba
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1832
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "resumeId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v186

    .line 1833
    .local v186, "resumeId":Ljava/lang/String;
    const-string/jumbo v6, "jobId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v140

    .line 1834
    .local v140, "jobId":Ljava/lang/String;
    const-string/jumbo v6, "encUid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v125

    .line 1835
    .local v125, "encUid":Ljava/lang/String;
    const-string/jumbo v6, "token"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v208

    .line 1836
    .local v208, "token":Ljava/lang/String;
    const-string/jumbo v6, "preview"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v176

    .line 1837
    .local v176, "preview":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1838
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, v21

    move-object/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string/jumbo v6, "resumeId"

    move-object/from16 v0, v21

    move-object/from16 v1, v186

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string/jumbo v6, "jobId"

    move-object/from16 v0, v21

    move-object/from16 v1, v140

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string/jumbo v6, "encUid"

    move-object/from16 v0, v21

    move-object/from16 v1, v125

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string/jumbo v6, "token"

    move-object/from16 v0, v21

    move-object/from16 v1, v208

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string/jumbo v6, "preview"

    const-string/jumbo v19, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1844
    const-string/jumbo v6, "resume_feed_model"

    const/16 v19, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1845
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->a()Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1846
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v125    # "encUid":Ljava/lang/String;
    .end local v140    # "jobId":Ljava/lang/String;
    .end local v176    # "preview":Ljava/lang/String;
    .end local v186    # "resumeId":Ljava/lang/String;
    .end local v208    # "token":Ljava/lang/String;
    :cond_bb
    const-string/jumbo v6, "/page/recruitment_campus_company_home"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1847
    invoke-static/range {p0 .. p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 1848
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1850
    :cond_bc
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1851
    .restart local v98    # "corpId":Ljava/lang/String;
    const-string/jumbo v6, "token"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v208

    .line 1852
    .restart local v208    # "token":Ljava/lang/String;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1853
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "corpId"

    move-object/from16 v0, v21

    move-object/from16 v1, v98

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string/jumbo v6, "token"

    move-object/from16 v0, v21

    move-object/from16 v1, v208

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->a()Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1856
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v98    # "corpId":Ljava/lang/String;
    .end local v208    # "token":Ljava/lang/String;
    :cond_bd
    const-string/jumbo v6, "/page/secret_chat_list"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 1857
    invoke-static/range {p0 .. p0}, Lejo;->a(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1858
    :cond_be
    const-string/jumbo v6, "/action/open_micro_app"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bf

    const-string/jumbo v6, "/action/open_mini_app"

    .line 1859
    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 1860
    :cond_bf
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1861
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1863
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_c0
    const-string/jumbo v6, "/page/org_cancel_disband"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 1864
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1865
    .local v28, "orgId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-static/range {v28 .. v28}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/app/Activity;J)V

    goto/16 :goto_1

    .line 1867
    .end local v28    # "orgId":Ljava/lang/String;
    :cond_c1
    const-string/jumbo v6, "/page/createorg_v4_add_member"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 1868
    const-string/jumbo v6, "orgid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v28

    .line 1869
    .local v28, "orgId":J
    const-string/jumbo v6, "jumpUrl"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1870
    .restart local v18    # "jumpUrl":Ljava/lang/String;
    const-string/jumbo v6, "minMember"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v75

    .line 1872
    .local v75, "minMemberCount":I
    const-wide/16 v22, 0x0

    cmp-long v6, v28, v22

    if-gtz v6, :cond_c2

    .line 1873
    const-string/jumbo v6, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 1874
    .restart local v98    # "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, v98

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v28

    .line 1877
    .end local v98    # "corpId":Ljava/lang/String;
    :cond_c2
    new-instance v24, Lcom/alibaba/android/rimet/utils/UrlUtils$18;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$18;-><init>(Landroid/app/Activity;)V

    .line 1901
    .restart local v24    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v6, Lcma;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v6, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v24, Lcma;

    .line 1902
    .restart local v24    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v70

    move-object/from16 v71, p0

    move-wide/from16 v72, v28

    move-object/from16 v74, v18

    move-object/from16 v76, v24

    invoke-virtual/range {v70 .. v76}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLjava/lang/String;ILcma;)V

    goto/16 :goto_1

    .line 1904
    .end local v18    # "jumpUrl":Ljava/lang/String;
    .end local v24    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v28    # "orgId":J
    .end local v75    # "minMemberCount":I
    :cond_c3
    const-string/jumbo v6, "/page/neworginvite"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 1905
    const-string/jumbo v6, "orgId"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1906
    .local v28, "orgId":Ljava/lang/String;
    const-string/jumbo v6, "source"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v200

    .line 1907
    .restart local v200    # "source":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-static/range {v28 .. v28}, Lcoc;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, v200

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 1909
    .end local v28    # "orgId":Ljava/lang/String;
    .end local v200    # "source":Ljava/lang/String;
    :cond_c4
    const-string/jumbo v6, "/page/registerFinishedPage"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 1910
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1911
    :cond_c5
    const-string/jumbo v6, "/page/findMoreTeam"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 1912
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1913
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "from"

    const-string/jumbo v19, "from_jsapi"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->z(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1915
    .end local v21    # "bundle":Landroid/os/Bundle;
    :cond_c6
    const-string/jumbo v6, "/page/wallet"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 1916
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v6

    new-instance v19, Lcom/alibaba/android/rimet/utils/UrlUtils$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/utils/UrlUtils$19;-><init>(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1933
    :cond_c7
    const-string/jumbo v6, "/page/liveentrance"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 1934
    const-string/jumbo v6, "https://h5.dingtalk.com/live-unified-entrance/index.htm"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v87

    .line 1936
    .restart local v87    # "builder":Landroid/net/Uri$Builder;
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v155

    .line 1937
    .local v155, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v155 .. v155}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1938
    .restart local v34    # "name":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v215

    .line 1939
    .restart local v215    # "value":Ljava/lang/String;
    move-object/from16 v0, v87

    move-object/from16 v1, v34

    move-object/from16 v2, v215

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1f

    goto :goto_1b

    .line 1941
    .end local v34    # "name":Ljava/lang/String;
    .end local v155    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v215    # "value":Ljava/lang/String;
    :catch_1f
    move-exception v123

    .line 1942
    .local v123, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "redpackets"

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "open live entrance error="

    aput-object v23, v20, v22

    const/16 v22, 0x1

    .line 1943
    invoke-virtual/range {v123 .. v123}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1942
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    .end local v123    # "e":Ljava/lang/Throwable;
    :cond_c8
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1946
    .restart local v21    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    invoke-virtual/range {v87 .. v87}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1948
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v87    # "builder":Landroid/net/Uri$Builder;
    :cond_c9
    const-string/jumbo v6, "/page/bizCardCircle"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 1949
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1950
    :cond_ca
    const-string/jumbo v6, "/page/myBizCardQrCode"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 1951
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1952
    :cond_cb
    const-string/jumbo v6, "/page/friendRecommendation"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 1953
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1954
    :cond_cc
    const-string/jumbo v6, "/page/localContact"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 1955
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    sget-object v19, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CONTACT_FRAGMENT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V

    goto/16 :goto_1

    .line 1956
    :cond_cd
    const-string/jumbo v6, "/page/facespace"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 1957
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1959
    :cond_ce
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v58    # "clusterId":Ljava/lang/String;
    .restart local v91    # "cidStr":Ljava/lang/String;
    .restart local v92    # "clusterType":I
    .restart local v93    # "clusterTypeStr":Ljava/lang/String;
    .restart local v189    # "senderIdStr":Ljava/lang/String;
    :catch_20
    move-exception v6

    goto/16 :goto_e

    .restart local v190    # "senderId":J
    :catch_21
    move-exception v6

    goto/16 :goto_f

    .end local v58    # "clusterId":Ljava/lang/String;
    .end local v91    # "cidStr":Ljava/lang/String;
    .end local v92    # "clusterType":I
    .end local v93    # "clusterTypeStr":Ljava/lang/String;
    .end local v189    # "senderIdStr":Ljava/lang/String;
    .end local v190    # "senderId":J
    .local v28, "orgId":J
    .restart local v45    # "appId":Ljava/lang/String;
    .restart local v46    # "subAppId":Ljava/lang/String;
    .restart local v47    # "title":Ljava/lang/String;
    .restart local v51    # "staffId":Ljava/lang/String;
    .restart local v104    # "date":J
    .restart local v108    # "dateStr":Ljava/lang/String;
    .restart local v169    # "orgIdString":Ljava/lang/String;
    :catch_22
    move-exception v6

    goto/16 :goto_d
.end method

.method private static d(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2111
    const-string/jumbo v3, "dingtalkid"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2112
    .local v1, "chatbotUserId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2113
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2116
    :cond_0
    const-string/jumbo v3, "general"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "handleJumpRobot failed chatbotUserId is empty"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    :goto_0
    return-void

    .line 2122
    :cond_1
    const-string/jumbo v3, "content"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2123
    .local v2, "msgContent":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/android/rimet/utils/UrlUtils$25;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/rimet/utils/UrlUtils$25;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2154
    .local v0, "callback":Lcma;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2155
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    invoke-interface {v3, v0, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;
    check-cast v0, Lcma;

    .line 2157
    .restart local v0    # "callback":Lcma;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method private static d(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1989
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1992
    :cond_1
    invoke-static {p2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1993
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const v2, 0x10008000

    invoke-virtual {v1, p0, v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method private static e(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1998
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    invoke-static {p2}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 2006
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string/jumbo v5, "outShare"

    const-string/jumbo v7, "android.intent.ding.EXTRA_ACTION_TYPE"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2007
    const-string/jumbo v5, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2009
    .local v3, "sdkVersion":I
    const v5, 0x1339e65

    if-ge v3, v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v5, v7, :cond_2

    .line 2011
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v4, v5, v7, v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    .local v4, "url":Ljava/net/URI;
    if-eqz v4, :cond_0

    .line 2013
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v5, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/rimet/utils/UrlUtils$20;

    invoke-direct {v8, v0}, Lcom/alibaba/android/rimet/utils/UrlUtils$20;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v5, v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2024
    .end local v4    # "url":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 2025
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2026
    const-string/jumbo v5, "im"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "[UrlUtils]"

    aput-object v8, v7, v2

    const-string/jumbo v8, "jump 2 msgForward v1 way from outshare failed"

    aput-object v8, v7, v6

    const-string/jumbo v6, ",sdkversion:"

    aput-object v6, v7, v11

    .line 2028
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v12

    const/4 v6, 0x4

    const-string/jumbo v8, ",exception:"

    aput-object v8, v7, v6

    const/4 v6, 0x5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 2026
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2032
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v7, 0x10000000

    and-int/2addr v5, v7

    const/high16 v7, 0x10000000

    if-ne v5, v7, :cond_3

    move v2, v6

    .line 2033
    .local v2, "hasNewTaskFlag":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 2034
    const-string/jumbo v5, "im_intent_key_is_new_task"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2036
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    const v6, 0x10008000

    invoke-virtual {v5, p0, v0, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 2041
    .end local v2    # "hasNewTaskFlag":Z
    .end local v3    # "sdkVersion":I
    :cond_5
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v4, v5, v7, v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    .restart local v4    # "url":Ljava/net/URI;
    if-eqz v4, :cond_0

    .line 2043
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v5, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/rimet/utils/UrlUtils$21;

    invoke-direct {v8, v0}, Lcom/alibaba/android/rimet/utils/UrlUtils$21;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v5, v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2053
    .end local v4    # "url":Ljava/net/URI;
    :catch_1
    move-exception v1

    .line 2054
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2055
    const-string/jumbo v5, "im"

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "[UrlUtils]"

    aput-object v8, v7, v2

    const-string/jumbo v8, "jump 2 msgForward inner share failed,exception:"

    aput-object v8, v7, v6

    .line 2056
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v11

    .line 2055
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
