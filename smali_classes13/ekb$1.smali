.class public final Lekb$1;
.super Lcmi;
.source "CommonApiIml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekb;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lekb;


# direct methods
.method public constructor <init>(Lekb;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lekb;

    .prologue
    .line 42
    iput-object p1, p0, Lekb$1;->b:Lekb;

    iput-object p2, p0, Lekb$1;->a:Lcma;

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
    .line 52
    iget-object v0, p0, Lekb$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lekb$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    check-cast p1, Ljava/util/List;

    .line 1045
    iget-object v0, p0, Lekb$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lekb$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method
