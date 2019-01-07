.class final Latn$16;
.super Lcmi;
.source "CalendarDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latn;->a(Lasp;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laqf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Latn;


# direct methods
.method constructor <init>(Latn;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Latn;

    .prologue
    .line 476
    iput-object p1, p0, Latn$16;->b:Latn;

    iput-object p2, p0, Latn$16;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 494
    iget-object v0, p0, Latn$16;->a:Lcma;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Latn$16;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    const-string/jumbo v0, "listNonRepeatCalendarByNonRepeatModel onException "

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 476
    check-cast p1, Laqf;

    .line 1479
    if-nez p1, :cond_2

    .line 1480
    iget-object v0, p0, Latn$16;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Latn$16;->a:Lcma;

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    :cond_0
    const-string/jumbo v0, "listNonRepeatCalendarByNonRepeatModel "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "calendarListModel is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_1
    :goto_0
    return-void

    .line 1487
    :cond_2
    iget-object v0, p0, Latn$16;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Latn$16;->a:Lcma;

    invoke-static {p1}, Lasa;->a(Laqf;)Lasa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
