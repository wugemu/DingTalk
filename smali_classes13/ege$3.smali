.class final Lege$3;
.super Lcmi;
.source "OrgMicroAPPAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lege;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
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
    .line 69
    iput-object p1, p0, Lege$3;->b:Lege;

    iput-object p2, p0, Lege$3;->a:Lcma;

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
    .line 79
    iget-object v0, p0, Lege$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lege$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;

    .line 1072
    iget-object v0, p0, Lege$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lege$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method
