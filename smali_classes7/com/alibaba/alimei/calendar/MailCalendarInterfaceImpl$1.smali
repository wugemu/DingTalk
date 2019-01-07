.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
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
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountLogin(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public final onAccountLogout(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final onAccountRemoved(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$1;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->b(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
