.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$12;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$12;->b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$12;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 536
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$12;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    .local v0, "account":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v3

    invoke-interface {v3, v0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1254
    invoke-static {v0}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v1

    .line 544
    .local v1, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-eqz v1, :cond_0

    .line 545
    invoke-interface {v1, v0}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->createCalendarIfNotExist(Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->startSyncCalendar(Z)V

    goto :goto_0

    .line 549
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    :cond_1
    return-void
.end method
