.class Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;
.super Ljava/lang/Object;
.source "CommonWeexActivity.java"

# interfaces
.implements Lhfb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    const-string/jumbo v1, "CommonWeexActivity"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "getResponse"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "onException"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "errorCode="

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "errorMessage="

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p2, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "throwable="

    aput-object v3, v2, v0

    const/4 v3, 0x7

    if-eqz p3, :cond_0

    .line 240
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 237
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void

    .line 240
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public onSuccess(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V
    .locals 12
    .param p1, "appInfo"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    new-instance v0, Lhfj;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lhfk;->b()Lhfi;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lhfi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhfj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .local v0, "loader":Lhfj;
    iget-object v1, v0, Lhfj;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lhfj;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2$1;Lhfj;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void

    .line 1042
    :cond_1
    const/4 v2, 0x0

    .line 1045
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v1, v0, Lhfj;->a:Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1046
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1113
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1050
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 1051
    if-nez v4, :cond_3

    .line 1113
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1114
    :catch_1
    move-exception v1

    .line 1115
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1055
    :cond_3
    :try_start_5
    new-instance v5, Ljava/io/File;

    iget-object v1, v0, Lhfj;->b:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1057
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1059
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1060
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 1061
    if-eqz v1, :cond_4

    .line 1062
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1063
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1108
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 1109
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1111
    if-eqz v2, :cond_0

    .line 1113
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 1114
    :catch_3
    move-exception v1

    .line 1115
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1067
    :cond_5
    :try_start_8
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v6

    .line 1069
    :try_start_9
    new-instance v7, Ljava/io/File;

    iget-object v2, v0, Lhfj;->b:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "_tmp"

    aput-object v10, v8, v9

    invoke-static {v8}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1072
    const/16 v8, 0x800

    :try_start_a
    new-array v8, v8, [B

    .line 1074
    :goto_3
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_7

    .line 1075
    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 1078
    :catch_4
    move-exception v8

    :try_start_b
    const-string/jumbo v8, "ZipFileLoader"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "FileOutputStream error"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1082
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1083
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 1084
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1090
    :goto_4
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v8, v0, Lhfj;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1092
    const-string/jumbo v1, "ZipFileLoader"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "byteToFile"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v0, Lhfj;->c:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "path="

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 1093
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "size="

    aput-object v9, v7, v8

    const/4 v8, 0x5

    .line 1094
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    .line 1092
    invoke-static {v1, v7}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1098
    if-eqz v6, :cond_4

    .line 1100
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 1101
    :catch_5
    move-exception v1

    .line 1102
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 1111
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_6

    .line 1113
    :try_start_10
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 1116
    :cond_6
    :goto_6
    throw v1

    .line 1082
    :cond_7
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1083
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 1084
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_4

    .line 1085
    :catch_6
    move-exception v2

    .line 1086
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_4

    .line 1096
    :catch_7
    move-exception v1

    :try_start_13
    const-string/jumbo v1, "ZipFileLoader"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "InputStream error"

    aput-object v8, v2, v7

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1098
    if-eqz v6, :cond_4

    .line 1100
    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_1

    .line 1101
    :catch_8
    move-exception v1

    .line 1102
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_1

    .line 1085
    :catch_9
    move-exception v2

    .line 1086
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_4

    .line 1098
    :catchall_1
    move-exception v1

    if-eqz v6, :cond_8

    .line 1100
    :try_start_17
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1103
    :cond_8
    :goto_7
    :try_start_18
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1080
    :catchall_2
    move-exception v1

    .line 1082
    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1083
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1084
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1087
    :goto_8
    :try_start_1a
    throw v1

    .line 1085
    :catch_a
    move-exception v2

    .line 1086
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_8

    .line 1101
    :catch_b
    move-exception v2

    .line 1102
    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_7

    .line 1113
    :cond_9
    :try_start_1c
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c

    goto/16 :goto_0

    .line 1114
    :catch_c
    move-exception v1

    .line 1115
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1114
    :catch_d
    move-exception v2

    .line 1115
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1111
    :catchall_3
    move-exception v1

    move-object v3, v2

    goto :goto_5

    :catchall_4
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5

    .line 1108
    :catch_e
    move-exception v1

    goto/16 :goto_2
.end method
