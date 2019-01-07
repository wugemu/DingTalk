.class final Latj$1;
.super Ljava/lang/Object;
.source "MailCalendarEventProvider.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Latj;


# direct methods
.method constructor <init>(Latj;)V
    .locals 0
    .param p1, "this$0"    # Latj;

    .prologue
    .line 44
    iput-object p1, p0, Latj$1;->a:Latj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[MailCalendarEventProvider]onCalendarSyncSuccess"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Latj$1;->a:Latj;

    iget-object v1, p0, Latj$1;->a:Latj;

    .line 1038
    iget-wide v2, v1, Latj;->b:J

    .line 48
    iget-object v1, p0, Latj$1;->a:Latj;

    .line 2038
    iget-wide v4, v1, Latj;->c:J

    .line 48
    invoke-virtual {v0, v2, v3, v4, v5}, Latj;->a(JJ)V

    .line 49
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[MailCalendarEventProvider]onCalendarSyncFail"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 54
    return-void
.end method
