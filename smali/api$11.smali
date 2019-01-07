.class final Lapi$11;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;


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
    .line 174
    iput-object p1, p0, Lapi$11;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarActivityPresenter]onFolderChanged folderName="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lapi$11;->a:Lapi;

    .line 1051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 179
    invoke-interface {v0}, Laph$b;->m()V

    .line 180
    return-void
.end method
