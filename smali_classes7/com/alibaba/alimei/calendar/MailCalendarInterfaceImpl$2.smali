.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

.field final synthetic b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;->b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;->a:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 2
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 564
    if-nez p1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    const/4 v0, 0x1

    iget v1, p1, Lyc;->c:I

    if-ne v0, v1, :cond_2

    .line 568
    const-string/jumbo v0, "[mailCalendar]calendar sync success"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;->a:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;->a()V

    goto :goto_0

    .line 570
    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Lyc;->c:I

    if-ne v0, v1, :cond_0

    .line 571
    const-string/jumbo v0, "[mailCalendar]calendar sync failed"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$2;->a:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;->b()V

    goto :goto_0
.end method
