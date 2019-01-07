.class public final Lhnc;
.super Lhmy;
.source "SimpleFileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private g:I

.field private h:Lcom/alibaba/doraemon/threadpool/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lhmy;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lhnc;->g:I

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 358
    const-string/jumbo v1, "SimpleFileUploader"

    const-string/jumbo v3, "exception detail"

    invoke-static {v1, v3, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 360
    .local v0, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SimpleFileUploader^uploadFileException="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "param4":Ljava/lang/String;
    const-string/jumbo v1, "SimpleFileUploader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v6    # "param4":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lhnc;->f:Lhna$a;

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lhnc;->f:Lhna$a;

    invoke-interface {v1, p1, p2}, Lhna$a;->a(ILjava/lang/String;)V

    .line 368
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 42
    .param p1, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    :goto_0
    const/16 v26, 0x0

    .line 96
    .local v26, "out":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 97
    .local v19, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 99
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v28, 0x0

    .line 102
    .local v28, "redirectUrl":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->a:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v15, "file":Ljava/io/File;
    const-string/jumbo v37, "SimpleFileUploader"

    new-instance v38, Ljava/lang/StringBuilder;

    const-string/jumbo v39, "file "

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " size: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v40

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcms;->k(Landroid/content/Context;)Z

    move-result v37

    if-nez v37, :cond_1

    .line 110
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v38

    const-wide/32 v40, 0xa00000

    cmp-long v37, v38, v40

    if-lez v37, :cond_1

    .line 111
    const-string/jumbo v14, "file too large in cellular network"

    .line 112
    .local v14, "errorMessage":Ljava/lang/String;
    const-string/jumbo v37, "SimpleFileUploader"

    move-object/from16 v0, v37

    invoke-static {v0, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->f:Lhna$a;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->f:Lhna$a;

    move-object/from16 v37, v0

    const/16 v38, 0xc

    new-instance v39, Ljava/lang/Exception;

    move-object/from16 v0, v39

    invoke-direct {v0, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-interface {v0, v1, v14}, Lhna$a;->a(ILjava/lang/String;)V

    .line 354
    .end local v14    # "errorMessage":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 123
    .restart local v15    # "file":Ljava/io/File;
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v16, "headSb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->c:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    if-eqz v37, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->c:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->c:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v23

    .line 126
    .local v23, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 127
    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_6

    .line 128
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 129
    .local v22, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->c:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-eqz v37, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->c:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    .line 131
    .local v35, "value":Ljava/lang/String;
    const-string/jumbo v37, "------WebKitFormBoundaryInjektToAweSSome\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v37, Ljava/lang/StringBuilder;

    const-string/jumbo v38, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "\"\r\n"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v37, "\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "\r\n"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_1

    .line 309
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "headSb":Ljava/lang/StringBuilder;
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v23    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v35    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 310
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/16 v37, 0xb

    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2, v9}, Lhnc;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    if-eqz v6, :cond_3

    .line 328
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :cond_3
    if-eqz v19, :cond_4

    .line 333
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 339
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    if-eqz v26, :cond_5

    .line 341
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 351
    :cond_5
    :goto_4
    if-eqz v28, :cond_0

    .line 352
    move-object/from16 p1, v28

    goto/16 :goto_0

    .line 142
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "headSb":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_4
    const-string/jumbo v37, "------WebKitFormBoundaryInjektToAweSSome\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v37, Ljava/lang/StringBuilder;

    const-string/jumbo v38, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->b:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "\"; filename=\""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 145
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "\"\r\n"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 144
    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v37, "\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v38, "UTF-8"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 153
    .local v18, "headerInfo":[B
    const-string/jumbo v37, "\r\n------WebKitFormBoundaryInjektToAweSSome--\r\n"

    const-string/jumbo v38, "UTF-8"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 158
    .local v11, "endInfo":[B
    new-instance v34, Ljava/net/URL;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    .local v34, "url":Ljava/net/URL;
    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v37

    move-object/from16 v0, v37

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 160
    const-string/jumbo v37, "POST"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    if-eqz v37, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_a

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v23

    .line 167
    .restart local v23    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 168
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_a

    .line 169
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 170
    .restart local v22    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 171
    .local v36, "valueObj":Ljava/lang/Object;
    if-eqz v36, :cond_7

    move-object/from16 v0, v36

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v37, v0

    if-eqz v37, :cond_7

    .line 172
    move-object/from16 v0, v36

    check-cast v0, Ljava/lang/String;

    move-object/from16 v35, v0

    .line 173
    .restart local v35    # "value":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 321
    .end local v11    # "endInfo":[B
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "headSb":Ljava/lang/StringBuilder;
    .end local v18    # "headerInfo":[B
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v23    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "url":Ljava/net/URL;
    .end local v35    # "value":Ljava/lang/String;
    .end local v36    # "valueObj":Ljava/lang/Object;
    :catch_1
    move-exception v9

    .line 325
    .local v9, "e":Ljava/lang/Throwable;
    :goto_6
    const/16 v37, 0xc

    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2, v9}, Lhnc;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 327
    if-eqz v6, :cond_8

    .line 328
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :cond_8
    if-eqz v19, :cond_9

    .line 333
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 339
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_9
    :goto_7
    if-eqz v26, :cond_5

    .line 341
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 342
    :catch_2
    move-exception v9

    .line 343
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 178
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "endInfo":[B
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "headSb":Ljava/lang/StringBuilder;
    .restart local v18    # "headerInfo":[B
    .restart local v34    # "url":Ljava/net/URL;
    :cond_a
    :try_start_8
    const-string/jumbo v37, "Content-Type"

    const-string/jumbo v38, "multipart/form-data; boundary=----WebKitFormBoundaryInjektToAweSSome"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v37, "Content-Length"

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    .line 180
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v40

    add-long v38, v38, v40

    array-length v0, v11

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    .line 179
    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v37, 0x2710

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 183
    const/16 v37, 0x7530

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 185
    const-string/jumbo v37, "accept"

    const-string/jumbo v38, "*/*"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v37, "connection"

    const-string/jumbo v38, "Keep-Alive"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string/jumbo v39, "MiniFileUploader"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v37 .. v37}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 188
    .local v33, "ua":Ljava/lang/String;
    const-string/jumbo v37, "user-agent"

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 203
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    .line 204
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 205
    .end local v19    # "in":Ljava/io/InputStream;
    .local v20, "in":Ljava/io/InputStream;
    :try_start_9
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 207
    const/16 v37, 0x400

    move/from16 v0, v37

    new-array v4, v0, [B

    .line 209
    .local v4, "buf":[B
    :goto_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .local v24, "len":I
    const/16 v37, -0x1

    move/from16 v0, v24

    move/from16 v1, v37

    if-eq v0, v1, :cond_b

    .line 210
    const/16 v37, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    .line 309
    .end local v4    # "buf":[B
    .end local v24    # "len":I
    :catch_3
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/InputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 212
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v4    # "buf":[B
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v24    # "len":I
    :cond_b
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->flush()V

    .line 215
    const-string/jumbo v37, "SimpleFileUploader"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v32

    .line 225
    .local v32, "statusCode":I
    const/16 v37, 0x12c

    move/from16 v0, v32

    move/from16 v1, v37

    if-lt v0, v1, :cond_f

    const/16 v37, 0x190

    move/from16 v0, v32

    move/from16 v1, v37

    if-ge v0, v1, :cond_f

    const/16 v37, 0x130

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_f

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lhnc;->g:I

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_c

    .line 227
    const-string/jumbo v37, "SimpleFileUploader"

    const-string/jumbo v38, "Too many redirect"

    invoke-static/range {v37 .. v38}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v37, Ljava/lang/Exception;

    const-string/jumbo v38, "Too many redirect"

    invoke-direct/range {v37 .. v38}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v37

    .line 321
    .end local v4    # "buf":[B
    .end local v24    # "len":I
    .end local v32    # "statusCode":I
    :catch_4
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/InputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 231
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v4    # "buf":[B
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v24    # "len":I
    .restart local v32    # "statusCode":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lhnc;->g:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lhnc;->g:I

    .line 235
    const-string/jumbo v37, "Location"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v28

    .line 327
    :cond_d
    :goto_9
    if-eqz v6, :cond_e

    .line 328
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 333
    :cond_e
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 339
    :goto_a
    if-eqz v26, :cond_19

    .line 341
    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v19, v20

    .line 344
    .end local v20    # "in":Ljava/io/InputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 242
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v20    # "in":Ljava/io/InputStream;
    :cond_f
    const/16 v37, 0xc8

    move/from16 v0, v32

    move/from16 v1, v37

    if-lt v0, v1, :cond_13

    const/16 v37, 0x12c

    move/from16 v0, v32

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    .line 243
    :try_start_c
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .local v7, "data":Ljava/io/InputStream;
    move-object v8, v7

    .line 251
    .end local v7    # "data":Ljava/io/InputStream;
    .local v8, "data":Ljava/io/InputStream;
    :goto_b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "encoding":Ljava/lang/String;
    if-eqz v10, :cond_1a

    const-string/jumbo v37, "gzip"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_1a

    .line 253
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .end local v8    # "data":Ljava/io/InputStream;
    .restart local v7    # "data":Ljava/io/InputStream;
    :goto_c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v30, "result":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v37, Ljava/io/InputStreamReader;

    move-object/from16 v0, v37

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :goto_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    .local v25, "line":Ljava/lang/String;
    if-eqz v25, :cond_14

    .line 262
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    .line 327
    .end local v4    # "buf":[B
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "data":Ljava/io/InputStream;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v24    # "len":I
    .end local v25    # "line":Ljava/lang/String;
    .end local v30    # "result":Ljava/lang/StringBuilder;
    .end local v32    # "statusCode":I
    :catchall_0
    move-exception v37

    move-object/from16 v19, v20

    .end local v11    # "endInfo":[B
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "headSb":Ljava/lang/StringBuilder;
    .end local v18    # "headerInfo":[B
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v33    # "ua":Ljava/lang/String;
    .end local v34    # "url":Ljava/net/URL;
    .restart local v19    # "in":Ljava/io/InputStream;
    :goto_e
    if-eqz v6, :cond_10

    .line 328
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :cond_10
    if-eqz v19, :cond_11

    .line 333
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 339
    :cond_11
    :goto_f
    if-eqz v26, :cond_12

    .line 341
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 344
    :cond_12
    :goto_10
    throw v37

    .line 246
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v4    # "buf":[B
    .restart local v11    # "endInfo":[B
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "headSb":Ljava/lang/StringBuilder;
    .restart local v18    # "headerInfo":[B
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v24    # "len":I
    .restart local v32    # "statusCode":I
    .restart local v33    # "ua":Ljava/lang/String;
    .restart local v34    # "url":Ljava/net/URL;
    :cond_13
    :try_start_f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .restart local v7    # "data":Ljava/io/InputStream;
    move-object v8, v7

    .end local v7    # "data":Ljava/io/InputStream;
    .restart local v8    # "data":Ljava/io/InputStream;
    goto :goto_b

    .line 268
    .end local v8    # "data":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "data":Ljava/io/InputStream;
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v25    # "line":Ljava/lang/String;
    .restart local v30    # "result":Ljava/lang/StringBuilder;
    :cond_14
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v17

    .line 269
    .local v17, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v29, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v29 .. v29}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 270
    .local v29, "resHeaders":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v17, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_18

    .line 271
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_15
    :goto_11
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_18

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 272
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v12, :cond_15

    .line 273
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 274
    .local v13, "entryKey":Ljava/lang/String;
    if-eqz v13, :cond_15

    .line 275
    const-string/jumbo v35, ""

    .line 276
    .restart local v35    # "value":Ljava/lang/String;
    const-string/jumbo v37, "SimpleFileUploader"

    new-instance v39, Ljava/lang/StringBuilder;

    const-string/jumbo v40, "Key : "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", Value : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    if-eqz v37, :cond_15

    .line 278
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_12
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_17

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 279
    .local v31, "s":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 280
    move-object/from16 v35, v31

    goto :goto_12

    .line 282
    :cond_16
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 284
    goto :goto_12

    .line 285
    .end local v31    # "s":Ljava/lang/String;
    :cond_17
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 299
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "entryKey":Ljava/lang/String;
    .end local v35    # "value":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->f:Lhna$a;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    .line 300
    new-instance v27, Lhmy$a;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lhmy$a;-><init>(Lhmy;)V

    .line 301
    .local v27, "r":Lhmy$a;
    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Lhmy$a;->a:I

    .line 302
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    iput-object v0, v1, Lhmy$a;->b:Ljava/lang/String;

    .line 303
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lhmy$a;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnc;->f:Lhna$a;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lhna$a;->a(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_9

    .line 334
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "data":Ljava/io/InputStream;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v17    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v25    # "line":Ljava/lang/String;
    .end local v27    # "r":Lhmy$a;
    .end local v29    # "resHeaders":Lcom/alibaba/fastjson/JSONObject;
    .end local v30    # "result":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v9

    .line 335
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 342
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 343
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v19, v20

    .line 344
    .end local v20    # "in":Ljava/io/InputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 334
    .end local v4    # "buf":[B
    .end local v11    # "endInfo":[B
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "headSb":Ljava/lang/StringBuilder;
    .end local v18    # "headerInfo":[B
    .end local v24    # "len":I
    .end local v32    # "statusCode":I
    .end local v33    # "ua":Ljava/lang/String;
    .end local v34    # "url":Ljava/net/URL;
    .local v9, "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v9

    .line 335
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 342
    .end local v9    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 343
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 334
    .local v9, "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v9

    .line 335
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 334
    .end local v9    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 335
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 342
    .end local v9    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v9

    .line 343
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    .line 327
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v37

    goto/16 :goto_e

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v4    # "buf":[B
    .restart local v11    # "endInfo":[B
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "headSb":Ljava/lang/StringBuilder;
    .restart local v18    # "headerInfo":[B
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v24    # "len":I
    .restart local v32    # "statusCode":I
    .restart local v33    # "ua":Ljava/lang/String;
    .restart local v34    # "url":Ljava/net/URL;
    :cond_19
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/InputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v8    # "data":Ljava/io/InputStream;
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/InputStream;
    :cond_1a
    move-object v7, v8

    .end local v8    # "data":Ljava/io/InputStream;
    .restart local v7    # "data":Ljava/io/InputStream;
    goto/16 :goto_c
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    iget-object v1, p0, Lhnc;->h:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lhnc;->f:Lhna$a;

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v0, "cannot start file uploader more than once"

    .line 58
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lhnc;->f:Lhna$a;

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lhna$a;->a(ILjava/lang/String;)V

    .line 66
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string/jumbo v1, "SimpleFileUploader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    iput-object v1, p0, Lhnc;->h:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 64
    const-string/jumbo v1, "SimpleFileUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start task url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhnc;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " filepath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhnc;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lhnc;->h:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lhnc;->h:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhnc;->h:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0}, Lcom/alibaba/doraemon/threadpool/Thread;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "SimpleFileUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancel task url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhnc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " filepath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhnc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lhnc;->h:Lcom/alibaba/doraemon/threadpool/Thread;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 83
    const v0, 0xa010

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lhnc;->f:Lhna$a;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lhnc;->f:Lhna$a;

    invoke-interface {v0}, Lhna$a;->a()V

    .line 90
    :cond_1
    iget-object v0, p0, Lhnc;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhnc;->d(Ljava/lang/String;)V

    .line 91
    return-void
.end method
