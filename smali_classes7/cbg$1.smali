.class final Lcbg$1;
.super Ljava/lang/Object;
.source "FestivalRedPacketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbg;->a(Ljava/lang/String;Lcma;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcbg;


# direct methods
.method constructor <init>(Lcbg;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcbg;

    .prologue
    .line 136
    iput-object p1, p0, Lcbg$1;->c:Lcbg;

    iput-object p2, p0, Lcbg$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcbg$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 35

    .prologue
    .line 139
    const-string/jumbo v6, ""

    .line 140
    .local v6, "errorCode":Ljava/lang/String;
    const-string/jumbo v7, "unknown error"

    .line 142
    .local v7, "errorMsg":Ljava/lang/String;
    const/16 v25, 0x0

    .line 145
    .local v25, "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v31

    monitor-enter v31

    .line 146
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->a:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->a:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object/from16 v25, v0

    .line 149
    :cond_0
    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-eqz v25, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->b:Lcma;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 152
    move-object/from16 v10, v25

    .line 153
    .local v10, "finalResult":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v30

    new-instance v31, Lcbg$1$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcbg$1$1;-><init>(Lcbg$1;Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;)V

    invoke-virtual/range {v30 .. v31}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 419
    .end local v10    # "finalResult":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    :cond_1
    :goto_0
    return-void

    .line 149
    :catchall_0
    move-exception v30

    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    .line 164
    :cond_2
    new-instance v16, Ljava/io/File;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcid;->c()Landroid/app/Application;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "festival_red_packet"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v16, "jsonFileDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->a:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v15, "jsonFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 167
    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v30

    if-nez v30, :cond_4

    .line 168
    const-string/jumbo v7, "json file can not read"

    .line 409
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->b:Lcma;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 410
    move-object v8, v6

    .line 411
    .local v8, "finalErrorCode":Ljava/lang/String;
    move-object v9, v7

    .line 412
    .local v9, "finalErrorMsg":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v30

    new-instance v31, Lcbg$1$5;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcbg$1$5;-><init>(Lcbg$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 171
    .end local v8    # "finalErrorCode":Ljava/lang/String;
    .end local v9    # "finalErrorMsg":Ljava/lang/String;
    :cond_4
    invoke-static {v15}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v4

    .line 172
    .local v4, "data":[B
    if-eqz v4, :cond_5

    array-length v0, v4

    move/from16 v30, v0

    if-lez v30, :cond_5

    .line 173
    const/16 v17, 0x0

    .line 175
    .local v17, "jsonString":Ljava/lang/String;
    :try_start_2
    new-instance v18, Ljava/lang/String;

    const-string/jumbo v30, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v17    # "jsonString":Ljava/lang/String;
    .local v18, "jsonString":Ljava/lang/String;
    move-object/from16 v17, v18

    .line 179
    .end local v18    # "jsonString":Ljava/lang/String;
    .restart local v17    # "jsonString":Ljava/lang/String;
    :goto_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 181
    :try_start_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcid;->b()Lchy;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v30

    const-class v31, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object/from16 v25, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    .end local v17    # "jsonString":Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v25, :cond_6

    .line 191
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 195
    :goto_4
    const-string/jumbo v7, "json file is broken"

    .line 196
    goto :goto_1

    .line 176
    .restart local v17    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 177
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 184
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v17    # "jsonString":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 193
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 199
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v31

    monitor-enter v31

    .line 200
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->a:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->b:Lcma;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 203
    move-object/from16 v10, v25

    .line 204
    .restart local v10    # "finalResult":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v30

    new-instance v31, Lcbg$1$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcbg$1$2;-><init>(Lcbg$1;Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;)V

    invoke-virtual/range {v30 .. v31}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 201
    .end local v10    # "finalResult":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    :catchall_1
    move-exception v30

    :try_start_6
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v30

    .line 214
    .end local v4    # "data":[B
    :cond_7
    new-instance v26, Ljava/io/File;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcid;->c()Landroid/app/Application;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "festival_unzip_temp"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v26, "tempDirFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_8

    .line 217
    invoke-static/range {v26 .. v26}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 219
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    move-result v30

    if-nez v30, :cond_9

    .line 220
    const-string/jumbo v7, "can not create temp dir file"

    .line 221
    goto/16 :goto_1

    .line 224
    :cond_9
    new-instance v29, Ljava/io/File;

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "package.zip"

    invoke-direct/range {v29 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v29, "zipFile":Ljava/io/File;
    const/16 v27, 0x0

    .line 229
    .local v27, "url":Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->a:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v27

    .line 233
    :goto_5
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 234
    const-string/jumbo v7, "invalid package media id"

    .line 235
    goto/16 :goto_1

    .line 230
    :catch_3
    move-exception v5

    .line 231
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 239
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    .line 240
    .local v24, "requestFinished":[Z
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v14, v0, [Ljava/lang/String;

    .line 241
    .local v14, "innerErrorMsg":[Ljava/lang/String;
    const-string/jumbo v30, "REQUEST"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alibaba/doraemon/request/Request;

    .line 242
    .local v23, "request":Lcom/alibaba/doraemon/request/Request;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 243
    const-string/jumbo v30, "User-Agent"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcid;->b()Lchy;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lchy;->getWKUserAgent()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 244
    const-class v30, Lcbg;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 245
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 246
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 247
    new-instance v30, Lcbg$1$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v14, v3}, Lcbg$1$3;-><init>(Lcbg$1;Ljava/io/File;[Ljava/lang/String;[Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 274
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 277
    const/16 v28, 0x12c

    .line 279
    .local v28, "waitCount":I
    :goto_6
    monitor-enter v24

    .line 280
    const/16 v30, 0x0

    :try_start_8
    aget-boolean v30, v24, v30

    if-eqz v30, :cond_b

    .line 281
    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 296
    const/16 v30, 0x0

    aget-object v30, v14, v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_d

    .line 297
    const/16 v30, 0x0

    aget-object v7, v14, v30

    .line 298
    goto/16 :goto_1

    .line 283
    :cond_b
    :try_start_9
    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 284
    add-int/lit8 v28, v28, -0x1

    .line 285
    if-nez v28, :cond_c

    .line 286
    const-string/jumbo v7, "wait download timeout"

    .line 287
    goto/16 :goto_1

    .line 283
    :catchall_2
    move-exception v30

    :try_start_a
    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v30

    .line 290
    :cond_c
    const-wide/16 v30, 0x64

    :try_start_b
    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_6

    .line 291
    :catch_4
    move-exception v5

    .line 292
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 301
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_d
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_e

    .line 302
    const-string/jumbo v7, "package.zip not exists"

    .line 303
    goto/16 :goto_1

    .line 307
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcbg;->a(Lcbg;Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 313
    new-instance v19, Ljava/io/File;

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "manifest.json"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v19, "manifest":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_f

    .line 315
    const-string/jumbo v7, "manifest.json not exists"

    .line 316
    goto/16 :goto_1

    .line 308
    .end local v19    # "manifest":Ljava/io/File;
    :catch_5
    move-exception v5

    .line 309
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    const-string/jumbo v7, "unzip package.zip error"

    .line 311
    goto/16 :goto_1

    .line 318
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v19    # "manifest":Ljava/io/File;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_10

    .line 319
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v30

    if-nez v30, :cond_10

    .line 320
    const-string/jumbo v7, "can not create json file dir"

    .line 321
    goto/16 :goto_1

    .line 325
    :cond_10
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/alibaba/doraemon/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 327
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "images"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v13, "imagesDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_11

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v30

    if-nez v30, :cond_12

    .line 329
    :cond_11
    const-string/jumbo v7, "images dir not exists"

    .line 330
    goto/16 :goto_1

    .line 332
    :cond_12
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v22

    .line 333
    .local v22, "names":[Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 336
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_7
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_14

    aget-object v21, v22, v30

    .line 337
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v32, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 338
    .local v11, "i":I
    if-lez v11, :cond_13

    .line 341
    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 342
    .local v20, "mediaId":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 345
    const/4 v12, 0x0

    .line 347
    .local v12, "imageUrl":Ljava/lang/String;
    :try_start_d
    invoke-static/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v12

    .line 351
    :goto_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_13

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcbg;->b(Lcbg;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v12, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v12    # "imageUrl":Ljava/lang/String;
    .end local v20    # "mediaId":Ljava/lang/String;
    :cond_13
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 348
    .restart local v12    # "imageUrl":Ljava/lang/String;
    .restart local v20    # "mediaId":Ljava/lang/String;
    :catch_6
    move-exception v5

    .line 349
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 359
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "i":I
    .end local v12    # "imageUrl":Ljava/lang/String;
    .end local v20    # "mediaId":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    :cond_14
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_15

    .line 360
    const-string/jumbo v7, "copy json file not exists"

    .line 361
    goto/16 :goto_1

    .line 363
    :cond_15
    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v30

    if-nez v30, :cond_16

    .line 364
    const-string/jumbo v7, "copy json file can not read"

    .line 365
    goto/16 :goto_1

    .line 367
    :cond_16
    invoke-static {v15}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v4

    .line 368
    .restart local v4    # "data":[B
    if-eqz v4, :cond_17

    array-length v0, v4

    move/from16 v30, v0

    if-lez v30, :cond_17

    .line 369
    const/16 v17, 0x0

    .line 371
    .restart local v17    # "jsonString":Ljava/lang/String;
    :try_start_e
    new-instance v18, Ljava/lang/String;

    const-string/jumbo v30, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .end local v17    # "jsonString":Ljava/lang/String;
    .restart local v18    # "jsonString":Ljava/lang/String;
    move-object/from16 v17, v18

    .line 375
    .end local v18    # "jsonString":Ljava/lang/String;
    .restart local v17    # "jsonString":Ljava/lang/String;
    :goto_9
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_17

    .line 377
    :try_start_f
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcid;->b()Lchy;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v30

    const-class v31, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object/from16 v25, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 384
    .end local v17    # "jsonString":Ljava/lang/String;
    :cond_17
    :goto_a
    if-nez v25, :cond_18

    .line 387
    :try_start_10
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 391
    :goto_b
    const-string/jumbo v7, "copy json file is broken"

    .line 392
    goto/16 :goto_1

    .line 372
    .restart local v17    # "jsonString":Ljava/lang/String;
    :catch_7
    move-exception v5

    .line 373
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 379
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .line 380
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 388
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v17    # "jsonString":Ljava/lang/String;
    :catch_9
    move-exception v5

    .line 389
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 395
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v31

    monitor-enter v31

    .line 396
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->c:Lcbg;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcbg;->a(Lcbg;)Ljava/util/Map;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->a:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    monitor-exit v31
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcbg$1;->b:Lcma;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 399
    move-object/from16 v10, v25

    .line 400
    .restart local v10    # "finalResult":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v30

    new-instance v31, Lcbg$1$4;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcbg$1$4;-><init>(Lcbg$1;Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;)V

    invoke-virtual/range {v30 .. v31}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 397
    .end local v10    # "finalResult":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    :catchall_3
    move-exception v30

    :try_start_12
    monitor-exit v31
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v30
.end method
