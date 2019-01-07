.class public final enum Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
.super Ljava/lang/Enum;
.source "CalendarConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/base/interfaces/CalendarConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCHEDULE_EVENT_DAY_REMIND_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field private static final ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_DAY_VALUES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DAY_BEFORE_YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum FIFTEEN_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum FIVE_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum HALF_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field private static final NOT_ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ONE_DAY:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum ONE_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum ONE_WEEK_AGO_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

.field public static final enum YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;


# instance fields
.field private mDescId:I

.field private mMinute:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 226
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x0

    const-wide/32 v4, -0x80000000

    sget v6, Lapg$a;->dt_calendar_event_remind_none:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 227
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "HAPPEN"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget v6, Lapg$a;->dt_ding_schedule_event_remind_happen:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 228
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "FIVE_MINUTES"

    const/4 v3, 0x2

    const-wide/16 v4, 0x5

    sget v6, Lapg$a;->dt_calendar_event_remind_five_minutes:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->FIVE_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 229
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "FIFTEEN_MINUTES"

    const/4 v3, 0x3

    const-wide/16 v4, 0xf

    sget v6, Lapg$a;->dt_calendar_event_remind_fifteen_minutes:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->FIFTEEN_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 230
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "HALF_HOUR"

    const/4 v3, 0x4

    const-wide/16 v4, 0x1e

    sget v6, Lapg$a;->dt_calendar_event_remind_half_hour:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HALF_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 231
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "ONE_HOUR"

    const/4 v3, 0x5

    const-wide/16 v4, 0x3c

    sget v6, Lapg$a;->dt_calendar_event_remind_one_hour:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 232
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "YESTERDAY_9"

    const/4 v3, 0x6

    const-wide/16 v4, 0x384

    sget v6, Lapg$a;->dt_calendar_event_remind_yesterday_9:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 233
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "ONE_DAY"

    const/4 v3, 0x7

    const-wide/16 v4, 0x5a0

    sget v6, Lapg$a;->dt_calendar_event_remind_one_day:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_DAY:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 234
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "DAY_BEFORE_YESTERDAY_9"

    const/16 v3, 0x8

    const-wide/16 v4, 0x924

    sget v6, Lapg$a;->dt_calendar_event_remind_day_before_yesterday_9:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->DAY_BEFORE_YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 235
    new-instance v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const-string/jumbo v2, "ONE_WEEK_AGO_9"

    const/16 v3, 0x9

    const-wide/16 v4, 0x2544

    sget v6, Lapg$a;->dt_calendar_event_remind_one_week_ago_9:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_WEEK_AGO_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 224
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->FIVE_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->FIFTEEN_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HALF_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_DAY:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->DAY_BEFORE_YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_WEEK_AGO_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 320
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$1;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    .line 330
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$2;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$3;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$3;-><init>()V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$4;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE$4;-><init>()V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJI)V
    .locals 1
    .param p3, "minute"    # J
    .param p5, "descId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 241
    iput-wide p3, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->mMinute:J

    .line 242
    iput p5, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->mDescId:I

    .line 243
    return-void
.end method

.method public static fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    .locals 2
    .param p0, "minute"    # J

    .prologue
    .line 274
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 293
    :goto_0
    return-object v0

    .line 276
    :cond_0
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 277
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->FIVE_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 278
    :cond_1
    const-wide/16 v0, 0xf

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 279
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->FIFTEEN_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 280
    :cond_2
    const-wide/16 v0, 0x1e

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 281
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HALF_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 282
    :cond_3
    const-wide/16 v0, 0x3c

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 283
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_HOUR:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 284
    :cond_4
    const-wide/16 v0, 0x5a0

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    .line 285
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_DAY:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 286
    :cond_5
    const-wide/16 v0, 0x384

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 287
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 288
    :cond_6
    const-wide/16 v0, 0x924

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 289
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->DAY_BEFORE_YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 290
    :cond_7
    const-wide/16 v0, 0x2544

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    .line 291
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ONE_WEEK_AGO_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0

    .line 293
    :cond_8
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0
.end method

.method public static getMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    .locals 1
    .param p0, "index"    # I
    .param p1, "isAllDay"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_2

    .line 257
    if-ltz p0, :cond_0

    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 258
    :cond_0
    const/4 p0, 0x0

    .line 261
    :cond_1
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 268
    :goto_0
    return-object v0

    .line 264
    :cond_2
    if-ltz p0, :cond_3

    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_4

    .line 265
    :cond_3
    const/4 p0, 0x0

    .line 268
    :cond_4
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    goto :goto_0
.end method

.method public static getResIdList(Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "isAllDay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    const-class v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    return-object v0
.end method


# virtual methods
.method public final convertToModeIndex(Z)I
    .locals 3
    .param p1, "isAllDay"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 299
    if-eqz p1, :cond_2

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 301
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_1

    move v1, v0

    .line 316
    :cond_0
    :goto_1
    return v1

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 310
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_3

    move v1, v0

    .line 311
    goto :goto_1

    .line 309
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final getDescId()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->mDescId:I

    return v0
.end method

.method public final getMinutes()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->mMinute:J

    return-wide v0
.end method
