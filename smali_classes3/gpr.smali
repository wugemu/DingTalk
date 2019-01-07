.class public final Lgpr;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 467
    if-nez p0, :cond_0

    .line 470
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "pref_space_view_mode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mMode"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 444
    if-nez p0, :cond_0

    .line 450
    :goto_0
    return v0

    .line 447
    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 448
    :cond_1
    const-string/jumbo v1, "pref_space_sort_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 450
    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1528
    .local p0, "callback":Ljava/lang/Object;, "TT;"
    .local p1, "callbackClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1529
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    invoke-static {p0, p1, p2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p0

    .line 1531
    .end local p0    # "callback":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 560
    const-class v4, Lgpr;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lgpv;->b()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v3

    .line 578
    .local v0, "createDirResult":Z
    .local v1, "file":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v2

    .line 564
    .end local v0    # "createDirResult":Z
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v5, 0x5

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 566
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v7

    invoke-virtual {v7}, Lafy;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "temp"

    aput-object v7, v5, v6

    .line 564
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .restart local v1    # "file":Ljava/io/File;
    const/4 v0, 0x1

    .line 574
    .restart local v0    # "createDirResult":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 575
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 578
    :cond_2
    if-nez v0, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 560
    .end local v0    # "createDirResult":Z
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "redId"    # I

    .prologue
    .line 908
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "spaceType"    # I
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "spaceName"    # Ljava/lang/String;

    .prologue
    .line 1424
    invoke-static {p0}, Lgqu;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    sget v0, Lfzs$h;->org_personal:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 7125
    .end local p2    # "spaceName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 1427
    .restart local p2    # "spaceName":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    sget v0, Lfzs$h;->org_public_share:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1430
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1434
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    .line 7121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7122
    const-string/jumbo p2, ""

    goto :goto_0

    .line 7124
    :cond_3
    iget-object v0, v0, Lfzv;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7125
    if-nez v0, :cond_4

    const-string/jumbo p2, ""

    goto :goto_0

    :cond_4
    move-object p2, v0

    .line 1434
    goto :goto_0

    .line 1436
    :cond_5
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;
    .locals 2
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 592
    if-nez p0, :cond_0

    .line 593
    const-string/jumbo v0, ""

    .line 595
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0, v1}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    const-string/jumbo v0, ""

    .line 602
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "head"    # Ljava/lang/String;
    .param p3, "tail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1394
    .line 6402
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 6403
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6404
    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6406
    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6407
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6408
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6409
    if-eqz p1, :cond_1

    .line 6410
    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1397
    const-string/jumbo v1, ""

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 6413
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6414
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6417
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6418
    invoke-virtual {v1, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6420
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 649
    .local v0, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Cookie"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "token="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-object v0
.end method

.method public static a(JLgic;)V
    .locals 8
    .param p0, "publicSpaceId"    # J
    .param p2, "publicAreaInfo"    # Lgic;

    .prologue
    .line 1220
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_0

    if-nez p2, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-object v3, p2, Lgic;->g:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 1225
    iget-object v3, p2, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v4, "doc_readonly"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1226
    .local v0, "isReadOnly":Z
    iget-object v3, p2, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v4, "watermark"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1227
    .local v2, "isWaterMark":Z
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lfzv;->a(Ljava/lang/Long;Z)V

    .line 1228
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lfzv;->b(Ljava/lang/Long;Z)V

    .line 1229
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p2, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v6, "eam_acl"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lgqd;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v3, p2, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v4, "tmpl_c"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1231
    .local v1, "isTemplateCreated":Z
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5372
    iget-object v3, v3, Lfzv;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .end local v0    # "isReadOnly":Z
    .end local v1    # "isTemplateCreated":Z
    .end local v2    # "isWaterMark":Z
    :cond_2
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    .line 1235
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1236
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v5, p2, Lgic;->k:Ljava/util/List;

    invoke-static {v5}, Lgqd;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1234
    invoke-virtual {v3, v4, v5}, Lgqd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x18

    const/4 v8, 0x0

    .line 402
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Lgpx;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2024
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const v5, 0x10080001

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 417
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 418
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v5

    sget v5, Lfzs$h;->cspace_open_not_found:I

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 425
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x11

    invoke-virtual {v4, v5, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 426
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2027
    .end local v4    # "toast":Landroid/widget/Toast;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2039
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    .line 2040
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_3

    .line 2041
    invoke-static {v6}, Lbzz;->a(Landroid/content/Context;)I

    move-result v7

    if-lt v7, v9, :cond_3

    .line 2044
    invoke-static {v6}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 2046
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 421
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "linkShareUrl"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "thumbUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 822
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v6

    .line 827
    .local v6, "shareInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v4, "shareUnits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayTimeLineShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newOpenInBrowserUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v5, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 848
    .local v5, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {v5, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v5, p5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 850
    sget v0, Lfzs$h;->dt_cspace_fileshare_link_card_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 852
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "\n"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 3046
    invoke-static {p3, p4}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 852
    aput-object v3, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 853
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareManager(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)Lgwk;

    .line 854
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    const-string/jumbo v3, "cspace_share_sharetoclick"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "linkShareUrl"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "thumbUrl"    # Ljava/lang/String;
    .param p6, "extractionCode"    # Ljava/lang/String;
    .param p7, "expiredTimeStamp"    # J
    .param p9, "orgBelong"    # Ljava/lang/String;

    .prologue
    .line 862
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v6

    .line 867
    .local v6, "shareInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v4, "shareUnits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayTimeLineShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v6, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newOpenInBrowserUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v5, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 888
    .local v5, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {v5, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v5, p5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v5, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 893
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 894
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lfzs$h;->dt_space_link_extraction_code:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lfzs$h;->cspace_file_expired_date:I

    .line 895
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p7 .. p8}, Lgqh;->c(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lfzs$h;->dt_cspace_co_folder_create_org_placeholder:I

    .line 896
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ": "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    .line 894
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 903
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareManager(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)Lgwk;

    .line 904
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "cspace_share_sharetoclick"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 898
    :cond_2
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lfzs$h;->dt_space_link_extraction_code:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 4046
    invoke-static {p3, p4}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 899
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lfzs$h;->cspace_file_expired_date:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p7 .. p8}, Lgqh;->c(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lfzs$h;->dt_cspace_co_folder_create_org_placeholder:I

    .line 900
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, ": "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object p9, v0, v1

    .line 898
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcma;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v7, 0x0

    .line 679
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 680
    if-eqz p3, :cond_0

    .line 681
    invoke-interface {p3, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const-wide/16 v8, 0x0

    .line 687
    .local v8, "unInitOrgId":J
    const/4 v0, 0x1

    .line 688
    .local v0, "isDataComplete":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 689
    .local v4, "orgId":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgpr;->a(J)Z

    move-result v0

    .line 690
    if-nez v0, :cond_2

    .line 691
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 695
    .end local v4    # "orgId":Ljava/lang/Long;
    :cond_3
    if-eqz v0, :cond_4

    .line 696
    if-eqz p3, :cond_0

    .line 697
    invoke-interface {p3, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 700
    :cond_4
    move-wide v4, v8

    .line 702
    .local v4, "orgId":J
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lgpr$10;

    invoke-direct {v2, v4, v5, p3}, Lgpr$10;-><init>(JLcma;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 743
    .local v6, "listenerUserProfile":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lgpr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 138
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 144
    if-nez p2, :cond_0

    .line 221
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 148
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lfzv;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lfzv;->f(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lfzv;->d(Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, "spaceType":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 160
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lfzv;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 161
    .local v2, "orgId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_3

    .line 162
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_3
    new-instance v1, Lgpr$1;

    invoke-direct {v1, p1, p2}, Lgpr$1;-><init>(Ljava/lang/String;Lcma;)V

    .line 184
    .local v1, "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 185
    const-class v5, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {v1, v5, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v1, Lcma;

    .line 187
    .restart local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_4
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v1}, Lgon;->a(JLcma;)V

    goto :goto_0

    .line 188
    .end local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    .end local v2    # "orgId":J
    .restart local p0    # "context":Landroid/content/Context;
    :cond_5
    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 189
    :cond_6
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 191
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    :cond_7
    new-instance v1, Lgpr$4;

    invoke-direct {v1, p1, p2}, Lgpr$4;-><init>(Ljava/lang/String;Lcma;)V

    .line 214
    .restart local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_8

    .line 215
    const-class v6, Lcma;

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-static {v1, v6, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v1, Lcma;

    .line 217
    .restart local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_8
    invoke-static {p0, v0, v1}, Lgpt;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "listenerAdmin":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/Object;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcma",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1480
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "listener":Lcma;, "Lcma<TT;>;"
    if-nez p1, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1483
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1484
    invoke-interface {p1, p0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1487
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpr$2;

    invoke-direct {v1, p1, p0}, Lgpr$2;-><init>(Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1539
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1540
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1544
    :goto_0
    return-void

    .line 1543
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1500
    .local p2, "listener":Lcma;, "Lcma<TT;>;"
    if-nez p2, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1503
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1504
    invoke-interface {p2, p0, p1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1507
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpr$3;

    invoke-direct {v1, p2, p0, p1}, Lgpr$3;-><init>(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLcma;)V
    .locals 9
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 298
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {v3, p0}, Lfzv;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {v3, p0}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 239
    .local v4, "tempId":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 240
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    .end local v4    # "tempId":J
    :catch_0
    move-exception v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    .restart local v4    # "tempId":J
    :cond_2
    const-class v3, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    .line 246
    .local v2, "service":Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;
    if-nez v2, :cond_3

    .line 247
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {v0, v8}, Lgoo;->a(Ljava/util/List;Z)Lgid;

    move-result-object v1

    .line 253
    .local v1, "queryParam":Lgid;
    new-instance v3, Lgpr$5;

    invoke-direct {v3, p2, v4, v5}, Lgpr$5;-><init>(Lcma;J)V

    invoke-interface {v2, v1, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listSpace(Lgid;Liyv;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1281
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v0, "willDeletedDentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1288
    const-string/jumbo v1, "space_delete_db_dentry"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lgpr$11;

    invoke-direct {v2, v0}, Lgpr$11;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(J)Z
    .locals 12
    .param p0, "orgId"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 751
    const-wide/16 v2, 0x0

    .line 752
    .local v2, "orgSpaceId":J
    const-wide/16 v4, 0x0

    .line 753
    .local v4, "personalSpaceId":J
    const/4 v0, 0x0

    .line 755
    .local v0, "hasOrgId":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 756
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 757
    const/4 v0, 0x1

    .line 758
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    .line 760
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_0

    .line 761
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    .line 762
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 763
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v6

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v6, v7, v8, v9}, Lfzv;->a(Ljava/lang/String;J)V

    .line 768
    :cond_0
    if-eqz v0, :cond_1

    cmp-long v6, v2, v10

    if-eqz v6, :cond_1

    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "bottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 944
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 948
    :cond_1
    const-string/jumbo v2, "space_print_tip_pref_key"

    invoke-static {p0, v2, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpr;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    const/16 v2, 0x104

    invoke-virtual {p2, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 960
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "creatorEmail"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 115
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    .local v2, "dentryUid":J
    invoke-static {p1}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 118
    .local v0, "currentUid":J
    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    .line 129
    .end local v0    # "currentUid":J
    .end local v2    # "dentryUid":J
    :cond_0
    :goto_0
    return v4

    .line 122
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 1195
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return v1

    .line 1198
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1199
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1200
    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 8

    .prologue
    .line 776
    const-string/jumbo v1, ""

    .line 778
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 780
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 781
    :cond_0
    const/4 v1, 0x0

    .line 795
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 784
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 785
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_3

    .line 789
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 790
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 791
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 2
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 585
    if-nez p0, :cond_0

    .line 586
    const-string/jumbo v0, ""

    .line 588
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 493
    if-nez p0, :cond_0

    .line 503
    :goto_0
    return-object v1

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, "originExtension":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 503
    :cond_1
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-static {p0}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    move-object v5, p1

    .line 503
    invoke-virtual/range {v0 .. v5}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;
    .locals 3
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 1267
    if-eqz p0, :cond_0

    .line 1268
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1346
    .local p0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1347
    :cond_0
    const-string/jumbo v2, ""

    .line 1361
    :goto_0
    return-object v2

    .line 1350
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1352
    .local v1, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1353
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1357
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1358
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1361
    .end local v0    # "string":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 460
    if-nez p0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string/jumbo v0, "pref_space_sort_type"

    invoke-static {p0, v0, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1466
    invoke-static {p0}, Lggr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "displayMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1468
    invoke-static {p0, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :goto_0
    return-void

    .line 1471
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1472
    invoke-static {p0, p1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    :cond_1
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1520
    .local p2, "listener":Lcma;, "Lcma<TT;>;"
    if-nez p2, :cond_0

    .line 1521
    invoke-static {p0, p1}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :goto_0
    return-void

    .line 1523
    :cond_0
    invoke-static {p0, p1, p2}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1338
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    const/4 v0, 0x1

    .line 1342
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 12
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 913
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v2

    .line 915
    .local v2, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 937
    :cond_0
    :goto_0
    return v4

    .line 919
    :cond_1
    const/4 v1, 0x0

    .line 921
    .local v1, "hasPrintApp":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 922
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 926
    iget-object v6, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 927
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_3

    .line 931
    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v10, -0x2b

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v10, -0x2c

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 932
    :cond_4
    const/4 v1, 0x1

    .line 933
    goto :goto_1

    .line 937
    .end local v0    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_5
    if-eqz v1, :cond_0

    invoke-static {p0}, Lgpx;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1277
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1389
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string/jumbo v0, ", "

    const-string/jumbo v1, "[ "

    const-string/jumbo v2, " ]"

    invoke-static {p0, v0, v1, v2}, Lgpr;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1444
    .line 7448
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 7449
    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 7450
    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7451
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(J)V

    .line 1445
    :cond_0
    return-void
.end method

.method public static c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v2, 0x0

    .line 967
    if-nez p0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return v2

    .line 971
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "localUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 975
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0

    .line 971
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "localUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 1
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 984
    if-nez p0, :cond_0

    .line 985
    sget v0, Lfzs$h;->cspace_menu_openbythirdapp:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    :goto_0
    return-object v0

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    sget v0, Lfzs$h;->cspace_email_open:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 990
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    sget v0, Lfzs$h;->dt_cspace_menu_audio_play:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 993
    :cond_2
    sget v0, Lfzs$h;->cspace_menu_openbythirdapp:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1457
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 1458
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1459
    .local v0, "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1463
    .end local v0    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 3

    .prologue
    .line 1328
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_space_disable_dentry_space_id_modification"

    .line 6083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1328
    return v0
.end method

.method public static e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 7
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1001
    if-nez p0, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return v1

    .line 1006
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5028
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    .line 5029
    if-eqz v0, :cond_b

    move v0, v1

    move v3, v1

    .line 5035
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgqu;->a(Ljava/lang/String;)I

    move-result v4

    .line 5036
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v5

    .line 5038
    invoke-static {v4}, Lgqu;->h(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5039
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "readOnly"

    invoke-static {v0, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 5040
    if-eqz v0, :cond_3

    move v0, v1

    move v3, v1

    .line 5071
    :cond_2
    :goto_2
    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 1011
    :goto_3
    if-eqz v2, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-static {p0}, Lgpr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    goto :goto_0

    .line 5044
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "downloadFile"

    invoke-static {v0, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 5045
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "addFile"

    invoke-static {v0, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 5048
    :cond_4
    invoke-static {v4}, Lgqu;->d(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5049
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_conf_space_acl_permission_setting_enable"

    .line 5083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 5049
    if-eqz v3, :cond_5

    .line 5050
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5051
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "downloadFile"

    invoke-static {v0, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 5052
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "addFile"

    invoke-static {v0, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 5056
    :cond_5
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->l(Ljava/lang/String;)I

    move-result v3

    .line 5057
    const/16 v4, 0x67

    if-ne v3, v4, :cond_6

    move v0, v1

    move v3, v2

    .line 5058
    goto :goto_2

    .line 5059
    :cond_6
    const/16 v4, 0x65

    if-eq v3, v4, :cond_7

    if-eq v3, v2, :cond_7

    const/16 v4, 0x66

    if-ne v3, v4, :cond_8

    :cond_7
    move v0, v2

    :cond_8
    move v3, v2

    .line 5064
    goto/16 :goto_2

    .line 5066
    :cond_9
    invoke-static {v4}, Lgqu;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    move v3, v2

    .line 5068
    goto/16 :goto_2

    :cond_a
    move v2, v1

    .line 5071
    goto/16 :goto_3

    :cond_b
    move v0, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method public static f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v1, 0x0

    .line 1079
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1081
    :cond_0
    const-string/jumbo v2, "canOnlineEdit=false,isCrypt=%b"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 1081
    goto :goto_0

    .line 1085
    :cond_2
    invoke-static {p0}, Lgpr;->j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    goto :goto_1
.end method

.method public static g(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1210
    if-nez p0, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return v1

    .line 1214
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getFeatureFlag()I

    move-result v0

    .line 1216
    .local v0, "featureFlag":I
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static h(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 3
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 1257
    if-eqz p0, :cond_0

    .line 1258
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I
    .locals 2
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 1303
    invoke-static {}, Lglr;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return v0

    .line 1307
    :cond_1
    if-eqz p0, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isOverWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static j(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 5
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1089
    if-nez p0, :cond_0

    .line 1090
    const-string/jumbo v2, "canEditImpl=false,dentryModel is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    :goto_0
    return v1

    .line 1094
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    .line 1096
    .local v0, "spaceType":I
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0xb

    if-ne v0, v3, :cond_2

    .line 1098
    :cond_1
    const-string/jumbo v3, "canEditImpl=false,spaceType=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1102
    :cond_2
    const-string/jumbo v3, "canEditImpl=true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 1103
    goto :goto_0
.end method
