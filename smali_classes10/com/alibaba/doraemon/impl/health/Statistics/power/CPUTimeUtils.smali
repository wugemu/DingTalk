.class public Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;
.super Ljava/lang/Object;
.source "CPUTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;,
        Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    }
.end annotation


# static fields
.field private static final JIFFIES_AT_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_SEPERATOR:Ljava/lang/String; = "\n"

.field private static final NOW_AT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "CPUTimeUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "^now at (\\d+) nsecs"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->NOW_AT_PATTERN:Ljava/util/regex/Pattern;

    .line 33
    const-string/jumbo v0, "^jiffies: (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->JIFFIES_AT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method private static findTidByPid(I)[Ljava/io/File;
    .locals 4
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 238
    if-gez p0, :cond_0

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pid must greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pid is illegal, no process with pid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getCPUTimeByApp(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 69
    .local v6, "uid":I
    const/4 v4, 0x0

    .line 71
    .local v4, "timeInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    const/4 v3, 0x0

    .line 74
    .local v3, "proInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 75
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 81
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 82
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 83
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, v6, :cond_0

    .line 84
    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->getCPUTimeByPid(I)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    move-result-object v5

    .line 85
    .local v5, "tmpInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    if-eqz v5, :cond_0

    .line 86
    if-nez v4, :cond_1

    .line 87
    move-object v4, v5

    goto :goto_1

    .line 76
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "tmpInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v5    # "tmpInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    :cond_1
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->add(Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    goto :goto_1

    .line 96
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "tmpInfo":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    :cond_2
    return-object v4
.end method

.method public static getCPUTimeByPid(I)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 107
    if-gez p0, :cond_1

    .line 108
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne v2, v3, :cond_0

    .line 120
    :goto_0
    return-object v1

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pid must greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    const-string/jumbo v2, "CPUTimeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pid is illegal, no process with pid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->parseProcStat(Ljava/io/File;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCPUTotalTime()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "totalCpuTime":J
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/proc/stat"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "statFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "/proc/stat is not exists !"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "stat":Ljava/lang/String;
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "lines":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 45
    .local v4, "statParts":[Ljava/lang/String;
    array-length v5, v1

    if-lez v5, :cond_1

    .line 46
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 49
    :cond_1
    if-eqz v4, :cond_3

    array-length v5, v4

    if-lez v5, :cond_3

    .line 50
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 51
    aget-object v5, v4, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 52
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_3
    return-wide v6
.end method

.method public static getJiffiesUnit()I
    .locals 14

    .prologue
    .line 158
    const/4 v3, -0x1

    .line 160
    .local v3, "jiffiesUnit":I
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->parseTimerList()Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;

    move-result-object v0

    .line 161
    .local v0, "begin":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 162
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->parseTimerList()Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;

    move-result-object v2

    .line 164
    .local v2, "end":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 165
    iget-wide v10, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffiesNow:J

    iget-wide v12, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffiesNow:J

    sub-long v6, v10, v12

    .line 166
    .local v6, "jiffesNowSpan":J
    iget-wide v10, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffesJiffes:J

    iget-wide v12, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffesJiffes:J

    sub-long v4, v10, v12

    .line 168
    .local v4, "jiffesJiffesSpan":J
    div-long v8, v6, v4

    .line 171
    .local v8, "jiffesUnit":J
    const-wide/32 v10, 0x493e0

    add-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v10

    .line 178
    .end local v0    # "begin":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .end local v2    # "end":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .end local v4    # "jiffesJiffesSpan":J
    .end local v6    # "jiffesNowSpan":J
    .end local v8    # "jiffesUnit":J
    :cond_0
    :goto_0
    return v3

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getThreadTimeByPid(I)Landroid/util/SparseArray;
    .locals 8
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .local v2, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;>;"
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->findTidByPid(I)[Ljava/io/File;

    move-result-object v4

    .line 139
    .local v4, "tFile":[Ljava/io/File;
    if-eqz v4, :cond_1

    .line 140
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v4, v5

    .line 141
    .local v0, "f":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "stat"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v3, "statFile":Ljava/io/File;
    invoke-static {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->parseProcStat(Ljava/io/File;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    move-result-object v1

    .line 143
    .local v1, "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    if-eqz v1, :cond_0

    .line 144
    iget v7, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tid:I

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .end local v3    # "statFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static parseProcStat(Ljava/io/File;)Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .locals 8
    .param p0, "statFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 262
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v4

    .line 287
    :goto_0
    return-object v1

    .line 268
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "stat":Ljava/lang/String;
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "statParts":[Ljava/lang/String;
    new-instance v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;-><init>()V

    .line 271
    .local v1, "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tid:I

    .line 272
    const/4 v5, 0x1

    aget-object v5, v3, v5

    iput-object v5, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->tName:Ljava/lang/String;

    .line 273
    const/16 v5, 0xd

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->utime:J

    .line 274
    const/16 v5, 0xe

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;->stime:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 278
    .end local v1    # "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$ThreadTimeInfo;
    .end local v2    # "stat":Ljava/lang/String;
    .end local v3    # "statParts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    move-object v1, v4

    .line 287
    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method private static parseTimerList()Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .locals 15

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    const/4 v9, 0x0

    .line 184
    .local v9, "reader":Ljava/io/BufferedReader;
    const-wide/16 v4, -0x1

    .line 185
    .local v4, "jiffiesNow":J
    const-wide/16 v2, -0x1

    .line 187
    .local v2, "jiffesJiffes":J
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    const-string/jumbo v14, "/proc/timer_list"

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x400

    invoke-direct {v10, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "load":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 190
    const-wide/16 v12, -0x1

    cmp-long v12, v12, v4

    if-nez v12, :cond_1

    .line 191
    sget-object v12, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->NOW_AT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 192
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 193
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 196
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const-wide/16 v12, -0x1

    cmp-long v12, v12, v2

    if-nez v12, :cond_2

    .line 197
    sget-object v12, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->JIFFIES_AT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 198
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 199
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 202
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const-wide/16 v12, -0x1

    cmp-long v12, v12, v4

    if-eqz v12, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v12, v12, v2

    if-eqz v12, :cond_0

    .line 207
    :cond_3
    const-wide/16 v12, -0x1

    cmp-long v12, v12, v4

    if-eqz v12, :cond_4

    const-wide/16 v12, -0x1

    cmp-long v12, v12, v2

    if-eqz v12, :cond_4

    .line 208
    new-instance v6, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;-><init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$1;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    .end local v1    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .local v6, "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    :try_start_2
    iput-wide v4, v6, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffiesNow:J

    .line 210
    iput-wide v2, v6, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffesJiffes:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v6

    .line 215
    .end local v6    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .restart local v1    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    :cond_4
    if-eqz v10, :cond_7

    .line 217
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .line 224
    .end local v7    # "load":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_0
    return-object v1

    .line 218
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "load":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 220
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "load":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 213
    .local v11, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string/jumbo v12, "CPUTimeUtils"

    invoke-static {v12, v11}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    if-eqz v9, :cond_5

    .line 217
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    :goto_2
    if-eqz v9, :cond_6

    .line 217
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 220
    :cond_6
    :goto_3
    throw v12

    .line 218
    :catch_3
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .restart local v7    # "load":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    move-object v1, v6

    .end local v6    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .restart local v1    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    goto :goto_2

    .line 212
    .end local v7    # "load":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .restart local v7    # "load":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v11

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    move-object v1, v6

    .end local v6    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    .restart local v1    # "jp":Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
    goto :goto_1

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_7
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method
