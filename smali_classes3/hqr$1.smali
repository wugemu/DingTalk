.class final Lhqr$1;
.super Lcmi;
.source "OAUploadServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhqr;->a(Lhjq;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lhqr;


# direct methods
.method constructor <init>(Lhqr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhqr;

    .prologue
    .line 75
    iput-object p1, p0, Lhqr$1;->b:Lhqr;

    iput-object p2, p0, Lhqr$1;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    iget-object v0, p0, Lhqr$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lhqr$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 75
    check-cast p1, Lhjw;

    .line 1078
    iget-object v0, p0, Lhqr$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lhqr$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method
