.class public Lcom/taobao/artc/utils/ArtcDeviceInfo;
.super Ljava/lang/Object;
.source "ArtcDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/utils/ArtcDeviceInfo$a;,
        Lcom/taobao/artc/utils/ArtcDeviceInfo$b;
    }
.end annotation


# static fields
.field public static final NETWORN_2G:Ljava/lang/String; = "2G"

.field public static final NETWORN_3G:Ljava/lang/String; = "3G"

.field public static final NETWORN_4G:Ljava/lang/String; = "4G"

.field public static final NETWORN_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORN_NONE:Ljava/lang/String; = "unknown"

.field public static final NETWORN_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "ArtcDeviceInfo"

.field public static battery_perc:I = 0x0

.field public static brand:Ljava/lang/String; = null

.field private static cpu_overuse_tick:I = 0x0

.field public static cpu_usage:I = 0x0

.field public static frontCamera:Z = false

.field public static final iNETWORN_2G:I = 0x2

.field public static final iNETWORN_3G:I = 0x3

.field public static final iNETWORN_4G:I = 0x4

.field public static final iNETWORN_5G:I = 0x5

.field public static final iNETWORN_MOBILE:I = 0x1

.field public static final iNETWORN_NONE:I = -0x1

.field public static final iNETWORN_WIFI:I

.field public static memory_in_mb:I

.field public static temperature:I


# instance fields
.field private batteryReceiver:Lcom/taobao/artc/utils/ArtcDeviceInfo$a;

.field private ctx:Landroid/content/Context;

.field private runing:Z

.field private wthread:Lcom/taobao/artc/utils/ArtcDeviceInfo$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_usage:I

    .line 45
    sput v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->memory_in_mb:I

    .line 46
    sput v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_overuse_tick:I

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->frontCamera:Z

    .line 50
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->brand:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->wthread:Lcom/taobao/artc/utils/ArtcDeviceInfo$b;

    .line 48
    iput-boolean v1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->runing:Z

    .line 88
    new-instance v0, Lcom/taobao/artc/utils/ArtcDeviceInfo$a;

    invoke-direct {v0, p0}, Lcom/taobao/artc/utils/ArtcDeviceInfo$a;-><init>(Lcom/taobao/artc/utils/ArtcDeviceInfo;)V

    iput-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->batteryReceiver:Lcom/taobao/artc/utils/ArtcDeviceInfo$a;

    .line 89
    iput-object p1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->ctx:Landroid/content/Context;

    .line 90
    sput v1, Lcom/taobao/artc/utils/ArtcDeviceInfo;->battery_perc:I

    .line 91
    sput v1, Lcom/taobao/artc/utils/ArtcDeviceInfo;->temperature:I

    .line 92
    return-void
.end method

