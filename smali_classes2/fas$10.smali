.class public final Lfas$10;
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
        "Ljava/lang/Void;",
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
    .line 447
    iput-object p1, p0, Lfas$10;->b:Lfas;

    iput-object p2, p0, Lfas$10;->a:Lcma;

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
    .line 457
    iget-object v0, p0, Lfas$10;->a:Lcma;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lfas$10;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 447
    check-cast p1, Ljava/lang/Void;

    .line 1450
    iget-object v0, p0, Lfas$10;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lfas$10;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 447
    :cond_0
    return-void
.end method
