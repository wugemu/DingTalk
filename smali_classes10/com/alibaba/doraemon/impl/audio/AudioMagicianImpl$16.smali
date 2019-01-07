.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$16;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$16;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$16;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$16;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 752
    const-string/jumbo v9, "AUDIOCACHE"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 753
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    const/4 v5, 0x0

    .line 754
    .local v5, "inputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 755
    .local v7, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$16;->val$filePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 756
    .local v4, "inFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 758
    .local v2, "data":[B
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .local v6, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 760
    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .local v8, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x800

    :try_start_2
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 762
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x800

    invoke-virtual {v6, v2, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 763
    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 768
    .end local v1    # "count":I
    :catch_0
    move-exception v3

    move-object v7, v8

    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 769
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 773
    if-eqz v2, :cond_0

    .line 774
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 776
    :cond_0
    if-eqz v5, :cond_1

    .line 777
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 779
    :cond_1
    if-eqz v7, :cond_2

    .line 780
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 785
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    return-void

    .line 766
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "count":I
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_5
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$16;->val$url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v0, v9, v10, v11}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    .line 767
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 773
    if-eqz v2, :cond_4

    .line 774
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 777
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 780
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v7, v8

    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 784
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 782
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    .line 783
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 785
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 782
    .end local v1    # "count":I
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 783
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 770
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 771
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 773
    if-eqz v2, :cond_5

    .line 774
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 776
    :cond_5
    if-eqz v5, :cond_6

    .line 777
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 779
    :cond_6
    if-eqz v7, :cond_2

    .line 780
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 782
    :catch_4
    move-exception v3

    .line 783
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 773
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v2, :cond_7

    .line 774
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 776
    :cond_7
    if-eqz v5, :cond_8

    .line 777
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 779
    :cond_8
    if-eqz v7, :cond_9

    .line 780
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 784
    :cond_9
    :goto_5
    throw v9

    .line 782
    :catch_5
    move-exception v3

    .line 783
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 773
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 770
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v3

    move-object v7, v8

    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 768
    :catch_8
    move-exception v3

    goto/16 :goto_1

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method
