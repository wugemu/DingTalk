.class public final Lfcj;
.super Ljava/lang/Object;
.source "NoticePresenter.java"

# interfaces
.implements Lfci;


# instance fields
.field a:Lfci$a;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lfcj$1;

    invoke-direct {v0, p0}, Lfcj$1;-><init>(Lfcj;)V

    iput-object v0, p0, Lfcj;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfcj;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 59
    return-void
.end method

.method public final a(Lfci$a;)V
    .locals 4
    .param p1, "listener"    # Lfci$a;
    .annotation build Lcom/alibaba/android/user/connection/utils/Sync;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 51
    iput-object p1, p0, Lfcj;->a:Lfci$a;

    .line 53
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfcj;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "circle_on_receive_notice"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 54
    return-void
.end method