.method public static IsMyCPUStrong(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 284
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_5

    .line 286
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 287
    .local v1, "cores":I
    const/4 v5, 0x2

    if-le v1, v5, :cond_5

    .line 288
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getHighCPUFrequncey(Landroid/content/Context;)I

    move-result v2

    .line 289
    .local v2, "maxFreq":I
    const v5, 0x1e8480

    if-lt v2, v5, :cond_1

    .line 327
    .end local v1    # "cores":I
    .end local v2    # "maxFreq":I
    :cond_0
    :goto_0
    return v3

    .line 294
    .restart local v1    # "cores":I
    .restart local v2    # "maxFreq":I
    :cond_1
    const-string/jumbo v5, "ro.board.platform"

    invoke-static {p0, v5}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getBuildProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "board":Ljava/lang/String;
    const-string/jumbo v5, "MT6795"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6755"

    .line 297
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6750"

    .line 298
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6738"

    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6737"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6753"

    .line 300
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6735"

    .line 301
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6591"

    .line 302
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6732"

    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6582"

    .line 304
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "MT6589"

    .line 305
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    :cond_2
    const-string/jumbo v5, "ArtcDeviceInfo"

    const-string/jumbo v6, "MTK CPU is within my black list: "

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-static {v5, v6, v3}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 309
    goto :goto_0

    .line 312
    :cond_3
    const-string/jumbo v5, "msm8940"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "msm8937"

    .line 313
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "msm8917"

    .line 314
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "msm8929"

    .line 315
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "msm8916"

    .line 316
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    :cond_4
    const-string/jumbo v5, "ArtcDeviceInfo"

    const-string/jumbo v6, "Qualcomm CPU is within my black list: "

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-static {v5, v6, v3}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 319
    goto/16 :goto_0

    .end local v0    # "board":Ljava/lang/String;
    .end local v1    # "cores":I
    .end local v2    # "maxFreq":I
    :cond_5
    move v3, v4

    .line 327
    goto/16 :goto_0
.end method

.method public static NetworkToInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 400
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 414
    :goto_1
    :pswitch_0
    return v0

    .line 400
    :sswitch_0
    const-string/jumbo v5, "unknown"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "mobile"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "2G"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "3G"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "4G"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 404
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 406
    goto :goto_1

    :pswitch_3
    move v0, v3

    .line 408
    goto :goto_1

    :pswitch_4
    move v0, v4

    .line 410
    goto :goto_1

    .line 412
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_1

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fb56f5e -> :sswitch_2
        -0x10fa53b6 -> :sswitch_0
        0x655 -> :sswitch_3
        0x674 -> :sswitch_4
        0x693 -> :sswitch_5
        0x37af15 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static UUID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "device_id"    # Ljava/lang/String;
    .param p1, "app_key"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "tick":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "compond":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$100(Lcom/taobao/artc/utils/ArtcDeviceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/utils/ArtcDeviceInfo;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->runing:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_overuse_tick:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_overuse_tick:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_overuse_tick:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_overuse_tick:I

    return v0
.end method

.method static synthetic access$300(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->nativeCpuOverused(Z)V

    return-void
.end method

.method public static compress([B)[B
    .locals 5
    .param p0, "input"    # [B

    .prologue
    .line 450
    array-length v4, p0

    new-array v2, v4, [B

    .line 451
    .local v2, "outbytes":[B
    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v4, 0x9

    invoke-direct {v1, v4}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 452
    .local v1, "compresser":Ljava/util/zip/Deflater;
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 453
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 455
    .local v0, "compressedDataLength":I
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 456
    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 457
    .local v3, "result":[B
    return-object v3
.end method

.method public static convertIPv4ToIPv6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ipv4"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string/jumbo v0, ""

    .line 486
    .local v0, "ipv6":Ljava/lang/String;
    const-string/jumbo v1, "ArtcDeviceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "convertIPv4ToIPv6, ipv4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ipv6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    return-object v0
.end method

.method public static decompress([B)[B
    .locals 9
    .param p0, "input"    # [B

    .prologue
    const/4 v8, 0x0

    .line 462
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 463
    .local v0, "decompresser":Ljava/util/zip/Inflater;
    array-length v5, p0

    invoke-virtual {v0, p0, v8, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 464
    array-length v5, p0

    mul-int/lit8 v5, v5, 0xa

    new-array v2, v5, [B

    .line 467
    .local v2, "output":[B
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 473
    .local v3, "outputLength":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 475
    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 476
    .local v4, "result":[B
    return-object v4

    .line 468
    .end local v3    # "outputLength":I
    .end local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Ljava/util/zip/DataFormatException;
    const-string/jumbo v5, "ArtcDeviceInfo"

    const-string/jumbo v6, "decompress exception"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    const/4 v3, 0x0

    .line 471
    .restart local v3    # "outputLength":I
    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBuildProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 239
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v7, "android.os.SystemProperties"

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 242
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/Class;

    .line 243
    .local v4, "paramTypes":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 244
    const-string/jumbo v7, "get"

    invoke-virtual {v0, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 246
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    .line 247
    .local v5, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    .line 248
    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "get":Ljava/lang/reflect/Method;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "params":[Ljava/lang/Object;
    .local v6, "ret":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 249
    .end local v6    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 250
    .local v3, "iAE":Ljava/lang/IllegalArgumentException;
    throw v3

    .line 252
    .end local v3    # "iAE":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    const-string/jumbo v6, ""

    .restart local v6    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHighCPUFrequncey(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v4, 0x0

    .line 260
    .local v4, "maxCPUFreq":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 261
    .local v0, "cores":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 265
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "/sys/devices/system/cpu/cpu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "cpuFreq":I
    if-le v1, v4, :cond_0

    .line 273
    move v4, v1

    .line 275
    :cond_0
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .end local v1    # "cpuFreq":I
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    :cond_1
    return v4
.end method

.method public static getNetworkState(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 337
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 338
    const-string/jumbo v6, "unknown"

    .line 396
    :goto_0
    return-object v6

    .line 341
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 342
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 343
    :cond_1
    const-string/jumbo v6, "unknown"

    goto :goto_0

    .line 347
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 348
    .local v5, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_4

    .line 349
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 350
    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-eqz v3, :cond_4

    .line 351
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v6, :cond_3

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_4

    .line 352
    :cond_3
    const-string/jumbo v6, "wifi"

    goto :goto_0

    .line 357
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 359
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_8

    .line 360
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 361
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "strSubTypeName":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 363
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v6, :cond_5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_8

    .line 364
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 388
    const-string/jumbo v6, "TD-SCDMA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "WCDMA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "CDMA2000"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 389
    :cond_6
    const-string/jumbo v6, "3G"

    goto :goto_0

    .line 371
    :pswitch_0
    const-string/jumbo v6, "2G"

    goto :goto_0

    .line 382
    :pswitch_1
    const-string/jumbo v6, "3G"

    goto :goto_0

    .line 385
    :pswitch_2
    const-string/jumbo v6, "4G"

    goto :goto_0

    .line 391
    :cond_7
    const-string/jumbo v6, "mobile"

    goto/16 :goto_0

    .line 396
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .end local v4    # "strSubTypeName":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "unknown"

    goto/16 :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isIPv6Only()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 426
    .local v3, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 427
    .local v2, "md":Ljava/security/MessageDigest;
    const-string/jumbo v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 428
    .local v0, "array":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 429
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "array":[B
    .end local v1    # "i":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    .line 435
    :goto_1
    return-object v4

    .restart local v0    # "array":[B
    .restart local v1    # "i":I
    .restart local v2    # "md":Ljava/security/MessageDigest;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static native nativeCpuOverused(Z)V
.end method


# virtual methods
.method public getUsedMemorySize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 210
    .local v0, "minfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 211
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    .line 212
    .local v1, "usedSize":I
    return v1
.end method

.method public init()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->batteryReceiver:Lcom/taobao/artc/utils/ArtcDeviceInfo$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->runing:Z

    .line 101
    new-instance v1, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;-><init>(Lcom/taobao/artc/utils/ArtcDeviceInfo;B)V

    iput-object v1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->wthread:Lcom/taobao/artc/utils/ArtcDeviceInfo$b;

    .line 102
    iget-object v1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->wthread:Lcom/taobao/artc/utils/ArtcDeviceInfo$b;

    invoke-virtual {v1}, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;->start()V

    .line 103
    return-void
.end method

.method public readUsage()F
    .locals 18

    .prologue
    .line 154
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x19

    if-le v13, v14, :cond_0

    .line 156
    const-wide/16 v14, 0x7d0

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 160
    :goto_0
    const/4 v13, 0x0

    .line 204
    :goto_1
    return v13

    .line 166
    :cond_0
    :try_start_1
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v13, "/proc/stat"

    const-string/jumbo v14, "r"

    invoke-direct {v11, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    .local v11, "reader":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 173
    .local v10, "load":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 178
    :goto_2
    :try_start_3
    const-string/jumbo v13, " +"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, "toks":[Ljava/lang/String;
    const/4 v13, 0x4

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 181
    .local v6, "idle1":J
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v13, 0x2

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x3

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x5

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x6

    aget-object v13, v12, v13

    .line 182
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x7

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/16 v13, 0x8

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v16

    add-long v0, v14, v16

    .line 185
    .local v0, "cpu1":J
    const-wide/16 v14, 0x7d0

    :try_start_4
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 188
    :goto_3
    const-wide/16 v14, 0x0

    :try_start_5
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 189
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 190
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 192
    const-string/jumbo v13, " +"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 194
    const/4 v13, 0x4

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 195
    .local v8, "idle2":J
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v13, 0x2

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x3

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x5

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x6

    aget-object v13, v12, v13

    .line 196
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/4 v13, 0x7

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/16 v13, 0x8

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v2, v14, v16

    .line 198
    .local v2, "cpu2":J
    sub-long v14, v2, v0

    long-to-float v13, v14

    add-long v14, v2, v8

    add-long v16, v0, v6

    sub-long v14, v14, v16

    long-to-float v14, v14

    div-float/2addr v13, v14

    goto/16 :goto_1

    .line 167
    .end local v0    # "cpu1":J
    .end local v2    # "cpu2":J
    .end local v6    # "idle1":J
    .end local v8    # "idle2":J
    .end local v10    # "load":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/RandomAccessFile;
    .end local v12    # "toks":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 169
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 174
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "load":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    .line 175
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "load":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v5

    .line 201
    .local v5, "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    const/4 v13, 0x0

    goto/16 :goto_1

    .end local v5    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v13

    goto/16 :goto_0

    .restart local v0    # "cpu1":J
    .restart local v6    # "idle1":J
    .restart local v10    # "load":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/RandomAccessFile;
    .restart local v12    # "toks":[Ljava/lang/String;
    :catch_4
    move-exception v13

    goto/16 :goto_3
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->batteryReceiver:Lcom/taobao/artc/utils/ArtcDeviceInfo$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->runing:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->wthread:Lcom/taobao/artc/utils/ArtcDeviceInfo$b;

    .line 116
    return-void
.end method
