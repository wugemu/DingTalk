.class final Lfas$7;
.super Lcmi;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfas;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcgb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfas;


# direct methods
.method constructor <init>(Lfas;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 375
    iput-object p1, p0, Lfas$7;->c:Lfas;

    iput-object p2, p0, Lfas$7;->a:Lcma;

    iput-object p3, p0, Lfas$7;->b:Ljava/lang/String;

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
    .line 391
    iget-object v0, p0, Lfas$7;->a:Lcma;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lfas$7;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 375
    check-cast p1, Lcgb;

    .line 1378
    iget-object v0, p0, Lfas$7;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1379
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->fromIdl(Lcgb;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_0

    .line 1382
    iget-object v1, p0, Lfas$7;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    .line 1385
    :cond_0
    iget-object v1, p0, Lfas$7;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 375
    :cond_1
    return-void
.end method
