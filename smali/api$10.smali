.class final Lapi$10;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 154
    iput-object p1, p0, Lapi$10;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarActivityPresenter]onAccountLogin accountName="

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "pref_key_calendar_ali_mail_not_login_red_dot"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    .line 161
    invoke-static {}, Lavh;->c()V

    .line 162
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarActivityPresenter]onAccountLogout accountName="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 168
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 1603
    iget-object v1, v0, Latf;->a:Latf$b;

    new-instance v2, Latf$33;

    invoke-direct {v2, v0}, Latf$33;-><init>(Latf;)V

    invoke-virtual {v1, v2}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 169
    iget-object v0, p0, Lapi$10;->a:Lapi;

    .line 2051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 169
    invoke-interface {v0}, Laph$b;->m()V

    .line 170
    return-void
.end method
