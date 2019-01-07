.class public final Lhxo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/face/auth/widget/Circle;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)V
    .locals 0

    iput-object p1, p0, Lhxo;->a:Lcom/alibaba/security/biometrics/face/auth/widget/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lhxo;->a:Lcom/alibaba/security/biometrics/face/auth/widget/Circle;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->a(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxo;->a:Lcom/alibaba/security/biometrics/face/auth/widget/Circle;

    invoke-static {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/Circle;->b(Lcom/alibaba/security/biometrics/face/auth/widget/Circle;)V

    :cond_0
    return-void
.end method
