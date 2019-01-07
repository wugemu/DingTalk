.class public Lcom/alibaba/doraemon/utils/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "PBEWithMD5AndDES"

.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "srcPathName"    # Ljava/lang/String;
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, "is":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 279
    .local v4, "os":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 281
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    const/4 v1, 0x0

    .line 283
    .local v1, "data":[B
    const/16 v5, 0x400

    :try_start_0
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 284
    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v3, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 285
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "count":I
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 292
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 293
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 294
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 288
    .restart local v0    # "count":I
    :cond_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 290
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 291
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 292
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 293
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 294
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 295
    return-void
.end method

.method public static unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "outputDirectory"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v0, "inputStream":Ljava/util/zip/ZipInputStream;
    invoke-static {v0, p1, p2}, Lcom/alibaba/doraemon/utils/ZipUtil;->unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "outputDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v0, "inputStream":Ljava/util/zip/ZipInputStream;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/alibaba/doraemon/utils/ZipUtil;->unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "outputDirectory"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v0, "inputStream":Ljava/util/zip/ZipInputStream;
    invoke-static {v0, p1, p2}, Lcom/alibaba/doraemon/utils/ZipUtil;->unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static unzip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "outputDirectory"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v12, 0x0

    .line 193
    .local v12, "outputStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 195
    .local v2, "buffer":[B
    const/16 v18, 0x400

    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v13, v12

    .line 196
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v17

    .local v17, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v17, :cond_9

    .line 197
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 198
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "name":Ljava/lang/String;
    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 201
    const-string/jumbo v18, "../"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    sget v18, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 202
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "zipEntry getName contain ../ file name ="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " outputDirectory="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v18

    move-object v12, v13

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v18, Ljava/lang/Exception;

    const-string/jumbo v19, "\u89e3\u538b\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :catchall_0
    move-exception v18

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 258
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 259
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 260
    if-eqz v2, :cond_0

    .line 261
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_0
    throw v18

    .line 204
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 254
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v18

    move-object v12, v13

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    new-instance v18, Ljava/lang/Exception;

    const-string/jumbo v19, "\u89e3\u538b\u6587\u4ef6\u5bc6\u7801\u4e0d\u6b63\u786e"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    :try_start_5
    new-instance v5, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 210
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 212
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_3

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 214
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    if-lez v9, :cond_4

    .line 215
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v2, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 251
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "len":I
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v18

    goto/16 :goto_1

    .line 218
    .restart local v5    # "file":Ljava/io/File;
    .restart local v9    # "len":I
    .restart local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    move-object v13, v12

    .line 219
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 222
    .end local v9    # "len":I
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5
    new-instance v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 223
    .local v8, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string/jumbo v18, "PBEWithMD5AndDES"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    .line 224
    .local v7, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v7, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 225
    .local v15, "passwordKey":Ljavax/crypto/SecretKey;
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 226
    .local v16, "salt":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 228
    new-instance v14, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v18, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 229
    .local v14, "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    const-string/jumbo v18, "PBEWithMD5AndDES"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 230
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0, v15, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 231
    const/16 v18, 0x40

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 233
    .local v6, "input":[B
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_7

    .line 234
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v11

    .line 235
    .local v11, "output":[B
    if-eqz v11, :cond_6

    .line 236
    invoke-virtual {v12, v11}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_5

    .line 254
    .end local v3    # "bytesRead":I
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "input":[B
    .end local v7    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v8    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v11    # "output":[B
    .end local v14    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v15    # "passwordKey":Ljavax/crypto/SecretKey;
    .end local v16    # "salt":[B
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v18

    goto/16 :goto_3

    .line 239
    .restart local v3    # "bytesRead":I
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "input":[B
    .restart local v7    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .restart local v8    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .restart local v14    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v15    # "passwordKey":Ljavax/crypto/SecretKey;
    .restart local v16    # "salt":[B
    .restart local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v11

    .line 240
    .restart local v11    # "output":[B
    if-eqz v11, :cond_8

    .line 241
    invoke-virtual {v12, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 243
    :cond_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 244
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v13, v12

    .line 246
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 248
    .end local v3    # "bytesRead":I
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "input":[B
    .end local v7    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v8    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v11    # "output":[B
    .end local v14    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v15    # "passwordKey":Ljavax/crypto/SecretKey;
    .end local v16    # "salt":[B
    :cond_9
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 257
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 258
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 259
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 260
    if-eqz v2, :cond_a

    .line 261
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 264
    :cond_a
    return-void

    .line 257
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v18

    move-object v12, v13

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static zip(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v0, "out":Ljava/util/zip/ZipOutputStream;
    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1, p2}, Lcom/alibaba/doraemon/utils/ZipUtil;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 106
    return-void
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alibaba/doraemon/utils/ZipUtil;->zip(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/alibaba/doraemon/utils/ZipUtil;->zip(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "outputStream"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "base"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 118
    .local v7, "fl":[Ljava/io/File;
    new-instance v18, Ljava/util/zip/ZipEntry;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_0

    const-string/jumbo p2, ""

    .line 120
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 121
    aget-object v18, v7, v8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v7, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/utils/ZipUtil;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 119
    .end local v8    # "i":I
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 125
    .end local v7    # "fl":[Ljava/io/File;
    :cond_1
    new-instance v18, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 126
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v10, "inputStream":Ljava/io/FileInputStream;
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 130
    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v4

    .local v4, "b":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_3

    .line 131
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->write(I)V

    goto :goto_2

    .line 133
    :cond_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 165
    .end local v4    # "b":I
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 166
    return-void

    .line 137
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_5
    new-instance v12, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 138
    .local v12, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string/jumbo v18, "PBEWithMD5AndDES"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v11

    .line 139
    .local v11, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v11, v12}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 140
    .local v15, "passwordKey":Ljavax/crypto/SecretKey;
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 141
    .local v17, "salt":[B
    new-instance v16, Ljava/util/Random;

    invoke-direct/range {v16 .. v16}, Ljava/util/Random;-><init>()V

    .line 142
    .local v16, "rnd":Ljava/util/Random;
    invoke-virtual/range {v16 .. v17}, Ljava/util/Random;->nextBytes([B)V

    .line 144
    new-instance v14, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 145
    .local v14, "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    const-string/jumbo v18, "PBEWithMD5AndDES"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 146
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0, v15, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 148
    const/16 v18, 0x40

    move/from16 v0, v18

    new-array v9, v0, [B

    .line 150
    .local v9, "input":[B
    :cond_6
    :goto_4
    invoke-virtual {v10, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "bytesRead":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_7

    .line 151
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v9, v0, v5}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v13

    .line 152
    .local v13, "output":[B
    if-eqz v13, :cond_6

    .line 153
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipOutputStream;->write([B)V

    goto :goto_4

    .line 156
    .end local v13    # "output":[B
    :cond_7
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v13

    .line 157
    .restart local v13    # "output":[B
    if-eqz v13, :cond_8

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 160
    :cond_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 161
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 162
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_3
.end method

.method public static zip([B)[B
    .locals 3
    .param p0, "src"    # [B

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 35
    .local v2, "outputStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 36
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 41
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "outputStream":Ljava/util/zip/GZIPOutputStream;
    .end local p0    # "src":[B
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "src":[B
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static zipFile(Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p0, "input"    # Ljava/io/File;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "data":[B
    :try_start_0
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".gz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v8, "target":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 50
    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V

    .line 52
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 53
    .local v7, "re":Z
    if-nez v7, :cond_1

    .line 76
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 78
    .end local v7    # "re":Z
    .end local v8    # "target":Ljava/io/File;
    .end local p0    # "input":Ljava/io/File;
    :goto_0
    return-object p0

    .line 58
    .restart local v7    # "re":Z
    .restart local v8    # "target":Ljava/io/File;
    .restart local p0    # "input":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v2, "dest":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    .local v6, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v9, 0x800

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 62
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v4, "fi":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v9, 0x800

    invoke-direct {v5, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 64
    .local v5, "origin":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 67
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x800

    invoke-virtual {v5, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_2

    .line 68
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 74
    .end local v0    # "count":I
    .end local v2    # "dest":Ljava/io/FileOutputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "re":Z
    .end local v8    # "target":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 76
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 70
    .restart local v0    # "count":I
    .restart local v2    # "dest":Ljava/io/FileOutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "origin":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v7    # "re":Z
    .restart local v8    # "target":Ljava/io/File;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 71
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move-object p0, v8

    .line 78
    goto :goto_0

    .line 76
    .end local v0    # "count":I
    .end local v2    # "dest":Ljava/io/FileOutputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "re":Z
    .end local v8    # "target":Ljava/io/File;
    :catchall_0
    move-exception v9

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v9
.end method
