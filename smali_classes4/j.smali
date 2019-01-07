.class public abstract Lj;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Li;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    new-instance v0, Lj$1;

    .line 33
    invoke-static {p2}, Lm$a;->a(Landroid/os/IBinder;)Lm;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lj$1;-><init>(Lj;Lm;Landroid/content/ComponentName;)V

    .line 32
    invoke-virtual {p0, v0}, Lj;->a(Li;)V

    .line 35
    return-void
.end method
