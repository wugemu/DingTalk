.class public final Leht$2;
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
        "Lcdi;",
        ">;"
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
    .line 69
    iput-object p1, p0, Leht$2;->b:Leht;

    iput-object p2, p0, Leht$2;->a:Lcma;

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
    .line 79
    iget-object v0, p0, Leht$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Leht$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcdi;

    .line 1072
    iget-object v0, p0, Leht$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Leht$2;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method
