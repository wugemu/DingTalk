.class public Lcom/alibaba/doraemon/performance/CalendarProxy;
.super Ljava/lang/Object;
.source "CalendarProxy.java"


# static fields
.field private static mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/performance/SoftReferenceProxy",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/performance/CalendarProxy;->mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendar()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->makeSureSoftProxy()V

    .line 21
    sget-object v1, Lcom/alibaba/doraemon/performance/CalendarProxy;->mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lcom/alibaba/doraemon/performance/CalendarProxy;->mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 27
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_0
    return-object v0

    .line 24
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .restart local v0    # "calendar":Ljava/util/Calendar;
    goto :goto_0
.end method

.method private static makeSureSoftProxy()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/doraemon/performance/CalendarProxy;->mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/alibaba/doraemon/performance/CalendarProxy;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/performance/CalendarProxy;->mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;-><init>()V

    .line 41
    sput-object v0, Lcom/alibaba/doraemon/performance/CalendarProxy;->mCalendar:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    new-instance v2, Lcom/alibaba/doraemon/performance/CalendarProxy$1;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/CalendarProxy$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->setCreator(Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;)V

    .line 53
    :cond_0
    monitor-exit v1

    .line 55
    :cond_1
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
