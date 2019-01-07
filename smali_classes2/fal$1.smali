.class final Lfal$1;
.super Lcmi;
.source "CookieAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfal;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lcdd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfal;


# direct methods
.method constructor <init>(Lfal;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfal;

    .prologue
    .line 19
    iput-object p1, p0, Lfal$1;->b:Lfal;

    iput-object p2, p0, Lfal$1;->a:Lcma;

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
    iget-object v0, p0, Lfal$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lfal$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/util/List;

    .line 1022
    iget-object v0, p0, Lfal$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lfal$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method
