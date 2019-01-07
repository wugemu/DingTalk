.class Lmtopsdk/mtop/common/NetworkListenerAdapter$2;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/common/NetworkListenerAdapter;->onInputStreamGet(Llp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$inputStream:Llp;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llp;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iput-object p2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    iput-object p3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$100(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "seqNo":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    const-string/jumbo v6, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v7, "[onInputStreamGet]start to read input stream"

    invoke-static {v6, v3, v7}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    invoke-interface {v6}, Llp;->d()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    invoke-interface {v6}, Llp;->d()I

    move-result v5

    .line 117
    .local v5, "total":I
    :goto_0
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v6, v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$302(Lmtopsdk/mtop/common/NetworkListenerAdapter;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 118
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 120
    .local v0, "buff":[B
    :cond_1
    :goto_1
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    invoke-interface {v6, v0}, Llp;->a([B)I

    move-result v1

    .local v1, "cnt":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    .line 121
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    const-string/jumbo v6, "mtopsdk.NetworkListenerAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[onInputStreamGet]data chunk content: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 125
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6, v1}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$412(Lmtopsdk/mtop/common/NetworkListenerAdapter;I)I

    .line 126
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iget-object v6, v6, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    if-eqz v6, :cond_1

    .line 127
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$400(Lmtopsdk/mtop/common/NetworkListenerAdapter;)I

    move-result v4

    .line 128
    .local v4, "size":I
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$500(Lmtopsdk/mtop/common/NetworkListenerAdapter;)I

    move-result v6

    new-instance v7, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;

    invoke-direct {v7, p0, v4, v5}, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;-><init>(Lmtopsdk/mtop/common/NetworkListenerAdapter$2;II)V

    invoke-static {v6, v7}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    .end local v0    # "buff":[B
    .end local v1    # "cnt":I
    .end local v4    # "size":I
    .end local v5    # "total":I
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v7, "[onInputStreamGet]Read data from inputstream failed."

    invoke-static {v6, v3, v7, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$302(Lmtopsdk/mtop/common/NetworkListenerAdapter;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    if-eqz v6, :cond_3

    .line 142
    :try_start_2
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    invoke-interface {v6}, Llp;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 145
    :cond_3
    :goto_2
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 146
    :try_start_3
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    monitor-enter v7

    .line 152
    :try_start_4
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$600(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Llg$a;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 153
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iget-object v8, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v8}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$600(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Llg$a;

    move-result-object v8

    iget-object v9, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$context:Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$700(Lmtopsdk/mtop/common/NetworkListenerAdapter;Llg$a;Ljava/lang/Object;)V

    .line 157
    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 116
    :cond_5
    :try_start_5
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$200(Lmtopsdk/mtop/common/NetworkListenerAdapter;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    goto/16 :goto_0

    .line 141
    .restart local v0    # "buff":[B
    .restart local v1    # "cnt":I
    .restart local v5    # "total":I
    :cond_6
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    if-eqz v6, :cond_7

    .line 142
    :try_start_6
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    invoke-interface {v6}, Llp;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 145
    :cond_7
    :goto_5
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 146
    :try_start_7
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v6}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 148
    :catch_1
    move-exception v6

    goto :goto_3

    .line 141
    .end local v0    # "buff":[B
    .end local v1    # "cnt":I
    .end local v5    # "total":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    if-eqz v7, :cond_8

    .line 142
    :try_start_8
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$inputStream:Llp;

    invoke-interface {v7}, Llp;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 145
    :cond_8
    :goto_6
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 146
    :try_start_9
    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    invoke-static {v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$300(Lmtopsdk/mtop/common/NetworkListenerAdapter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 148
    :cond_9
    :goto_7
    throw v6

    .line 155
    :cond_a
    :try_start_a
    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->access$802(Lmtopsdk/mtop/common/NetworkListenerAdapter;Z)Z

    goto :goto_4

    .line 157
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v6

    :catch_2
    move-exception v7

    goto :goto_7

    :catch_3
    move-exception v7

    goto :goto_6

    .line 148
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto :goto_3

    :catch_5
    move-exception v6

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buff":[B
    .restart local v1    # "cnt":I
    .restart local v5    # "total":I
    :catch_6
    move-exception v6

    goto :goto_5
.end method
