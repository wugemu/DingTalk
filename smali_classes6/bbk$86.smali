.class final Lbbk$86;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 1629
    iput-object p1, p0, Lbbk$86;->b:Lbbk;

    iput-object p2, p0, Lbbk$86;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1639
    iget-object v0, p0, Lbbk$86;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lbbk$86;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_0
    const-string/jumbo v0, "updateDingDeadLine failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1629
    check-cast p1, Ljava/lang/Void;

    .line 2632
    iget-object v0, p0, Lbbk$86;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lbbk$86;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1629
    :cond_0
    return-void
.end method