.class public final Leht$1;
.super Lcmi;
.source "DeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lced;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Leht;


# direct methods
.method public constructor <init>(Leht;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Leht;

    .prologue
    .line 44
    iput-object p1, p0, Leht$1;->b:Leht;

    iput-object p2, p0, Leht$1;->a:Lcma;

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
    .line 54
    iget-object v0, p0, Leht$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Leht$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ljava/util/List;

    .line 1047
    iget-object v0, p0, Leht$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Leht$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method
