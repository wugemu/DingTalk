.class public Lcom/ta/audid/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "utdid.db"

.field private static final mInstance:Lcom/ta/audid/Variables;


# instance fields
.field private bGetModeState:Z

.field private volatile bInit:Z

.field private bOldMode:Z

.field private mAppChannel:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDbMgr:Lcom/ta/audid/db/DBMgr;

.field private mDeltaTime:J

.field private mOldModeFile:Ljava/io/File;

.field private mPhoneStatePermission:Z

.field private mStoragePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/ta/audid/Variables;

    invoke-direct {v0}, Lcom/ta/audid/Variables;-><init>()V

    sput-object v0, Lcom/ta/audid/Variables;->mInstance:Lcom/ta/audid/Variables;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "testKey"

    iput-object v0, p0, Lcom/ta/audid/Variables;->mAppkey:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/audid/Variables;->mAppChannel:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    .line 24
    iput-object v2, p0, Lcom/ta/audid/Variables;->mDbMgr:Lcom/ta/audid/db/DBMgr;

    .line 25
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bInit:Z

    .line 26
    iput-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    .line 27
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    .line 28
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    .line 29
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 30
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->mPhoneStatePermission:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ta/audid/Variables;->mDeltaTime:J

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/ta/audid/Variables;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/ta/audid/Variables;->mInstance:Lcom/ta/audid/Variables;

    return-object v0
.end method


# virtual methods
.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ta/audid/Variables;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ta/audid/Variables;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ta/audid/Variables;->mDeltaTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentTimeMillisString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ta/audid/Variables;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDbMgr()Lcom/ta/audid/db/DBMgr;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ta/audid/Variables;->mDbMgr:Lcom/ta/audid/db/DBMgr;

    return-object v0
.end method

.method public declared-synchronized getOldMode()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    if-eqz v2, :cond_0

    .line 91
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-boolean v2, p0, Lcom/ta/audid/Variables;->bOldMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return v2

    .line 96
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 97
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->getOldModeFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 100
    .local v1, "exists":Z
    if-eqz v1, :cond_2

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    .line 102
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "old mode file"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-boolean v2, p0, Lcom/ta/audid/Variables;->bOldMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/ta/audid/Variables;->bGetModeState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    .end local v1    # "exists":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 108
    .restart local v1    # "exists":Z
    :cond_2
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    .line 111
    .end local v1    # "exists":Z
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    .line 112
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "new mode file"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-boolean v2, p0, Lcom/ta/audid/Variables;->bOldMode:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized init()V
    .locals 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ta/audid/Variables;->bInit:Z

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/ta/audid/db/DBMgr;

    iget-object v1, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "utdid.db"

    invoke-direct {v0, v1, v2}, Lcom/ta/audid/db/DBMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/audid/Variables;->mDbMgr:Lcom/ta/audid/db/DBMgr;

    .line 46
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/permission/PermissionUtils;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 47
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/permission/PermissionUtils;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mPhoneStatePermission:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/audid/Variables;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 54
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_2
    :try_start_2
    iput-object p1, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ta/audid/Variables;->mAppChannel:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iput-object p1, p0, Lcom/ta/audid/Variables;->mAppkey:Ljava/lang/String;

    .line 165
    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 117
    invoke-static {p1}, Lcom/ta/audid/utils/UtdidLogger;->setDebug(Z)V

    .line 118
    return-void
.end method

.method public declared-synchronized setOldMode(Z)V
    .locals 6
    .param p1, "oldMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    .line 73
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->getOldModeFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 79
    .local v1, "exists":Z
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 80
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v1    # "exists":Z
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    .restart local v1    # "exists":Z
    :cond_2
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v1    # "exists":Z
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setSystemTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/ta/audid/Variables;->mDeltaTime:J

    .line 181
    return-void
.end method

.method public userGrantPhoneStatePermission()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/audid/permission/PermissionUtils;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 149
    .local v0, "currentPermission":Z
    iget-boolean v2, p0, Lcom/ta/audid/Variables;->mPhoneStatePermission:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 154
    :goto_0
    return v1

    .line 153
    :cond_0
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 154
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userGrantStoragePermission()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v2, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/audid/permission/PermissionUtils;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 133
    .local v0, "currentPermission":Z
    iget-boolean v2, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 138
    :goto_0
    return v1

    .line 137
    :cond_0
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method
