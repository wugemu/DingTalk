.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;
.super Ljava/lang/Enum;
.source "CalendarBaseMonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REFRESH_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

.field public static final enum ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

.field public static final enum CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

.field public static final enum OTHER_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    const-string/jumbo v1, "CURRENT_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    .line 273
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    const-string/jumbo v1, "OTHER_PAGES"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->OTHER_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    .line 274
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    const-string/jumbo v1, "ALL_PAGES"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->OTHER_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->ALL_PAGES:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    return-object v0
.end method
