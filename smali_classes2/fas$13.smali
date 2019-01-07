.class public final Lfas$13;
.super Lcmi;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfas;


# direct methods
.method public constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 535
    iput-object p1, p0, Lfas$13;->b:Lfas;

    iput-object p2, p0, Lfas$13;->a:Lcma;

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
    .line 545
    iget-object v0, p0, Lfas$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lfas$13;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 535
    check-cast p1, Lcee;

    .line 1538
    iget-object v0, p0, Lfas$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lfas$13;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 535
    :cond_0
    return-void
.end method
