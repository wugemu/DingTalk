.class public final Lato$1;
.super Lcmi;
.source "HolidayDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lato;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lato;


# direct methods
.method public constructor <init>(Lato;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lato;

    .prologue
    .line 19
    iput-object p1, p0, Lato$1;->b:Lato;

    iput-object p2, p0, Lato$1;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    iget-object v0, p0, Lato$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lato$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    const-string/jumbo v0, "getHolidayArrangementsFromServer failed"

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 19
    check-cast p1, Laqx;

    .line 1022
    iget-object v0, p0, Lato$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lato$1;->a:Lcma;

    new-instance v1, Lasn;

    invoke-direct {v1, p1}, Lasn;-><init>(Laqx;)V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method
