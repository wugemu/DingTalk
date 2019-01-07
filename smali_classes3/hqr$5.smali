.class public final Lhqr$5;
.super Lcmi;
.source "OAUploadServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqr;
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
        "Lhjx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lhqr;


# direct methods
.method public constructor <init>(Lhqr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhqr;

    .prologue
    .line 181
    iput-object p1, p0, Lhqr$5;->b:Lhqr;

    iput-object p2, p0, Lhqr$5;->a:Lcma;

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
    .line 191
    iget-object v0, p0, Lhqr$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lhqr$5;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 181
    check-cast p1, Ljava/util/List;

    .line 1184
    iget-object v0, p0, Lhqr$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lhqr$5;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 181
    :cond_0
    return-void
.end method
