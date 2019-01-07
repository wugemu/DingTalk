.class public final Lhvv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/security/biometrics/build/ak;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/ak;I)V
    .locals 0

    iput-object p1, p0, Lhvv;->b:Lcom/alibaba/security/biometrics/build/ak;

    iput p2, p0, Lhvv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvv;->b:Lcom/alibaba/security/biometrics/build/ak;

    iget-object v0, v0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    iget v1, p0, Lhvv;->a:I

    invoke-interface {v0, v1}, Lcom/alibaba/security/biometrics/build/ak$b;->a(I)V

    return-void
.end method
