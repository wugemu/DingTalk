.class public final Lhqq$1;
.super Lcmi;
.source "MicroAppStoreIServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lhqq;


# direct methods
.method public constructor <init>(Lhqq;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhqq;

    .prologue
    .line 20
    iput-object p1, p0, Lhqq$1;->b:Lhqq;

    iput-object p2, p0, Lhqq$1;->a:Lcma;

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
    .line 30
    iget-object v0, p0, Lhqq$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lhqq$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/util/Map;

    .line 1023
    iget-object v0, p0, Lhqq$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lhqq$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-void
.end method
