.class final Lahk$1$1;
.super Ljava/lang/Object;
.source "SyncMailsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahk$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

.field final synthetic b:Lahk$1;


# direct methods
.method constructor <init>(Lahk$1;Lcom/alibaba/alimei/sdk/api/CalendarApi;)V
    .locals 0
    .param p1, "this$1"    # Lahk$1;

    .prologue
    .line 326
    iput-object p1, p0, Lahk$1$1;->b:Lahk$1;

    iput-object p2, p0, Lahk$1$1;->a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 329
    iget-object v0, p0, Lahk$1$1;->a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

    iget-object v1, p0, Lahk$1$1;->b:Lahk$1;

    iget-object v1, v1, Lahk$1;->b:Lahk;

    .line 1055
    iget-object v1, v1, Lahk;->a:Ljava/lang/String;

    .line 329
    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->createCalendarIfNotExist(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lahk$1$1;->a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->startSyncCalendar(Z)V

    .line 331
    return-void
.end method
