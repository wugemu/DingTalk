.class final Lcot$1;
.super Ljava/lang/Object;
.source "HttpFileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcot$a;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcot$a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcot$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcot$1;->b:Lcot$a;

    iput-object p3, p0, Lcot$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcot$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcot$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcot$1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcot$1;->g:Ljava/util/Map;

    iput p8, p0, Lcot$1;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .prologue
    .line 103
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->a:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v10, "file":Ljava/io/File;
    const-string/jumbo v25, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "filePath:"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->a:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, ", file: "

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_1

    .line 107
    const-string/jumbo v25, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "file not exist"

    invoke-static/range {v25 .. v27}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/16 v25, -0x66

    const-string/jumbo v26, "file not exist"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->b:Lcot$a;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcot;->a(ILjava/lang/String;Lcot$a;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v4, 0x0

    .line 114
    .local v4, "buf":[B
    :try_start_0
    new-instance v22, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 115
    .local v22, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->c:Ljava/util/Map;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->c:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->c:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 117
    .local v15, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 118
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 119
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 120
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->c:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    .line 121
    .local v24, "value":Ljava/lang/String;
    const-string/jumbo v25, "------WebKitFormBoundaryT1HoybnYeFOGFlBR\r\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 122
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\"\r\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 123
    const-string/jumbo v25, "\r\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 124
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\r\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 203
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v24    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 204
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v25, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "exception detail: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v25, -0x64

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->b:Lcot$a;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcot;->a(ILjava/lang/String;Lcot$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    if-eqz v4, :cond_2

    .line 208
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 212
    :cond_2
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 213
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v7

    .line 214
    .local v7, "deleteResult":Z
    const-string/jumbo v25, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "delete file result: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v7    # "deleteResult":Z
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v22    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    :try_start_2
    const-string/jumbo v25, "------WebKitFormBoundaryT1HoybnYeFOGFlBR\r\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 131
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->d:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\"; filename=\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\"\r\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->e:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "video"

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 134
    const-string/jumbo v25, "Content-Type: video/mp4;\r\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 136
    :cond_4
    const-string/jumbo v25, "\r\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 138
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "UTF-8"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 139
    .local v11, "headerInfo":[B
    const-string/jumbo v25, "\r\n------WebKitFormBoundaryT1HoybnYeFOGFlBR--\r\n"

    const-string/jumbo v26, "UTF-8"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 140
    .local v9, "endInfo":[B
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->f:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    .local v23, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->f:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "https://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 143
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 147
    .local v6, "conn":Ljava/net/HttpURLConnection;
    :goto_2
    const-string/jumbo v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v25, "Content-Type"

    const-string/jumbo v26, "multipart/form-data; boundary=----WebKitFormBoundaryT1HoybnYeFOGFlBR"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v25, "Content-Length"

    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v28

    add-long v26, v26, v28

    array-length v0, v9

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->g:Ljava/util/Map;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->g:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->g:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 153
    .restart local v15    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 154
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 155
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 156
    .restart local v14    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->g:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    .line 157
    .restart local v24    # "value":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v6, v14, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 207
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "endInfo":[B
    .end local v11    # "headerInfo":[B
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v23    # "url":Ljava/net/URL;
    .end local v24    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v25

    if-eqz v4, :cond_5

    .line 208
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 212
    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 213
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v7

    .line 214
    .restart local v7    # "deleteResult":Z
    const-string/jumbo v26, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "delete file result: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v7    # "deleteResult":Z
    :cond_6
    throw v25

    .line 145
    .restart local v9    # "endInfo":[B
    .restart local v11    # "headerInfo":[B
    .restart local v22    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_7
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_2

    .line 161
    :cond_8
    const-string/jumbo v25, "accept"

    const-string/jumbo v26, "*/*"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v25, "connection"

    const-string/jumbo v26, "Keep-Alive"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcot$1;->h:I

    move/from16 v25, v0

    if-lez v25, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcot$1;->h:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    :goto_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .line 171
    .local v18, "out":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 172
    .local v12, "in":Ljava/io/InputStream;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 174
    const/16 v25, 0x400

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    .line 176
    :goto_5
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "len":I
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 177
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 167
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v16    # "len":I
    .end local v18    # "out":Ljava/io/OutputStream;
    :cond_9
    const/16 v25, 0x7530

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    goto :goto_4

    .line 180
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v18    # "out":Ljava/io/OutputStream;
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 181
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 182
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 183
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    .line 185
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 186
    .local v19, "responseCode":I
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v20

    .line 187
    .local v20, "responseMsg":Ljava/lang/String;
    const-string/jumbo v25, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "url:"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->f:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, ", responseCode:"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, ", responseMessage:"

    aput-object v29, v27, v28

    const/16 v28, 0x5

    aput-object v20, v27, v28

    invoke-static/range {v27 .. v27}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v21, ""

    .line 190
    .local v21, "result":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    .line 191
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :goto_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 194
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    .line 196
    :cond_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 198
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->b:Lcot$a;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcot$1;->b:Lcot$a;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcot$a;->onResponse(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    :cond_c
    if-eqz v4, :cond_d

    .line 208
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 212
    :cond_d
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 213
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v7

    .line 214
    .restart local v7    # "deleteResult":Z
    const-string/jumbo v25, "dingtalkbase"

    invoke-static {}, Lcot;->a()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "delete file result: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
