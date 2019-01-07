.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;->b:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 315
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "agentMail":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;->a:Lcma;

    if-eqz v1, :cond_0

    .line 317
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$8;->a:Lcma;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 319
    :cond_0
    return-void

    .line 317
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
