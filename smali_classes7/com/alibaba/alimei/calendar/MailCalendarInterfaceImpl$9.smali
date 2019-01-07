.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(IIZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcma;

.field final synthetic f:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;IIZLjava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->f:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->a:I

    iput p3, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->b:I

    iput-boolean p4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->c:Z

    iput-object p5, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->f:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iget v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->a:I

    iget v2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->b:I

    iget-boolean v3, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->c:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->d:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$9;->e:Lcma;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;IIZLjava/util/List;Ljava/util/List;ILcma;)V

    .line 362
    return-void
.end method
