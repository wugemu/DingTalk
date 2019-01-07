.class final Lgrs$1$1;
.super Ljava/lang/Object;
.source "FaceBoxService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgrs$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgrs$1;


# direct methods
.method constructor <init>(Lgrs$1;)V
    .locals 0
    .param p1, "this$1"    # Lgrs$1;

    .prologue
    .line 75
    iput-object p1, p0, Lgrs$1$1;->a:Lgrs$1;

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
    .line 78
    iget-object v0, p0, Lgrs$1$1;->a:Lgrs$1;

    .line 1068
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgrs$1;->a:Z

    .line 79
    iget-object v0, p0, Lgrs$1$1;->a:Lgrs$1;

    iget-object v0, v0, Lgrs$1;->b:Lgru;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lgrs$1$1;->a:Lgrs$1;

    iget-object v0, v0, Lgrs$1;->b:Lgru;

    invoke-interface {v0}, Lgru;->a()V

    .line 82
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    invoke-static {}, Lcja;->c()V

    goto :goto_0
.end method
