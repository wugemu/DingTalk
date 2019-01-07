.class public Lcom/alibaba/doraemon/utils/CPUUtil;
.super Ljava/lang/Object;
.source "CPUUtil.java"


# static fields
.field private static sCpuCoreNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/doraemon/utils/CPUUtil;->sCpuCoreNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumCores()I
    .locals 5

    .prologue
    .line 15
    sget v3, Lcom/alibaba/doraemon/utils/CPUUtil;->sCpuCoreNum:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 16
    sget v3, Lcom/alibaba/doraemon/utils/CPUUtil;->sCpuCoreNum:I

    .line 36
    .local v0, "dir":Ljava/io/File;
    :goto_0
    return v3

    .line 26
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v3, Lcom/alibaba/doraemon/utils/CPUUtil$1CpuFilter;

    invoke-direct {v3}, Lcom/alibaba/doraemon/utils/CPUUtil$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 29
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 30
    array-length v3, v2

    sput v3, Lcom/alibaba/doraemon/utils/CPUUtil;->sCpuCoreNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    :goto_1
    sget v3, Lcom/alibaba/doraemon/utils/CPUUtil;->sCpuCoreNum:I

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
