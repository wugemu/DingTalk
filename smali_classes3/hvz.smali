.class public final Lhvz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/security/biometrics/build/ak;


# direct methods
.method public constructor <init>(Lcom/alibaba/security/biometrics/build/ak;)V
    .locals 0

    iput-object p1, p0, Lhvz;->a:Lcom/alibaba/security/biometrics/build/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lhvz;->a:Lcom/alibaba/security/biometrics/build/ak;

    .line 1000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/security/biometrics/build/ak;->p:Z

    .line 0
    return-void
.end method
