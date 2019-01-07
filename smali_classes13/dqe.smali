.class public Ldqe;
.super Ldqg;
.source "PackageUnzipStep.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Ldqe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldqe;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "descDir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Ldqe;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldqg;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v1, p0, Ldqe;->b:Ljava/io/File;

    .line 48
    iput-object v1, p0, Ldqe;->d:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldqe;->e:Z

    .line 54
    iput-object p1, p0, Ldqe;->b:Ljava/io/File;

    .line 55
    iput-object p2, p0, Ldqe;->d:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 69
    iput-boolean v7, p0, Ldqe;->e:Z

    .line 71
    :try_start_0
    iget-object v2, p0, Ldqe;->b:Ljava/io/File;

    iget-object v1, p0, Ldqe;->d:Ljava/lang/String;

    .line 1114
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_5

    .line 1115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 1120
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1122
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/zip/ZipFile;

    const/4 v1, 0x1

    invoke-direct {v6, v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1127
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    .line 1128
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1129
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 1130
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1183
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    move v2, v8

    .line 1132
    :goto_2
    if-nez v2, :cond_1

    const-string/jumbo v2, "../"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcop;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1136
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1139
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1142
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1172
    :catchall_0
    move-exception v1

    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_3

    .line 1174
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1177
    :cond_3
    :goto_4
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "traceEmotion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unzip err="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :try_start_5
    iget-object v1, p0, Ldqe;->b:Ljava/io/File;

    if-eqz v1, :cond_4

    .line 2096
    iget-object v1, p0, Ldqe;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 76
    :cond_4
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start error--->>>mDestDir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldqe;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, v7}, Ldqe;->a(Z)V

    .line 79
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    return-void

    :cond_5
    move-object v9, v1

    .line 1117
    goto/16 :goto_0

    :cond_6
    move v2, v7

    .line 1186
    goto :goto_2

    .line 1146
    :cond_7
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1148
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1154
    :cond_8
    :try_start_7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1155
    :try_start_8
    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v4

    .line 1157
    const/16 v1, 0x2000

    :try_start_9
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-object v2

    .line 1159
    :goto_7
    :try_start_a
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_9

    .line 1160
    const/4 v11, 0x0

    invoke-virtual {v5, v2, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .line 1164
    :catchall_1
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    :goto_8
    :try_start_b
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 1165
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1166
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1162
    :cond_9
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1164
    :try_start_d
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 1165
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1166
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 1172
    :cond_a
    if-eqz v6, :cond_b

    .line 1174
    :try_start_e
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    .line 72
    :cond_b
    :goto_9
    :try_start_f
    invoke-virtual {p0}, Ldqe;->b()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_6

    .line 2099
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start error--->>>mDestDir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldqe;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1177
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v2

    goto/16 :goto_4

    .line 1172
    :catchall_2
    move-exception v1

    goto/16 :goto_3

    .line 1164
    :catchall_3
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_8

    :catchall_4
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_8

    :catchall_5
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_8
.end method
