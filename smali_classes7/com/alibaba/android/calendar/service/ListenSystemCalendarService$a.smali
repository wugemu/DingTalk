.class final Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;
.super Landroid/database/ContentObserver;
.source "ListenSystemCalendarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;->a:Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;

    .line 88
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;Landroid/os/Handler;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;
    .param p2, "x1"    # Landroid/os/Handler;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/calendar/service/ListenSystemCalendarService$a;-><init>(Lcom/alibaba/android/calendar/service/ListenSystemCalendarService;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 94
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    if-ne p2, v0, :cond_0

    .line 95
    const-string/jumbo v0, "pref_key_should_reload_system_calendar"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 96
    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v0

    invoke-virtual {v0}, Lapd;->b()V

    .line 98
    :cond_0
    return-void
.end method
