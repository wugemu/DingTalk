.class final Lfrm$1;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrm;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrm;


# direct methods
.method constructor <init>(Lfrm;)V
    .locals 0
    .param p1, "this$0"    # Lfrm;

    .prologue
    .line 61
    iput-object p1, p0, Lfrm$1;->a:Lfrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .line 3064
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3065
    :cond_0
    const-string/jumbo v0, "NotReceiveSmsCodePresenter.initSendSms.getUpstreamToken: upstreamTokenObject can\'t be used!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3067
    :cond_1
    iget-object v0, p0, Lfrm$1;->a:Lfrm;

    .line 4032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 3067
    if-nez v0, :cond_2

    .line 3071
    iget-object v0, p0, Lfrm$1;->a:Lfrm;

    .line 5032
    iget-object v0, v0, Lfrm;->b:Lfrl$b;

    .line 3071
    invoke-interface {v0, p1}, Lfrl$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;)V

    .line 61
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NotReceiveSmsCodePresenter.initSendSms.getUpstreamToken.onException: code = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "reason = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lfrm$1;->a:Lfrm;

    .line 1032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lfrm$1;->a:Lfrm;

    .line 2032
    iget-object v0, v0, Lfrm;->b:Lfrl$b;

    .line 86
    invoke-interface {v0, p1, p2}, Lfrl$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lfrm$1;->a:Lfrm;

    .line 3032
    iget-object v0, v0, Lfrm;->b:Lfrl$b;

    .line 87
    invoke-interface {v0}, Lfrl$b;->g()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 77
    return-void
.end method
