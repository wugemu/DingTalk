.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$17;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$17;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 268
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$17;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .line 268
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 281
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getUpstreamToken error info: code = "

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

    .line 282
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 277
    return-void
.end method