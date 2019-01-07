.class final Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;
.super Ljava/lang/Object;
.source "CalendarIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;->a(ZLjava/util/concurrent/atomic/AtomicInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;ZLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;

    iput-boolean p2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;->a:Z

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;->a:Z

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;->a(Lcom/alibaba/alimei/sdk/calendar/helper/CalendarIntentService;ZLjava/util/concurrent/atomic/AtomicInteger;)V

    .line 68
    return-void
.end method
