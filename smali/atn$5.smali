.class public final Latn$5;
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
        "Ljava/lang/Integer;",
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
    .line 298
    iput-object p1, p0, Latn$5;->b:Latn;

    iput-object p2, p0, Latn$5;->a:Lcma;

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
    .line 315
    iget-object v0, p0, Latn$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Latn$5;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    const-string/jumbo v0, "createCalendarShare onException "

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 298
    check-cast p1, Ljava/lang/Integer;

    .line 1301
    if-nez p1, :cond_2

    .line 1302
    iget-object v0, p0, Latn$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Latn$5;->a:Lcma;

    const-string/jumbo v1, "-1"

    sget v2, Laow$f;->unknown_error:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_0
    const-string/jumbo v0, "createCalendarShare onException "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "return privilege is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_1
    :goto_0
    return-void

    .line 1308
    :cond_2
    iget-object v0, p0, Latn$5;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Latn$5;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
