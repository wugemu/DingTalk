.class public final Latn$25;
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
        "Ljava/lang/Boolean;",
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
    .line 627
    iput-object p1, p0, Latn$25;->b:Latn;

    iput-object p2, p0, Latn$25;->a:Lcma;

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
    .line 637
    iget-object v0, p0, Latn$25;->a:Lcma;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Latn$25;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    const-string/jumbo v0, "showCalendarEntry onException "

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 627
    check-cast p1, Ljava/lang/Boolean;

    .line 1630
    iget-object v0, p0, Latn$25;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Latn$25;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 627
    :cond_0
    return-void
.end method
