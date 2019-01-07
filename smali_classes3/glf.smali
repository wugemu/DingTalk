.class public final Lglf;
.super Ljava/lang/Object;
.source "CryptFileManager.java"


# static fields
.field public static a:Lglf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lglf;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lglf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lglf;->a:Lglf;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lglf;

    invoke-direct {v0}, Lglf;-><init>()V

    sput-object v0, Lglf;->a:Lglf;

    .line 46
    :cond_0
    sget-object v0, Lglf;->a:Lglf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(ZLcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 9
    .param p0, "appendId"    # Z
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1155
    .local v2, "sbFileName":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgpx;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1156
    :cond_0
    invoke-static {}, Lgpv;->c()Ljava/lang/String;

    move-result-object v0

    .line 1162
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1163
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1165
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 144
    .local v0, "destDir":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    :goto_1
    return-object v3

    .line 1159
    .end local v0    # "destDir":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lgpv;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    .restart local v0    # "destDir":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcop;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "CryptFileManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "getDecryptFilePath: illegal dentry name (zip slip): "

    aput-object v7, v6, v8

    const/4 v7, 0x1

    .line 152
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 151
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 157
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_5
    if-eqz p0, :cond_6

    .line 160
    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 164
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v1    # "index":I
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 9
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string/jumbo v0, "crypt_file"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lglf$1;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lglf$1;-><init>(Lglf;Ljava/lang/String;JLjava/lang/String;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
