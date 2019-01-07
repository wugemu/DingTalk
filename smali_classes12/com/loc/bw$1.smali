.class final Lcom/loc/bw$1;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bw;


# direct methods
.method constructor <init>(Lcom/loc/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/bw;->c:Z

    iget-object v0, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw;

    invoke-static {p2}, Ljea$a;->a(Landroid/os/IBinder;)Ljea;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lcom/loc/bw;Ljea;)Ljea;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/bw;->c:Z

    iget-object v0, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lcom/loc/bw;Ljea;)Ljea;

    return-void
.end method
