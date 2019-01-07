.class public final Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;
.super Ljava/lang/Object;
.source "EncryptDegradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$a;,
        Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field public final a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a:Lfp;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;-><init>()V

    return-void
.end method

.method private declared-synchronized a(JZ)Ljava/io/File;
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "src"    # Z

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a()V

    .line 177
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 178
    const-string/jumbo v1, "EncryptDegradeManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "EncryptDegradeManager init encrypt_try dir fail : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const/4 v1, 0x0

    .line 188
    :goto_0
    monitor-exit p0

    return-object v1

    .line 182
    :cond_1
    if-eqz p3, :cond_2

    .line 183
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "encrypt_try_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "fileName":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 185
    :cond_2
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "encrypt_try_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "_dest"

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1
.end method

.method private declared-synchronized a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 193
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 194
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "encrypt_try"

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "dirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    const-string/jumbo v4, "EncryptDegradeManager"

    const-string/jumbo v5, "create encrypt_try fold fail"

    .line 10018
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dirPath":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "dirPath":Ljava/lang/String;
    :cond_0
    :try_start_1
    sput-object v3, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dirPath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 203
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    const-string/jumbo v4, "EncryptDegradeManager"

    const-string/jumbo v5, "create encrypt_try cacheDir fold not exist"

    .line 11018
    const-string/jumbo v6, "im"

    invoke-static {v4, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V
    .locals 8
    .param p0, "orgId"    # J
    .param p2, "error"    # Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;
    .param p3, "extMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    .line 212
    if-eqz p2, :cond_0

    .line 213
    invoke-static {p0, p1}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->msg:Ljava/lang/String;

    .line 215
    .local v4, "errorMsg":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    iget v3, p2, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->code:I

    invoke-static/range {v0 .. v5}, Ldhq;->c(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 217
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_0
    return-void

    .line 214
    .restart local v2    # "corpId":Ljava/lang/String;
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p2, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->msg:Ljava/lang/String;

    aput-object v6, v0, v3

    const-string/jumbo v3, ","

    aput-object v3, v0, v5

    const/4 v3, 0x2

    aput-object p3, v0, v3

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_encrypt_all_degrade_enable"

    .line 1083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "third_party_encrypt_degraded"

    invoke-virtual {v2, v3, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;)Z
    .locals 1
    .param p0, "testResult"    # Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    .prologue
    .line 119
    sget-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;->FAIL:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(J)Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;
    .locals 13
    .param p1, "orgId"    # J

    .prologue
    .line 127
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JZ)Ljava/io/File;

    move-result-object v5

    .line 128
    .local v5, "file":Ljava/io/File;
    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, v8}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JZ)Ljava/io/File;

    move-result-object v2

    .line 129
    .local v2, "destFile":Ljava/io/File;
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 130
    :cond_0
    const-string/jumbo v8, "EncryptDegradeManager"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "EncryptDegradeManager test createFile null"

    aput-object v11, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    const-string/jumbo v9, "createFile null"

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 132
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;->UNDO:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    .line 169
    :goto_0
    return-object v8

    .line 135
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 136
    :cond_2
    const/4 v6, 0x0

    .line 138
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x1

    :try_start_1
    new-array v1, v8, [B

    const/4 v8, 0x0

    const/16 v9, 0x61

    aput-byte v9, v1, v8

    .line 141
    .local v1, "data":[B
    invoke-virtual {v7, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 155
    .end local v1    # "data":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_5

    .line 156
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    const-string/jumbo v9, "createFile length <= 0"

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v8, "EncryptDegradeManager"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "EncryptDegradeManager test file createFile length <= 0, return"

    aput-object v11, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;->UNDO:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    goto :goto_0

    .line 149
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "data":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/io/IOException;
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v8, "EncryptDegradeManager"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "EncryptDegradeManager test file close exception : "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 152
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 142
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v8, "EncryptDegradeManager"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "EncryptDegradeManager test isFileEncryptEnable exception : "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    if-eqz v6, :cond_3

    .line 148
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 149
    :catch_2
    move-exception v3

    .line 150
    .local v3, "e":Ljava/io/IOException;
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v8, "EncryptDegradeManager"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "EncryptDegradeManager test file close exception : "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_4

    .line 148
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 152
    :cond_4
    :goto_4
    throw v8

    .line 149
    :catch_3
    move-exception v3

    .line 150
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->CreateFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, p2, v9, v10}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v9, "EncryptDegradeManager"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "EncryptDegradeManager test file close exception : "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6018
    const-string/jumbo v11, "im"

    invoke-static {v9, v10, v11}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "cryptionDo":Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v8

    invoke-virtual {v8, v0}, Ldho;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z

    move-result v4

    .line 165
    .local v4, "encrypt":Z
    if-nez v4, :cond_6

    .line 166
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->EncryptFileFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    const-string/jumbo v9, "encrypt file fail"

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(JLcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v8, "EncryptDegradeManager"

    const-string/jumbo v9, "EncryptDegradeManager test encrypt file fail"

    .line 8018
    const-string/jumbo v10, "im"

    invoke-static {v8, v9, v10}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_6
    if-eqz v4, :cond_7

    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;->SUCCESS:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    goto/16 :goto_0

    :cond_7
    sget-object v8, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;->FAIL:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    goto/16 :goto_0

    .line 146
    .end local v0    # "cryptionDo":Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .end local v4    # "encrypt":Z
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 142
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
