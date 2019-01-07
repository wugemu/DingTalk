.class public Lali/mmpc/util/MmpcUtils;
.super Ljava/lang/Object;
.source "MmpcUtils.java"


# static fields
.field private static final LOG_TAG_MMPCUTILS:Ljava/lang/String; = "mmpc_utils"

.field private static listCpuInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static listSystemBuildProperty:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lali/mmpc/util/MmpcUtils;->listCpuInfo:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lali/mmpc/util/MmpcUtils;->listSystemBuildProperty:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignPixelBoundary(II)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "align_bytes"    # I

    .prologue
    .line 253
    add-int/lit8 v0, p1, -0x1

    .line 254
    .local v0, "ah":I
    add-int v1, p0, v0

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    return v1
.end method

.method public static getCpuChipType()Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getProductBrandType()Lali/mmpc/avengine/video/ProductBrandType;

    move-result-object v0

    .line 215
    .local v0, "productBrand":Lali/mmpc/avengine/video/ProductBrandType;
    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->amlogic:Lali/mmpc/avengine/video/ProductBrandType;

    if-eq v0, v2, :cond_0

    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->mediatek:Lali/mmpc/avengine/video/ProductBrandType;

    if-eq v0, v2, :cond_0

    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->rockchip:Lali/mmpc/avengine/video/ProductBrandType;

    if-ne v0, v2, :cond_2

    .line 218
    :cond_0
    const-string/jumbo v2, "ro.yunos.product.chip"

    invoke-static {v2}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "value":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v1}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->fromAlias(Ljava/lang/String;)Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    move-result-object v2

    return-object v2

    .line 219
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->softwinners:Lali/mmpc/avengine/video/ProductBrandType;

    if-ne v0, v2, :cond_4

    .line 220
    const-string/jumbo v2, "ro.sys.cputype"

    invoke-static {v2}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1    # "value":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "ro.yunos.product.chip"

    invoke-static {v2}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->mo1sp:Lali/mmpc/avengine/video/ProductBrandType;

    if-eq v0, v2, :cond_3

    .line 226
    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->hisi:Lali/mmpc/avengine/video/ProductBrandType;

    if-eq v0, v2, :cond_5

    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->mediatekCube:Lali/mmpc/avengine/video/ProductBrandType;

    if-ne v0, v2, :cond_6

    .line 228
    :cond_5
    const-string/jumbo v2, "ro.product.device"

    invoke-static {v2}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v1    # "value":Ljava/lang/String;
    :cond_6
    sget-object v2, Lali/mmpc/avengine/video/ProductBrandType;->ottHaier:Lali/mmpc/avengine/video/ProductBrandType;

    if-ne v0, v2, :cond_3

    .line 230
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCpuFrequencyInG()F
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 152
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getCpuInfo()Ljava/util/List;

    move-result-object v3

    .line 153
    .local v3, "listCpuInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "bogomips"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "arr":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 157
    .local v1, "hz":F
    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v5

    .line 158
    cmpl-float v5, v1, v4

    if-lez v5, :cond_1

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    .line 165
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "hz":F
    .end local v2    # "line":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public static declared-synchronized getCpuInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-class v1, Lali/mmpc/util/MmpcUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lali/mmpc/util/MmpcUtils;->listCpuInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lali/mmpc/util/MmpcUtils;->listCpuInfo:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit v1

    return-object v0

    .line 60
    :cond_0
    :try_start_1
    const-string/jumbo v0, "/proc/cpuinfo"

    invoke-static {v0}, Lali/mmpc/util/MmpcUtils;->getFileContentAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 62
    sput-object v0, Lali/mmpc/util/MmpcUtils;->listCpuInfo:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCpuInfoHardware()Ljava/lang/String;
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getCpuInfo()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, "listCpuInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hardware"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "arr":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 176
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "line":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCurThreadListInfo()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    .line 121
    .local v2, "group":Ljava/lang/ThreadGroup;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v8

    new-array v7, v8, [Ljava/lang/Thread;

    .line 125
    .local v7, "threads":[Ljava/lang/Thread;
    invoke-virtual {v2, v7}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v4, "sbList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StringBuffer;>;"
    array-length v9, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v6, v7, v8

    .line 129
    .local v6, "thread":Ljava/lang/Thread;
    if-eqz v6, :cond_1

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v5

    .line 135
    .local v5, "tgroup":Ljava/lang/ThreadGroup;
    if-nez v5, :cond_2

    const-string/jumbo v3, "null"

    .line 136
    .local v3, "groupName":Ljava/lang/String;
    :goto_2
    const-string/jumbo v10, "ThreadGroup:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string/jumbo v10, "Id:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string/jumbo v10, "Name:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string/jumbo v10, "isDaemon:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Thread;->isDaemon()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string/jumbo v10, "isAlive:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string/jumbo v10, "Priority:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "groupName":Ljava/lang/String;
    .end local v5    # "tgroup":Ljava/lang/ThreadGroup;
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 135
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v5    # "tgroup":Ljava/lang/ThreadGroup;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 143
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v5    # "tgroup":Ljava/lang/ThreadGroup;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "err":Ljava/lang/Exception;
    const-string/jumbo v10, "mmpc_utils"

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 148
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v6    # "thread":Ljava/lang/Thread;
    :cond_3
    return-object v4
.end method

.method public static declared-synchronized getFileContentAsList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-class v6, Lali/mmpc/util/MmpcUtils;

    monitor-enter v6

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .local v2, "listFileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 31
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "\n\r"

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    .line 51
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    monitor-exit v6

    return-object v2

    .line 46
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v5, "mmpc_utils"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v4

    .line 48
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 41
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v5

    :goto_2
    :try_start_5
    const-string/jumbo v5, "mmpc_utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "failed to read file:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 43
    if-eqz v3, :cond_2

    .line 45
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 46
    :catch_2
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v5, "mmpc_utils"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 26
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "listFileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 43
    .restart local v2    # "listFileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    :goto_3
    if-eqz v3, :cond_3

    .line 45
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 48
    :cond_3
    :goto_4
    :try_start_9
    throw v5

    .line 46
    :catch_3
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "mmpc_utils"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 41
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getNumberCpuCores()I
    .locals 3

    .prologue
    .line 200
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Lali/mmpc/util/MmpcUtils$1CpuFilter;

    invoke-direct {v2}, Lali/mmpc/util/MmpcUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 204
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "files":[Ljava/io/File;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getProductBrandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductBrandType()Lali/mmpc/avengine/video/ProductBrandType;
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v1, "ro.product.brand"

    invoke-static {v1}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lali/mmpc/avengine/video/ProductBrandType;->fromAlias(Ljava/lang/String;)Lali/mmpc/avengine/video/ProductBrandType;

    move-result-object v1

    return-object v1
.end method

.method public static getProductBrandTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Lali/mmpc/util/MmpcUtils;->parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSystemBuildProperties()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v8, Lali/mmpc/util/MmpcUtils;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lali/mmpc/util/MmpcUtils;->listSystemBuildProperty:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    sget-object v7, Lali/mmpc/util/MmpcUtils;->listSystemBuildProperty:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v1, "context":Landroid/content/Context;
    .local v3, "fileName":Ljava/lang/String;
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    monitor-exit v8

    return-object v7

    .line 71
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "/system/build.prop"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .restart local v3    # "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 75
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2000

    invoke-direct {v6, v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v6, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "\n\r"

    const-string/jumbo v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 80
    sget-object v7, Lali/mmpc/util/MmpcUtils;->listSystemBuildProperty:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    goto :goto_1

    .line 88
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v6

    .line 94
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    :try_start_5
    invoke-static {}, Lali/mmpc/interfaces/P2PSettings;->getInstance()Lali/mmpc/interfaces/P2PSettings;

    move-result-object v7

    invoke-virtual {v7}, Lali/mmpc/interfaces/P2PSettings;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "android_id"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "andriodId":Ljava/lang/String;
    sget-object v7, Lali/mmpc/util/MmpcUtils;->listSystemBuildProperty:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "andriodId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v0    # "andriodId":Ljava/lang/String;
    :cond_3
    sget-object v7, Lali/mmpc/util/MmpcUtils;->listSystemBuildProperty:Ljava/util/List;

    goto :goto_0

    .line 89
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "mmpc_utils"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v6

    .line 91
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    :goto_3
    :try_start_6
    const-string/jumbo v7, "mmpc_utils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "failed to read file:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    if-eqz v5, :cond_2

    .line 88
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 89
    :catch_2
    move-exception v2

    .line 90
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v7, "mmpc_utils"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 68
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 86
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    :goto_4
    if-eqz v5, :cond_4

    .line 88
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 91
    :cond_4
    :goto_5
    :try_start_a
    throw v7

    .line 89
    :catch_3
    move-exception v2

    .line 90
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "mmpc_utils"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 86
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 84
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static parseSystemBuildProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "field"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string/jumbo v3, ""

    .line 116
    :goto_0
    return-object v3

    .line 107
    :cond_0
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getSystemBuildProperties()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "listProperty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "property":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "arr":[Ljava/lang/String;
    array-length v4, v0

    if-le v4, v5, :cond_1

    .line 112
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 116
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "property":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0
.end method
