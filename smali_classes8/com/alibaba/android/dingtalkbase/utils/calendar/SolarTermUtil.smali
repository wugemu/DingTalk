.class public final Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;
.super Ljava/lang/Object;
.source "SolarTermUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x829

    const/16 v7, 0x18

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->b:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUNFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x824

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOMAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->MANGZHONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x76e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x788

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x785

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x7e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DASHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x782

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIQIU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->BAILU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x787

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QIUFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x796

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->SHUANGJIANG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIDONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->b:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DONGZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x77e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x7e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->b:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x7e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x822

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->c:Ljava/util/Map;

    .line 88
    new-array v0, v6, [[D

    new-array v1, v7, [D

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v7, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->d:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x4012849ba5e353f8L    # 4.6295
        0x403375bc01a36e2fL    # 19.4599
        0x401987c84b5dcc64L    # 6.3826
        0x40356a5e353f7ceeL    # 21.4155
        0x40165c28f5c28f5cL    # 5.59
        0x4034e353f7ced917L    # 20.888
        0x401945a1cac08312L    # 6.318
        0x4035dc28f5c28f5cL    # 21.86
        0x401a000000000000L    # 6.5
        0x4036333333333333L    # 22.2
        0x401fb645a1cac083L    # 7.928
        0x4037a66666666666L    # 23.65
        0x4020b33333333333L    # 8.35
        0x4037f33333333333L    # 23.95
        0x4020e147ae147ae1L    # 8.44
        0x4037d26e978d4fdfL    # 23.822
        0x4022322d0e560419L    # 9.098
        0x403837ced916872bL    # 24.218
        0x40206f9db22d0e56L    # 8.218
        0x4037147ae147ae14L    # 23.08
        0x401f99999999999aL    # 7.9
        0x403699999999999aL    # 22.6
        0x401870a3d70a3d71L    # 6.11
        0x4034d70a3d70a3d7L    # 20.84
    .end array-data

    :array_1
    .array-data 8
        0x400ef5c28f5c28f6L    # 3.87
        0x4032bae147ae147bL    # 18.73
        0x4016851eb851eb85L    # 5.63
        0x4034a5604189374cL    # 20.646
        0x40133d70a3d70a3dL    # 4.81
        0x403419999999999aL    # 20.1
        0x4016147ae147ae14L    # 5.52
        0x40350a3d70a3d70aL    # 21.04
        0x4016b645a1cac083L    # 5.678
        0x40355eb851eb851fL    # 21.37
        0x401c6e978d4fdf3bL    # 7.108
        0x4036d47ae147ae14L    # 22.83
        0x401e000000000000L    # 7.5
        0x40372147ae147ae1L    # 23.13
        0x401e95810624dd2fL    # 7.646
        0x40370ac083126e98L    # 23.042
        0x4020a2d0e5604189L    # 8.318
        0x40377020c49ba5e3L    # 23.438
        0x401dc083126e978dL    # 7.438
        0x40365c28f5c28f5cL    # 22.36
        0x401cb851eb851eb8L    # 7.18
        0x4035f0a3d70a3d71L    # 21.94
        0x40159f3b645a1cacL    # 5.4055
        0x40341eb851eb851fL    # 20.12
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static a(Ljava/util/Map;III)I
    .locals 6
    .param p1, "year"    # I
    .param p2, "solarTermValue"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 161
    .local v1, "off":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 162
    .local v2, "years":[Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 163
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    .local v0, "i":I
    if-ne v0, p1, :cond_1

    .line 165
    move v1, p3

    .line 170
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 163
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static a(III)Ljava/lang/String;
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1174
    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1178
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "02"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LICHUN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LICHUN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "02"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "03"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->JINGZHE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->JINGZHE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "03"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUNFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUNFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "04"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QINGMING:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QINGMING:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "04"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->GUYU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->GUYU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "05"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIXIA:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIXIA:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "05"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOMAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOMAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "06"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->MANGZHONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->MANGZHONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "06"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "07"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "07"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DASHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DASHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "08"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIQIU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIQIU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "08"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "09"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->BAILU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->BAILU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "09"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QIUFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QIUFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "10"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->HANLU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->HANLU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "10"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->SHUANGJIANG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->SHUANGJIANG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "11"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIDONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIDONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "11"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "12"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "12"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DONGZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DONGZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "01"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "01"

    aput-object v6, v5, v7

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    add-int/lit8 v3, p1, 0x1

    invoke-static {v3, p2}, Lcqe;->b(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 108
    .local v2, "solarTerm":Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 112
    :goto_0
    return-object v3

    .line 108
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getValueResId()I

    move-result v3

    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v3, v4

    .line 112
    goto :goto_0
.end method

.method private static a(ILcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;)Ljava/lang/String;
    .locals 12
    .param p0, "year"    # I
    .param p1, "solarTerm"    # Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->getIndex()I

    move-result v4

    .line 119
    .local v4, "solarTermValue":I
    const/16 v6, 0x76d

    if-lt p0, v6, :cond_4

    const/16 v6, 0x7d0

    if-gt p0, v6, :cond_4

    .line 120
    const/4 v0, 0x0

    .line 128
    .local v0, "centuryIndex":I
    :goto_0
    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->d:[[D

    aget-object v6, v6, v0

    aget-wide v2, v6, v4

    .line 132
    .local v2, "centuryValue":D
    rem-int/lit8 v5, p0, 0x64

    .line 133
    .local v5, "y":I
    rem-int/lit8 v6, p0, 0x4

    if-nez v6, :cond_0

    rem-int/lit8 v6, p0, 0x64

    if-nez v6, :cond_1

    :cond_0
    rem-int/lit16 v6, p0, 0x190

    if-nez v6, :cond_3

    .line 134
    :cond_1
    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->ordinal()I

    move-result v6

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 135
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->ordinal()I

    move-result v6

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LICHUN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 136
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->ordinal()I

    move-result v6

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 137
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->ordinal()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 140
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 143
    :cond_3
    int-to-double v6, v5

    const-wide v8, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    double-to-int v6, v6

    div-int/lit8 v7, v5, 0x4

    sub-int v1, v6, v7

    .line 2155
    .local v1, "dateNum":I
    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->b:Ljava/util/Map;

    const/4 v7, -0x1

    invoke-static {v6, p0, v4, v7}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(Ljava/util/Map;III)I

    move-result v6

    sget-object v7, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a:Ljava/util/Map;

    .line 2156
    invoke-static {v7, p0, v4, v10}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(Ljava/util/Map;III)I

    move-result v7

    add-int/2addr v6, v7

    .line 144
    add-int/2addr v1, v6

    .line 145
    const-string/jumbo v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 121
    .end local v0    # "centuryIndex":I
    .end local v1    # "dateNum":I
    .end local v2    # "centuryValue":D
    .end local v5    # "y":I
    :cond_4
    const/16 v6, 0x7d1

    if-lt p0, v6, :cond_5

    const/16 v6, 0x834

    if-gt p0, v6, :cond_5

    .line 122
    const/4 v0, 0x1

    .restart local v0    # "centuryIndex":I
    goto :goto_0

    .line 124
    .end local v0    # "centuryIndex":I
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "\u4e0d\u652f\u6301\u6b64\u5e74\u4efd\uff1a"

    aput-object v8, v7, v11

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    const-string/jumbo v9, "\uff0c\u76ee\u524d\u53ea\u652f\u63011901\u5e74\u52302100\u5e74\u7684\u65f6\u95f4\u8303\u56f4"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
