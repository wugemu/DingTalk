.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$3;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$3;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$3;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$3;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->i()V

    .line 672
    :cond_0
    return-void
.end method
