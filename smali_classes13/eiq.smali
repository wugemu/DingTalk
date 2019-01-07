.class public final Leiq;
.super Ljava/lang/Object;
.source "OAConfigHandler.java"

# interfaces
.implements Leij;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Leem;

.field private c:Leek;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Leen;->b()Leen;

    move-result-object v0

    iput-object v0, p0, Leiq;->b:Leem;

    .line 64
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    iput-object v0, p0, Leiq;->c:Leek;

    .line 65
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 7
    .param p0, "homePage"    # Ljava/lang/String;
    .param p1, "homeName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "default_home_page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "default_home_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 372
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;-><init>()V

    .line 373
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iput-object p0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->oaHomePage:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "homeName":Ljava/lang/String;
    :cond_2
    iput-object p1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    .line 376
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 377
    const-string/jumbo v1, "9223372036854775807"

    iput-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->key:Ljava/lang/String;

    .line 382
    .end local v0    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_0
    return-object v0

    .restart local p1    # "homeName":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "queryName"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 259
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 260
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 261
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 262
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 263
    .local v3, "newUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 264
    .local v2, "newBuild":Landroid/net/Uri$Builder;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 269
    invoke-virtual {v2, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 271
    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 272
    invoke-virtual {v2, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 277
    .end local v2    # "newBuild":Landroid/net/Uri$Builder;
    .end local v3    # "newUri":Landroid/net/Uri;
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "orgJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, "iterators":Ljava/util/Iterator;
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "OAConfigHandler"

    invoke-static {v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v6

    .line 167
    .local v6, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 170
    .local v5, "object":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 171
    const-string/jumbo v7, "cs_action"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    const-string/jumbo v7, "cs_action"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "deleted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "deleted "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 175
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 176
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    invoke-interface {v6}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 183
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 189
    .local v1, "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_2
    iput-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->key:Ljava/lang/String;

    .line 190
    invoke-static {v1, v5}, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->fromJSON(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;Lorg/json/JSONObject;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 191
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 192
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_2
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "add "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 200
    .end local v1    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    invoke-interface {v6}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    throw v7

    .line 186
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :cond_3
    :try_start_3
    new-instance v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v1    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    goto :goto_2

    .line 200
    .end local v1    # "appObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_4
    invoke-interface {v6}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_1
.end method

.method public static c()V
    .locals 6

    .prologue
    .line 238
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "default_home_page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "homePage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string/jumbo v2, "pref_key_new_user_source"

    invoke-static {v2}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "source":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    const-string/jumbo v2, "u_src"

    invoke-static {v0, v2, v1}, Leiq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "default_home_page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v2, v3, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_config_oa_update_cache_new_logic"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string/jumbo v0, "OAConfigHandler"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Leiq$1;

    invoke-direct {v1}, Leiq$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Leiq;->b:Leem;

    invoke-interface {v1}, Leem;->a()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "mOrgMicroAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Leiq;->d:Z

    .line 1081
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1082
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1083
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1084
    if-eqz v1, :cond_0

    .line 1085
    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1086
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->key:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_2
    iput-object v2, p0, Leiq;->a:Ljava/util/HashMap;

    .line 76
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "default_home_page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://h5.dingtalk.com/base/personWork.html"

    .line 76
    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 13
    .param p1, "rawData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    .line 98
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "OAConfigHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "OAConfigHandler handle, data: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Lorg/json/JSONObject;
    .local v1, "data":Lorg/json/JSONObject;
    move-object v0, v1

    .line 108
    .end local v1    # "data":Lorg/json/JSONObject;
    .restart local v0    # "data":Lorg/json/JSONObject;
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 109
    const/4 v6, 0x0

    .line 111
    .local v6, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_1
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "oa_data"

    invoke-static {v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v6

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "homeName":Ljava/lang/String;
    invoke-static {}, Leiq;->c()V

    .line 114
    const-string/jumbo v7, "default_home_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const v8, 0x7f092189

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "default_home_name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    .line 124
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    const-string/jumbo v8, "9223372036854775807"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    const-string/jumbo v7, "oa_org"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 127
    const-string/jumbo v7, "oa_org"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 128
    .local v4, "orgData":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    invoke-direct {p0, v4}, Leiq;->a(Lorg/json/JSONObject;)V

    .line 135
    .end local v4    # "orgData":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 136
    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "oa data buildVirtualOrg, page::"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "home_name::"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 138
    const/4 v7, 0x0

    invoke-static {v7, v3}, Leiq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v5

    .line 139
    .local v5, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v5, :cond_4

    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    .line 140
    iget-object v7, p0, Leiq;->a:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v5    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_4
    const-string/jumbo v7, "cs_action"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    const-string/jumbo v7, "cs_action"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_5
    if-eqz v6, :cond_6

    .line 156
    invoke-interface {v6}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 160
    .end local v3    # "homeName":Ljava/lang/String;
    .end local v6    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_6
    :goto_2
    iput-boolean v12, p0, Leiq;->d:Z

    .line 161
    return-void

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v7, "oa"

    const-string/jumbo v8, "oa_setting_handler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "data to json exception, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "homeName":Ljava/lang/String;
    .restart local v6    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_7
    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "oa data has not oa_org"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 147
    .end local v3    # "homeName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 148
    .restart local v2    # "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    if-eqz v6, :cond_8

    .line 151
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :cond_8
    if-eqz v6, :cond_6

    .line 156
    invoke-interface {v6}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_2

    .line 155
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_9

    .line 156
    invoke-interface {v6}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_9
    throw v7
.end method

.method public final b()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 206
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, "OAConfigHandler"

    invoke-static {v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v2

    .line 208
    .local v2, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    iget-boolean v4, p0, Leiq;->d:Z

    if-eqz v4, :cond_1

    .line 209
    iget-object v4, p0, Leiq;->a:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    iget-object v4, p0, Leiq;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "compile saveDataToLocal="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Leiq;->b:Leem;

    invoke-interface {v4, v1}, Leem;->a(Ljava/util/List;)V

    .line 214
    const/4 v4, 0x0

    iput-object v4, p0, Leiq;->a:Ljava/util/HashMap;

    .line 216
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "csconfig_update_miniapp_info"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-static {}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateAllMicroAppsOpenType()V

    .line 218
    invoke-static {}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateAllMiniAppBizType()V

    .line 221
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_0
    iget-object v4, p0, Leiq;->c:Leek;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Leek;->a(Z)V

    .line 222
    iget-object v4, p0, Leiq;->c:Leek;

    invoke-interface {v4}, Leek;->a()Ljava/util/List;

    .line 223
    iget-object v4, p0, Leiq;->c:Leek;

    invoke-interface {v4}, Leek;->e()Z

    .line 224
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "compile sendBroadcast ACTION_ORG_SYNC"

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.org.sync"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 228
    :cond_1
    iget-boolean v3, p0, Leiq;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :goto_0
    return v3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    throw v3
.end method
