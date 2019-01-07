.class public final Lhqr$3;
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
        "Lhhj;",
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
    .line 120
    iput-object p1, p0, Lhqr$3;->b:Lhqr;

    iput-object p2, p0, Lhqr$3;->a:Lcma;

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
    .line 131
    iget-object v0, p0, Lhqr$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lhqr$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 120
    check-cast p1, Ljava/util/List;

    .line 1124
    iget-object v0, p0, Lhqr$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lhqr$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 120
    :cond_0
    return-void
.end method
