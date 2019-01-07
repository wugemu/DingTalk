.class public final Latn$18;
.super Lcmi;
.source "CalendarDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.method public constructor <init>(Latn;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Latn;

    .prologue
    .line 518
    iput-object p1, p0, Latn$18;->b:Latn;

    iput-object p2, p0, Latn$18;->a:Lcma;

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
    .line 536
    iget-object v0, p0, Latn$18;->a:Lcma;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Latn$18;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    const-string/jumbo v0, "listRepeatCalendarByRepeatModel onException "

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 518
    check-cast p1, Laqf;

    .line 1521
    if-nez p1, :cond_2

    .line 1522
    iget-object v0, p0, Latn$18;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Latn$18;->a:Lcma;

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_0
    const-string/jumbo v0, "listRepeatCalendarByRepeatModel "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "calendarListModel is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_1
    :goto_0
    return-void

    .line 1529
    :cond_2
    iget-object v0, p0, Latn$18;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Latn$18;->a:Lcma;

    invoke-static {p1}, Lasa;->a(Laqf;)Lasa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
