.class final Lfup$1;
.super Ljava/lang/Object;
.source "BiometricTask.java"

# interfaces
.implements Lcom/alibaba/security/biometrics/AuthContext$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfup;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfup;


# direct methods
.method constructor <init>(Lfup;)V
    .locals 0
    .param p1, "this$0"    # Lfup;

    .prologue
    .line 70
    iput-object p1, p0, Lfup$1;->a:Lfup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/security/biometrics/AuthContext;I)V
    .locals 5
    .param p1, "authContext"    # Lcom/alibaba/security/biometrics/AuthContext;
    .param p2, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 96
    invoke-virtual {p1, v4}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lcom/alibaba/security/biometrics/AuthContext$b;)V

    .line 97
    const/16 v0, 0x66

    if-ne p2, v0, :cond_2

    .line 98
    sget v0, Lezg$l;->dt_user_no_camera_permission:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 103
    :cond_0
    :goto_0
    const-string/jumbo v0, "outverify"

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[BiometricTask] AuthContext process error code:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 104
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v0, 0x9f

    if-eq p2, v0, :cond_1

    .line 108
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfup$1$2;

    invoke-direct {v1, p0}, Lfup$1$2;-><init>(Lfup$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_1
    return-void

    .line 99
    :cond_2
    if-ne p2, v1, :cond_0

    .line 100
    sget v0, Lezg$l;->dt_user_no_front_camera:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/security/biometrics/AuthContext;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "authContext"    # Lcom/alibaba/security/biometrics/AuthContext;
    .param p2, "resultData"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 74
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lcom/alibaba/security/biometrics/AuthContext$b;)V

    .line 76
    if-eqz p2, :cond_0

    const-string/jumbo v1, "K_RESULT_DATA"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v1, "K_RESULT_DATA"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 78
    .local v0, "object":Ljava/io/Serializable;
    instance-of v1, v0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lfup$1;->a:Lfup;

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    .line 1033
    .end local v0    # "object":Ljava/io/Serializable;
    invoke-virtual {v1, v0}, Lfup;->a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)Z

    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfup$1$1;

    invoke-direct {v2, p0}, Lfup$1$1;-><init>(Lfup$1;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
