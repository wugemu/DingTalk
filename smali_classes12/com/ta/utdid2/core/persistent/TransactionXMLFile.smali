.class public Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    }
.end annotation


# static fields
.field private static final GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

.field public static final MODE_PRIVATE:I


# instance fields
.field private mPreferencesDir:Ljava/io/File;

.field private final mSync:Ljava/lang/Object;

.field private sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    .line 26
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Directory can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 54
    .local v3, "f":Ljava/io/File;
    sget-object v10, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 55
    :try_start_0
    iget-object v9, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .line 56
    .local v5, "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasFileChanged()Z

    move-result v9

    if-nez v9, :cond_0

    .line 57
    monitor-exit v10

    move-object v6, v5

    .line 113
    .end local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .local v6, "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :goto_0
    return-object v6

    .line 59
    .end local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/4 v7, 0x0

    .line 62
    .local v7, "str":Ljava/io/FileInputStream;
    invoke-static {v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 63
    .local v1, "backup":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 64
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 65
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 68
    :cond_1
    const/4 v4, 0x0

    .line 69
    .local v4, "map":Ljava/util/Map;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 71
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    .end local v7    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v8}, Lcom/ta/utdid2/core/persistent/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4

    .line 73
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 95
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .line 103
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    sget-object v10, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 104
    if-eqz v5, :cond_7

    .line 105
    :try_start_4
    invoke-virtual {v5, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->replace(Ljava/util/Map;)V

    .line 113
    :cond_3
    :goto_2
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v6, v5

    .end local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    goto :goto_0

    .line 59
    .end local v1    # "backup":Ljava/io/File;
    .end local v4    # "map":Ljava/util/Map;
    .end local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .end local v7    # "str":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 98
    .restart local v1    # "backup":Ljava/io/File;
    .restart local v4    # "map":Ljava/util/Map;
    .restart local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_1

    :catch_1
    move-exception v9

    move-object v8, v7

    .line 76
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 77
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    .line 78
    .local v2, "buf":[B
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 84
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 93
    .end local v2    # "buf":[B
    :cond_4
    :goto_4
    if-eqz v7, :cond_2

    .line 95
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 98
    :catch_2
    move-exception v9

    goto :goto_1

    .line 82
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v7, :cond_4

    .line 84
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 87
    :catch_4
    move-exception v9

    goto :goto_4

    .line 82
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v7, :cond_5

    .line 84
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 87
    :cond_5
    :goto_7
    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 93
    :catchall_2
    move-exception v9

    :goto_8
    if-eqz v7, :cond_6

    .line 95
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    .line 98
    :cond_6
    :goto_9
    throw v9

    .line 93
    :catch_5
    move-exception v9

    :goto_a
    if-eqz v7, :cond_2

    .line 95
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_1

    .line 98
    :catch_6
    move-exception v9

    goto :goto_1

    .line 107
    :cond_7
    :try_start_f
    iget-object v9, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    move-object v5, v0

    .line 108
    if-nez v5, :cond_3

    .line 109
    new-instance v6, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    invoke-direct {v6, v3, p2, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 110
    .end local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :try_start_10
    iget-object v9, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v5, v6

    .end local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    goto :goto_2

    .line 114
    :catchall_3
    move-exception v9

    :goto_b
    :try_start_11
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v9

    .line 87
    .restart local v2    # "buf":[B
    :catch_7
    move-exception v9

    goto :goto_4

    .end local v2    # "buf":[B
    :catch_8
    move-exception v10

    goto :goto_7

    :catch_9
    move-exception v10

    goto :goto_9

    .line 114
    .end local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :catchall_4
    move-exception v9

    move-object v5, v6

    .end local v6    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v5    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    goto :goto_b

    .line 93
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v9

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_a
    move-exception v9

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_a

    .line 82
    :catchall_6
    move-exception v9

    goto :goto_6

    :catch_b
    move-exception v9

    goto :goto_5

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_c
    move-exception v9

    goto/16 :goto_3
.end method
