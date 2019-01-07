.class final Lege$4;
.super Lcmi;
.source "OrgMicroAPPAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lege;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic b:Lege;


# direct methods
.method constructor <init>(Lege;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lege;

    .prologue
    .line 108
    iput-object p1, p0, Lege$4;->b:Lege;

    iput-object p2, p0, Lege$4;->a:Lcma;

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
    .line 118
    iget-object v0, p0, Lege$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lege$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Boolean;

    .line 1111
    iget-object v0, p0, Lege$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lege$4;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method
