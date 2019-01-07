.class final Lfup$1$1;
.super Ljava/lang/Object;
.source "BiometricTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfup$1;->a(Lcom/alibaba/security/biometrics/AuthContext;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfup$1;


# direct methods
.method constructor <init>(Lfup$1;)V
    .locals 0
    .param p1, "this$1"    # Lfup$1;

    .prologue
    .line 85
    iput-object p1, p0, Lfup$1$1;->a:Lfup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lfup$1$1;->a:Lfup$1;

    iget-object v0, v0, Lfup$1;->a:Lfup;

    .line 1033
    iget-object v0, v0, Lfup;->e:Landroid/app/Activity;

    .line 88
    const/4 v1, 0x0

    const-string/jumbo v2, "authContext error"

    iget-object v3, p0, Lfup$1$1;->a:Lfup$1;

    iget-object v3, v3, Lfup$1;->a:Lfup;

    .line 2033
    iget-object v3, v3, Lfup;->c:Lchv;

    .line 88
    invoke-static {v0, v1, v2, v3}, Lfup;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V

    .line 89
    iget-object v0, p0, Lfup$1$1;->a:Lfup$1;

    iget-object v0, v0, Lfup$1;->a:Lfup;

    invoke-virtual {v0}, Lfup;->a()V

    .line 90
    return-void
.end method
