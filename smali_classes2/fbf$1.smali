.class public final Lfbf$1;
.super Lcmi;
.source "UserDeviceAPiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbf;
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

.field final synthetic b:Lfbf;


# direct methods
.method public constructor <init>(Lfbf;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbf;

    .prologue
    .line 58
    iput-object p1, p0, Lfbf$1;->b:Lfbf;

    iput-object p2, p0, Lfbf$1;->a:Lcma;

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
    .line 68
    iget-object v0, p0, Lfbf$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lfbf$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Boolean;

    .line 1061
    iget-object v0, p0, Lfbf$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lfbf$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method
