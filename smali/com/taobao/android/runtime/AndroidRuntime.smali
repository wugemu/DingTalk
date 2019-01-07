.class public Lcom/taobao/android/runtime/AndroidRuntime;
.super Ljava/lang/Object;
.source "AndroidRuntime.java"


# static fields
.field private static final PREF_ENABLED:Ljava/lang/String; = "enabled"

.field private static final PREF_EXCLUDE_DEXES:Ljava/lang/String; = "excludeDexes"

.field private static final PREF_EXCLUDE_VERSIONS:Ljava/lang/String; = "excludeVersions"

.field private static final PREF_GROUP_SETTINGS:Ljava/lang/String; = "runtime"

.field private static final TAG:Ljava/lang/String; = "RuntimeUtils"

.field private static volatile mInstance:Lcom/taobao/android/runtime/AndroidRuntime;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExcludeDexes:Ljava/lang/String;

.field private mExcludeVersions:Ljava/lang/String;

.field private mMonitor:Lcom/taobao/android/runtime/IMonitor;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/taobao/android/runtime/AndroidRuntime;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/taobao/android/runtime/AndroidRuntime;->mInstance:Lcom/taobao/android/runtime/AndroidRuntime;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/taobao/android/runtime/AndroidRuntime;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/taobao/android/runtime/AndroidRuntime;->mInstance:Lcom/taobao/android/runtime/AndroidRuntime;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/taobao/android/runtime/AndroidRuntime;

    invoke-direct {v0}, Lcom/taobao/android/runtime/AndroidRuntime;-><init>()V

    sput-object v0, Lcom/taobao/android/runtime/AndroidRuntime;->mInstance:Lcom/taobao/android/runtime/AndroidRuntime;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/taobao/android/runtime/AndroidRuntime;->mInstance:Lcom/taobao/android/runtime/AndroidRuntime;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private trace(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "success"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 301
    iget-object v1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mMonitor:Lcom/taobao/android/runtime/IMonitor;

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "typeID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "detail":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mMonitor:Lcom/taobao/android/runtime/IMonitor;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, p1, v0, v1}, Lcom/taobao/android/runtime/IMonitor;->trace(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 312
    .end local v0    # "detail":Ljava/lang/String;
    :cond_0
    return-void

    .line 310
    .restart local v0    # "detail":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public disableJitCompilation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    if-nez v1, :cond_0

    .line 166
    const-string/jumbo v1, "RuntimeUtils"

    const-string/jumbo v2, "- RuntimeUtils setVerificationEnabled disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->disableJitCompilation()Ljava/lang/Boolean;

    move-result-object v0

    .line 175
    .local v0, "success":Ljava/lang/Boolean;
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "- RuntimeUtils disableJitCompilation: success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string/jumbo v1, "disableJitCompilation"

    invoke-direct {p0, v1, v0}, Lcom/taobao/android/runtime/AndroidRuntime;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/runtime/AndroidRuntime;->init(Landroid/content/Context;Z)V

    .line 62
    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hookedJavaVM"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v3, "runtime"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    .line 68
    iget-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "enabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    .line 69
    iget-boolean v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    if-nez v3, :cond_0

    .line 70
    const-string/jumbo v3, "RuntimeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "- RuntimeUtils init: mEnabled="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "excludeVersions"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeVersions:Ljava/lang/String;

    .line 75
    iget-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "excludeDexes"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeDexes:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeDexes:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeDexes:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    .line 78
    iget-boolean v1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    if-nez v1, :cond_1

    .line 79
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "- RuntimeUtils init: mEnabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", excludeVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeDexes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "- RuntimeUtils init: mEnabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_3

    .line 91
    invoke-static {p1, p2}, Lcom/taobao/android/dex/interpret/ARTUtils;->init(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 96
    .local v0, "success":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v1, "init"

    invoke-direct {p0, v1, v0}, Lcom/taobao/android/runtime/AndroidRuntime;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "- RuntimeUtils init: success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .end local v0    # "success":Ljava/lang/Boolean;
    :cond_2
    move v1, v2

    .line 77
    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->init()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "success":Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    return v0
.end method

.method public loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourcePathName"    # Ljava/lang/String;
    .param p3, "outputPathName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    if-nez v11, :cond_0

    .line 192
    const-string/jumbo v11, "RuntimeUtils"

    const-string/jumbo v12, "- RuntimeUtils loadDex disabled."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static/range {p2 .. p4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    .line 270
    :goto_0
    return-object v3

    .line 196
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeVersions:Ljava/lang/String;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeVersions:Ljava/lang/String;

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 198
    const-string/jumbo v11, "RuntimeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "- RuntimeUtils loadDex disabled: sourcePathName="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mExcludeVersions="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeVersions:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static/range {p2 .. p4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    goto :goto_0

    .line 212
    :cond_1
    sget-boolean v11, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v11, :cond_4

    .line 213
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/taobao/android/dex/interpret/ARTUtils;->setIsDex2oatEnabled(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 214
    .local v10, "success":Ljava/lang/Boolean;
    const-string/jumbo v11, "setIsDex2oatEnabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/taobao/android/runtime/AndroidRuntime;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "- RuntimeUtils setIsDex2oatEnabled: enabled=false, success="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {}, Lcom/taobao/android/dex/interpret/ARTUtils;->isDex2oatEnabled()Ljava/lang/Boolean;

    move-result-object v2

    .line 222
    .local v2, "dex2oatEnabled":Ljava/lang/Boolean;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "- RuntimeUtils loadDex: dex2oatEnabled="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", IsVerificationEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/taobao/android/dex/interpret/ARTUtils;->IsVerificationEnabled()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", sourcePathName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", outputPathName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 234
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 235
    .local v8, "start":J
    invoke-static {v5}, Lcom/taobao/android/runtime/OatFile;->fromFile(Ljava/io/File;)Lcom/taobao/android/runtime/OatFile;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v8

    .line 237
    .local v6, "elapsed":J
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "- odexFile is valid: dexFile="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", odexFile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", odexFile length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", elapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v6    # "elapsed":J
    .end local v8    # "start":J
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 252
    .restart local v8    # "start":J
    invoke-static/range {p2 .. p4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    .line 253
    .local v3, "dexFile":Ldalvik/system/DexFile;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v8

    .line 254
    .restart local v6    # "elapsed":J
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "- loadDex: dexFile="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", odexFile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", elapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_3

    .line 263
    invoke-static/range {p1 .. p3}, Lcom/taobao/android/runtime/Dex2OatService;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_3
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/taobao/android/dex/interpret/ARTUtils;->setIsDex2oatEnabled(Z)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 242
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .end local v6    # "elapsed":J
    .end local v8    # "start":J
    :catch_0
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 244
    const-string/jumbo v11, "loadDex"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/taobao/android/runtime/AndroidRuntime;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 245
    const-string/jumbo v11, "RuntimeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "- odexFile is invalid: dexFile="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", odexFile="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 270
    .end local v2    # "dex2oatEnabled":Ljava/lang/Boolean;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "success":Ljava/lang/Boolean;
    :cond_4
    invoke-static/range {p2 .. p4}, Lcom/taobao/android/runtime/DalvikUtils;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/taobao/android/runtime/AndroidRuntime;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 275
    const-string/jumbo v0, "RuntimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "- RuntimeUtils setEnabled: enabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean p1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    .line 277
    iget-object v0, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public setExcludeDexes(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeDexes"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "- RuntimeUtils setExcludeDexes: excludeDexes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iput-object p1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeDexes:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "excludeDexes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    return-void
.end method

.method public setExcludeVersions(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeVersions"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "- RuntimeUtils setExcludeVersions: excludeVersions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iput-object p1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mExcludeVersions:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "excludeVersions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    return-void
.end method

.method public setMonitor(Lcom/taobao/android/runtime/IMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/taobao/android/runtime/IMonitor;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mMonitor:Lcom/taobao/android/runtime/IMonitor;

    .line 298
    return-void
.end method

.method public setVerificationEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 101
    iget-boolean v1, p0, Lcom/taobao/android/runtime/AndroidRuntime;->mEnabled:Z

    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, "RuntimeUtils"

    const-string/jumbo v2, "- RuntimeUtils setVerificationEnabled disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 113
    invoke-static {p1}, Lcom/taobao/android/dex/interpret/ARTUtils;->setVerificationEnabled(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    .local v0, "success":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v1, "RuntimeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "- RuntimeUtils setVerificationEnabled: enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v1, "setVerificationEnabled"

    invoke-direct {p0, v1, v0}, Lcom/taobao/android/runtime/AndroidRuntime;->trace(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 154
    .end local v0    # "success":Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x3

    :goto_2
    invoke-static {v1}, Lcom/taobao/android/runtime/DalvikUtils;->setClassVerifyMode(I)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "success":Ljava/lang/Boolean;
    goto :goto_1

    .end local v0    # "success":Ljava/lang/Boolean;
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method
