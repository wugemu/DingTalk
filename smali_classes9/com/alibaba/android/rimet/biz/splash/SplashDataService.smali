.class public final Lcom/alibaba/android/rimet/biz/splash/SplashDataService;
.super Ljava/lang/Object;
.source "SplashDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(JJ)Lekr;
    .locals 6
    .param p0, "mainOrgId"    # J
    .param p2, "currentTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v3, Lekz;

    invoke-direct {v3}, Lekz;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lekz;->a(I)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    if-nez v1, :cond_0

    move-object v0, v2

    .line 211
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 200
    const-string/jumbo v3, "PreferenceForAppStart"

    const-string/jumbo v4, "pref_key_has_splash_data"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekr;

    .line 204
    .local v0, "splashDataObject":Lekr;
    invoke-static {v0, p0, p1, p2, p3}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a(Lekr;JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "splashDataObject":Lekr;
    :cond_3
    move-object v0, v2

    .line 211
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lekr;
    .locals 6
    .param p0, "jsonObjectStr"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 170
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 171
    const/4 v3, 0x0

    .line 189
    :goto_1
    return-object v3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v3, Lekr;

    invoke-direct {v3}, Lekr;-><init>()V

    .line 175
    .local v3, "splashDataObject":Lekr;
    const-string/jumbo v4, "splashId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lekr;->a:Ljava/lang/String;

    .line 176
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lekr;->b:I

    .line 177
    const-string/jumbo v4, "mediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lekr;->c:Ljava/lang/String;

    .line 178
    const-string/jumbo v4, "jumpUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lekr;->d:Ljava/lang/String;

    .line 179
    const-string/jumbo v4, "startTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lekr;->e:J

    .line 180
    const-string/jumbo v4, "endTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lekr;->f:J

    .line 181
    const-string/jumbo v4, "startLoadTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lekr;->g:J

    .line 182
    const-string/jumbo v4, "duration"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lekr;->h:J

    .line 183
    const-string/jumbo v4, "priority"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lekr;->i:I

    .line 184
    const-string/jumbo v4, "attachmentMediaId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lekr;->j:Ljava/lang/String;

    .line 185
    const-string/jumbo v4, "textColor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lekr;->k:Ljava/lang/String;

    .line 186
    const-string/jumbo v4, "orgId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lekr;->l:J

    .line 187
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lekr;->m:I

    goto/16 :goto_1
.end method

.method static a(Lekr;)Ljava/lang/String;
    .locals 8
    .param p0, "splashDataObject"    # Lekr;

    .prologue
    .line 132
    const-string/jumbo v2, ""

    .line 134
    .local v2, "jsonObjectStr":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 158
    .end local v2    # "jsonObjectStr":Ljava/lang/String;
    .local v3, "jsonObjectStr":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 139
    .end local v3    # "jsonObjectStr":Ljava/lang/String;
    .restart local v2    # "jsonObjectStr":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "splashId"

    iget-object v5, p0, Lekr;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v4, "type"

    iget v5, p0, Lekr;->b:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v4, "mediaId"

    iget-object v5, p0, Lekr;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v4, "jumpUrl"

    iget-object v5, p0, Lekr;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v4, "startTime"

    iget-wide v6, p0, Lekr;->e:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v4, "endTime"

    iget-wide v6, p0, Lekr;->f:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v4, "startLoadTime"

    iget-wide v6, p0, Lekr;->g:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v4, "duration"

    iget-wide v6, p0, Lekr;->h:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v4, "priority"

    iget v5, p0, Lekr;->i:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v4, "attachmentMediaId"

    iget-object v5, p0, Lekr;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v4, "textColor"

    iget-object v5, p0, Lekr;->k:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v4, "orgId"

    iget-wide v6, p0, Lekr;->l:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v4, "status"

    iget v5, p0, Lekr;->m:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    move-object v3, v2

    .line 158
    .end local v2    # "jsonObjectStr":Ljava/lang/String;
    .restart local v3    # "jsonObjectStr":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v3    # "jsonObjectStr":Ljava/lang/String;
    .restart local v2    # "jsonObjectStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "SplashDataService"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$1;

    invoke-direct {v1}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public static a(Lekr;JJ)Z
    .locals 11
    .param p0, "splashDataObject"    # Lekr;
    .param p1, "mainOrgId"    # J
    .param p3, "currentTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    if-nez p0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v2

    .line 221
    :cond_1
    iget v4, p0, Lekr;->b:I

    if-eq v4, v3, :cond_2

    iget-wide v4, p0, Lekr;->l:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    cmp-long v4, p1, v8

    if-lez v4, :cond_2

    iget-wide v4, p0, Lekr;->l:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 227
    :cond_2
    iget-wide v4, p0, Lekr;->e:J

    cmp-long v4, p3, v4

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lekr;->f:J

    cmp-long v4, v4, p3

    if-ltz v4, :cond_0

    .line 232
    iget-object v4, p0, Lekr;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    iget v4, p0, Lekr;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1327
    invoke-static {}, Lemg;->a()Ljava/text/SimpleDateFormat;

    move-result-object v4

    .line 1328
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1329
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1333
    const-string/jumbo v5, "PreferenceForAppStart"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lcpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v3

    .line 237
    :goto_1
    if-eqz v4, :cond_0

    .line 242
    :cond_3
    iget v4, p0, Lekr;->b:I

    if-ne v4, v3, :cond_4

    .line 243
    const-string/jumbo v4, "PreferenceForAppStart"

    const-string/jumbo v5, "pref_key_last_operation_splash_time"

    invoke-static {v4, v5, v8, v9}, Lcpl;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 244
    .local v0, "lastShowTime":J
    sub-long v4, p3, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .end local v0    # "lastShowTime":J
    :cond_4
    move v2, v3

    .line 249
    goto :goto_0

    .line 1337
    :cond_5
    const-string/jumbo v5, "PreferenceForAppStart"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lcpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v3

    .line 1338
    goto :goto_1

    :cond_6
    move v4, v2

    .line 1341
    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 12
    .param p0, "birthdayData"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v1, 0x0

    .line 301
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 305
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 310
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 314
    .local v5, "orgBirthdayData":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 318
    const-string/jumbo v6, "PreferenceForAppStart"

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "birthday1"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v6, "PreferenceForAppStart"

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "birthday2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 302
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "orgBirthdayData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "splash"

    const-string/jumbo v7, "splash"

    const-string/jumbo v8, "saveBirthdayData failed: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a()V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "orgIdStr"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 347
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "birthday_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_current"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 349
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "orgIdStr"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 355
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "birthday_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_next"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 357
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
