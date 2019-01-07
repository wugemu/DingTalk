.class public final Ljjg;
.super Ljava/lang/Object;
.source "AdapterUtilityImpl.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Ljjg;->a:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    sput-object v0, Ljjg;->b:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    sput-object v0, Ljjg;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 92
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-wide v4

    .line 96
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v3, v6, :cond_2

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "stats":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v4, v3

    mul-long/2addr v4, v6

    goto :goto_0

    .line 107
    .end local v1    # "stats":Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "AdapterUtilityImpl"

    const-string/jumbo v6, "getUsableSpace"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v2, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pID"    # I

    .prologue
    .line 63
    sget-object v4, Ljik;->j:Ljid;

    .line 67
    const-string/jumbo v3, ""

    .line 68
    .local v3, "processName":Ljava/lang/String;
    invoke-static {p0}, Ljik;->a(Landroid/content/Context;)Ljik;

    move-result-object v5

    .line 1085
    iget-object v4, v5, Ljik;->d:Landroid/app/ActivityManager;

    if-nez v4, :cond_0

    .line 1086
    sget-object v4, Ljik;->a:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, v5, Ljik;->d:Landroid/app/ActivityManager;

    .line 1088
    :cond_0
    iget-object v0, v5, Ljik;->d:Landroid/app/ActivityManager;

    .line 70
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 75
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_1

    .line 76
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    return-object v3

    .line 80
    .restart local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v2, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 118
    .local v3, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 120
    aget-object v0, v3, v1

    .line 121
    .local v0, "element":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "i":I
    .end local v3    # "stackArray":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v4

    .line 127
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 34
    const/4 v2, 0x1

    .line 37
    .local v2, "result":Z
    :try_start_0
    sget-object v4, Ljik;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 38
    sget-object v4, Ljjg;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v4, Ljjg;->b:Ljava/lang/String;

    .line 42
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    sget-object v0, Ljjg;->b:Ljava/lang/String;

    .line 47
    .local v0, "finalMainProcess":Ljava/lang/String;
    :goto_0
    sget-object v4, Ljjg;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {p0, v4}, Ljjg;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljjg;->c:Ljava/lang/String;

    .line 52
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljjg;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    sget-object v4, Ljjg;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 59
    .end local v0    # "finalMainProcess":Ljava/lang/String;
    :cond_2
    :goto_1
    return v2

    .line 44
    :cond_3
    sget-object v0, Ljik;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "finalMainProcess":Ljava/lang/String;
    goto :goto_0

    .line 56
    .end local v0    # "finalMainProcess":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "AdapterUtilityImpl"

    const-string/jumbo v5, "isMainProcess"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final a(Ljava/lang/String;I)Z
    .locals 10
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    if-nez p0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v4

    .line 180
    :cond_1
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "st":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 182
    .local v2, "blockSize":I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 183
    .local v0, "avBlockCount":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "st.getAvailableBlocks()="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",st.getAvailableBlocks() * blockSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    int-to-long v6, v2

    mul-long/2addr v6, v0

    const-wide/32 v8, 0x19000

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 190
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    sget-object v0, Ljjg;->a:Ljava/lang/String;

    .line 153
    .local v0, "appKey":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "ACCS_SDK"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "appkey"

    sget-object v4, Ljjg;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    sput-object v0, Ljjg;->a:Ljava/lang/String;

    .line 158
    :cond_0
    const-string/jumbo v3, "AdapterUtilityImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getAppkey APPKEY:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string/jumbo v6, "unknown"

    .line 198
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 200
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 202
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "pkg":Ljava/lang/String;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 208
    .local v9, "uid":I
    const-class v11, Landroid/app/AppOpsManager;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 210
    .local v2, "appOpsClass":Ljava/lang/Class;
    const-string/jumbo v11, "checkOpNoThrow"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 212
    .local v3, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v11, "OP_POST_NOTIFICATION"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 214
    .local v4, "opPostNotificationValue":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 215
    .local v10, "value":I
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    invoke-virtual {v3, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 216
    .local v7, "ret":I
    if-nez v7, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 220
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "appOpsClass":Ljava/lang/Class;
    .end local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "ret":I
    .end local v9    # "uid":I
    .end local v10    # "value":I
    :goto_1
    return-object v6

    .line 216
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "appOpsClass":Ljava/lang/Class;
    .restart local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "ret":I
    .restart local v9    # "uid":I
    .restart local v10    # "value":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 217
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "appOpsClass":Ljava/lang/Class;
    .end local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "ret":I
    .end local v9    # "uid":I
    .end local v10    # "value":I
    :catch_0
    move-exception v8

    .line 218
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v11, "AdapterUtilityImpl"

    const-string/jumbo v12, "isNotificationEnabled"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v8, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
