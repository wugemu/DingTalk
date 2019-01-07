.class public final Lfxo;
.super Ljava/lang/Object;
.source "UserTraceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 286
    const-string/jumbo v2, "TRACE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 287
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "uid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 289
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, p1, v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 292
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "pageObj"    # Landroid/app/Activity;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public static varargs a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p0, "pageObj"    # Landroid/app/Activity;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "eventArg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 320
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 323
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 324
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "format":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 330
    .local v1, "resultMap":Ljava/util/Map;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1351
    const/4 v1, 0x0

    .line 1352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .end local v1    # "resultMap":Ljava/util/Map;
    move-result v3

    if-nez v3, :cond_2

    .line 1353
    const-string/jumbo v3, "\\s*|\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1354
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1355
    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1358
    if-eqz v5, :cond_2

    array-length v3, v5

    if-lez v3, :cond_2

    .line 1359
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1360
    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 1361
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1362
    if-eqz v7, :cond_0

    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 1363
    aget-object v8, v7, v4

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 332
    .restart local v1    # "resultMap":Ljava/util/Map;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 333
    :cond_3
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 334
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "String param is error! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    :cond_4
    if-eqz p0, :cond_5

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 344
    :goto_2
    return-void

    .line 342
    :cond_5
    const-string/jumbo v3, ""

    invoke-interface {v2, v3, p1, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public static a(Lcom/alibaba/doraemon/trace/Trace;)V
    .locals 0
    .param p0, "trace"    # Lcom/alibaba/doraemon/trace/Trace;

    .prologue
    .line 296
    if-eqz p0, :cond_0

    .line 297
    invoke-interface {p0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 299
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 306
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1315
    invoke-static {v1, p0, v1, v0}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    invoke-static {p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    if-eqz p3, :cond_2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "format":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 283
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_1
    :goto_1
    return-void

    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_2
    move-object v1, p2

    .line 272
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_1

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 279
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_3
    throw v3
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 100
    const-string/jumbo v0, "user_lg"

    invoke-static {v0, p0, p1, p2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 144
    const-string/jumbo v0, "ext_ct"

    const-string/jumbo v1, "ext_ct"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    const-string/jumbo v2, "is_new=%d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    .line 1487
    iget-boolean v4, v4, Lccr;->b:Z

    .line 347
    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 2315
    const/4 v0, 0x0

    invoke-static {v0, p0, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    return-void

    :cond_0
    move v0, v1

    .line 347
    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 112
    const-string/jumbo v0, "user_ct"

    invoke-static {v0, p0, p1, p2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 151
    const-string/jumbo v0, "config_switch"

    const-string/jumbo v1, "config_switch"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 128
    const-string/jumbo v0, "user_home"

    invoke-static {v0, p0, p1, p2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 155
    const-string/jumbo v0, "no_lg_switch"

    const-string/jumbo v1, "no_lg_switch"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 140
    const-string/jumbo v0, "user_set"

    invoke-static {v0, p0, p1, p2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 159
    const-string/jumbo v0, "lg_privacy"

    const-string/jumbo v1, "lg_privacy"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 207
    const-string/jumbo v0, "user_bs"

    invoke-static {v0, p0, p1, p2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 163
    const-string/jumbo v0, "medal"

    const-string/jumbo v1, "medal"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 167
    const-string/jumbo v0, "user_rg"

    const-string/jumbo v1, "user_rg"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public static varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 171
    const-string/jumbo v0, "dt_id"

    const-string/jumbo v1, "dt_id"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public static varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 175
    const-string/jumbo v0, "mng_staff"

    const-string/jumbo v1, "mng_staff"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 179
    const-string/jumbo v0, "global"

    const-string/jumbo v1, "global"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public static varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 183
    const-string/jumbo v0, "create_org"

    const-string/jumbo v1, "create_org"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public static varargs k(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 187
    const-string/jumbo v0, "user_prof"

    const-string/jumbo v1, "user_prof"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public static varargs l(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 191
    const-string/jumbo v0, "match_ct"

    const-string/jumbo v1, "match_ct"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public static varargs m(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 195
    const-string/jumbo v0, "new_friend"

    const-string/jumbo v1, "new_friend"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public static varargs n(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 199
    const-string/jumbo v0, "user_utils"

    const-string/jumbo v1, "user_utils"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public static varargs o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 203
    const-string/jumbo v0, "user_bs"

    const-string/jumbo v1, "user_bs"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public static varargs p(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 211
    const-string/jumbo v0, "user_uic_login"

    const-string/jumbo v1, "user_uic_login"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public static varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 215
    const-string/jumbo v0, "user_friend_request"

    const-string/jumbo v1, "user_friend_request"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public static varargs r(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 219
    const-string/jumbo v0, "friends_sync"

    const-string/jumbo v1, "friends_sync"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public static varargs s(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 223
    const-string/jumbo v0, "device_sync"

    const-string/jumbo v1, "device_sync"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public static varargs t(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 227
    const-string/jumbo v0, "screenshot"

    const-string/jumbo v1, "screenshot"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public static varargs u(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 231
    const-string/jumbo v0, "user_resign"

    const-string/jumbo v1, "user_resign"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 235
    const-string/jumbo v0, "user_org_entry_config"

    const-string/jumbo v1, "user_org_entry_config"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 239
    const-string/jumbo v0, "user_db"

    const-string/jumbo v1, "user_db"

    invoke-static {v0, v1, p0, p1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-void
.end method
