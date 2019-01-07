.class public final Lhxf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V
    .locals 0

    iput-object p1, p0, Lhxf;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lhxf;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxf;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;->a()V

    :cond_0
    return-void
.end method
