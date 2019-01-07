.class public final Lcsk;
.super Ljava/lang/Object;
.source "DateFormatDayFormatter.java"

# interfaces
.implements Lcsm;


# instance fields
.field private b:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcsk;->b:Ljava/text/DateFormat;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Ljava/lang/String;
    .locals 2
    .param p1, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    iget-object v0, p0, Lcsk;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
