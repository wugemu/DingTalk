.class final Ljdv$1;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljdv;


# direct methods
.method constructor <init>(Ljdv;)V
    .locals 0

    iput-object p1, p0, Ljdv$1;->a:Ljdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Ljdv$1;->a:Ljdv;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Ljdv;->k:Landroid/os/Messenger;

    iget-object v0, p0, Ljdv$1;->a:Ljdv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljdv;->a(Ljdv;Z)Z

    iget-object v0, p0, Ljdv$1;->a:Ljdv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljdv;->t:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljdv$1;->a:Ljdv;

    const/4 v1, 0x0

    iput-object v1, v0, Ljdv;->k:Landroid/os/Messenger;

    iget-object v0, p0, Ljdv$1;->a:Ljdv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljdv;->a(Ljdv;Z)Z

    return-void
.end method
