.class final enum Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;
.super Ljava/lang/Enum;
.source "SolarTermUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SOLAR_TERMS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum BAILU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum CHUNFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum CHUSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum DASHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum DAXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum DONGZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum GUYU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum HANLU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum JINGZHE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum LICHUN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum LIDONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum LIQIU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum LIXIA:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum MANGZHONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum QINGMING:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum QIUFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum SHUANGJIANG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum XIAOMAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum XIAOSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum XIAOXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum XIAZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

.field public static final enum YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;


# instance fields
.field private mIndex:I

.field private mValueResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "LICHUN"

    sget v2, Lcig$j;->and_calendar_solar_lichun_day:I

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LICHUN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "YUSHUI"

    sget v2, Lcig$j;->and_calendar_solar_yushui_day:I

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 47
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "JINGZHE"

    sget v2, Lcig$j;->and_calendar_solar_jingzhe_day:I

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->JINGZHE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "CHUNFEN"

    sget v2, Lcig$j;->and_calendar_solar_chunfen_day:I

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUNFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 49
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "QINGMING"

    sget v2, Lcig$j;->and_calendar_solar_qingming_day:I

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QINGMING:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 50
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "GUYU"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget v4, Lcig$j;->and_calendar_solar_guyu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->GUYU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 51
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "LIXIA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget v4, Lcig$j;->and_calendar_solar_lixia_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIXIA:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "XIAOMAN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    sget v4, Lcig$j;->and_calendar_solar_xiaoman_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOMAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "MANGZHONG"

    const/16 v2, 0x8

    const/16 v3, 0x8

    sget v4, Lcig$j;->and_calendar_solar_mangzhong_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->MANGZHONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 54
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "XIAZHI"

    const/16 v2, 0x9

    const/16 v3, 0x9

    sget v4, Lcig$j;->and_calendar_solar_xiazhi_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 55
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "XIAOSHU"

    const/16 v2, 0xa

    const/16 v3, 0xa

    sget v4, Lcig$j;->and_calendar_solar_xiaoshu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "DASHU"

    const/16 v2, 0xb

    const/16 v3, 0xb

    sget v4, Lcig$j;->and_calendar_solar_dashu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DASHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "LIQIU"

    const/16 v2, 0xc

    const/16 v3, 0xc

    sget v4, Lcig$j;->and_calendar_solar_liqiu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIQIU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "CHUSHU"

    const/16 v2, 0xd

    const/16 v3, 0xd

    sget v4, Lcig$j;->and_calendar_solar_chushu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "BAILU"

    const/16 v2, 0xe

    const/16 v3, 0xe

    sget v4, Lcig$j;->and_calendar_solar_bailu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->BAILU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "QIUFEN"

    const/16 v2, 0xf

    const/16 v3, 0xf

    sget v4, Lcig$j;->and_calendar_solar_qiufen_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QIUFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 61
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "HANLU"

    const/16 v2, 0x10

    const/16 v3, 0x10

    sget v4, Lcig$j;->and_calendar_solar_hanlu_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->HANLU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "SHUANGJIANG"

    const/16 v2, 0x11

    const/16 v3, 0x11

    sget v4, Lcig$j;->and_calendar_solar_shuangjiang_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->SHUANGJIANG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 63
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "LIDONG"

    const/16 v2, 0x12

    const/16 v3, 0x12

    sget v4, Lcig$j;->and_calendar_solar_lidong_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIDONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 64
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "XIAOXUE"

    const/16 v2, 0x13

    const/16 v3, 0x13

    sget v4, Lcig$j;->and_calendar_solar_xiaoxue_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 65
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "DAXUE"

    const/16 v2, 0x14

    const/16 v3, 0x14

    sget v4, Lcig$j;->and_calendar_solar_daxue_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 66
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "DONGZHI"

    const/16 v2, 0x15

    const/16 v3, 0x15

    sget v4, Lcig$j;->and_calendar_solar_dongzhi_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DONGZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "XIAOHAN"

    const/16 v2, 0x16

    const/16 v3, 0x16

    sget v4, Lcig$j;->and_calendar_solar_xiaohan_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 68
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    const-string/jumbo v1, "DAHAN"

    const/16 v2, 0x17

    const/16 v3, 0x17

    sget v4, Lcig$j;->and_calendar_solar_dahan_day:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    .line 44
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LICHUN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->YUSHUI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->JINGZHE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUNFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QINGMING:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->GUYU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIXIA:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOMAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->MANGZHONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DASHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIQIU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->CHUSHU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->BAILU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->QIUFEN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->HANLU:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->SHUANGJIANG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->LIDONG:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAXUE:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DONGZHI:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->XIAOHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->DAHAN:Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "valueResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->mIndex:I

    .line 75
    iput p4, p0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->mValueResId:I

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->mIndex:I

    return v0
.end method

.method public final getValueResId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil$SOLAR_TERMS;->mValueResId:I

    return v0
.end method
