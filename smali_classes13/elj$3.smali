.class public final Lelj$3;
.super Ljava/lang/Object;
.source "BackgroundTaskLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lelj;


# direct methods
.method public constructor <init>(Lelj;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lelj;

    .prologue
    .line 127
    iput-object p1, p0, Lelj$3;->b:Lelj;

    iput-object p2, p0, Lelj$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .prologue
    .line 130
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v22, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, "dateStr":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 133
    const-string/jumbo v3, "sp_key_storage_report"

    invoke-static {v3}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "currentDateStr":Ljava/lang/String;
    invoke-static {v11, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    .end local v10    # "currentDateStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 138
    .restart local v10    # "currentDateStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "sp_key_storage_report"

    invoke-static {v3, v11}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v10    # "currentDateStr":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 143
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v2, :cond_4

    .line 145
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v20

    .line 146
    .local v20, "openId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v20, v4

    if-lez v3, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lelj$3;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 149
    .local v12, "dbFile":Ljava/io/File;
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "storage"

    const-string/jumbo v5, "dddb"

    move-object/from16 v0, p0

    iget-object v6, v0, Lelj$3;->b:Lelj;

    invoke-static {v6, v12}, Lelj;->a(Lelj;Ljava/io/File;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 152
    .local v18, "key":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lieb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, "dbName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lelj$3;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 154
    .local v23, "wkFile":Ljava/io/File;
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "storage"

    const-string/jumbo v5, "wkdb"

    move-object/from16 v0, p0

    iget-object v6, v0, Lelj$3;->b:Lelj;

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lelj;->a(Lelj;Ljava/io/File;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 156
    new-instance v19, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lelj$3;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "search"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v19, "searchDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .local v16, "idxFiles":[Ljava/io/File;
    if-eqz v16, :cond_4

    .line 159
    const-wide/16 v24, 0x0

    .line 160
    .local v24, "size":J
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v15, v16, v3

    .line 161
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long v24, v24, v6

    .line 160
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    .end local v15    # "f":Ljava/io/File;
    :cond_3
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "storage"

    const-string/jumbo v5, "searchIdx"

    move-wide/from16 v0, v24

    long-to-double v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/CCBaseInterface;->a()Lcom/alibaba/dingtalk/cmailbase/CCBaseInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_2
    :try_start_2
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 174
    .local v17, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "storage"

    const-string/jumbo v5, "picCache"

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/doraemon/image/ImageMagician;->getDiskCacheSize()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    const-string/jumbo v3, "AUDIO"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 177
    .local v8, "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "storage"

    const-string/jumbo v5, "audioCache"

    invoke-interface {v8}, Lcom/alibaba/doraemon/audio/AudioMagician;->getDiskCacheSize()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 179
    const-string/jumbo v3, "CACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/cache/Cache;

    .line 180
    .local v9, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "storage"

    const-string/jumbo v5, "otherCache"

    invoke-interface {v9}, Lcom/alibaba/doraemon/cache/Cache;->getCacheSize()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    .end local v8    # "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    .end local v9    # "cache":Lcom/alibaba/doraemon/cache/Cache;
    .end local v12    # "dbFile":Ljava/io/File;
    .end local v13    # "dbName":Ljava/lang/String;
    .end local v16    # "idxFiles":[Ljava/io/File;
    .end local v17    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "searchDir":Ljava/io/File;
    .end local v20    # "openId":J
    .end local v23    # "wkFile":Ljava/io/File;
    .end local v24    # "size":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lelj$3;->b:Lelj;

    .line 1038
    const/4 v4, 0x1

    iput-boolean v4, v3, Lelj;->c:Z

    goto/16 :goto_0

    .line 169
    .restart local v12    # "dbFile":Ljava/io/File;
    .restart local v13    # "dbName":Ljava/lang/String;
    .restart local v16    # "idxFiles":[Ljava/io/File;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "searchDir":Ljava/io/File;
    .restart local v20    # "openId":J
    .restart local v23    # "wkFile":Ljava/io/File;
    .restart local v24    # "size":J
    :catch_0
    move-exception v14

    .line 170
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 186
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v12    # "dbFile":Ljava/io/File;
    .end local v13    # "dbName":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "idxFiles":[Ljava/io/File;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "searchDir":Ljava/io/File;
    .end local v20    # "openId":J
    .end local v23    # "wkFile":Ljava/io/File;
    .end local v24    # "size":J
    :catch_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lelj$3;->b:Lelj;

    .line 2038
    const/4 v4, 0x1

    iput-boolean v4, v3, Lelj;->c:Z

    goto/16 :goto_0

    .line 186
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lelj$3;->b:Lelj;

    .line 3038
    const/4 v5, 0x1

    iput-boolean v5, v4, Lelj;->c:Z

    .line 186
    throw v3
.end method
