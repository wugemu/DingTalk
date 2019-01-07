.class final Lcom/alibaba/android/user/login/SignUpActivity$7;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpActivity;->onClick(Landroid/view/View;)V
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
        "Lcho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$7;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 389
    check-cast p1, Lcho;

    .line 1392
    if-eqz p1, :cond_0

    iget v0, p1, Lcho;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$7;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->f(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 1394
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$7;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v1, p1, Lcho;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->b(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;)V

    .line 1395
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "checkPhoneNumber error: "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p1, Lcho;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$7;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->g(Lcom/alibaba/android/user/login/SignUpActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$7;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->g(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 409
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "checkPhoneNumber exception : "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 404
    return-void
.end method
