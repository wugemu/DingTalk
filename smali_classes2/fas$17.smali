.class final Lfas$17;
.super Lcmi;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.method constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 181
    iput-object p1, p0, Lfas$17;->b:Lfas;

    iput-object p2, p0, Lfas$17;->a:Lcma;

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
    .line 191
    iget-object v0, p0, Lfas$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lfas$17;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 181
    check-cast p1, Lcee;

    .line 1184
    iget-object v0, p0, Lfas$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lfas$17;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 181
    :cond_0
    return-void
.end method
