.class final Lhee$1;
.super Ljava/lang/Object;
.source "FloatActionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhee;


# direct methods
.method constructor <init>(Lhee;)V
    .locals 0
    .param p1, "this$0"    # Lhee;

    .prologue
    .line 54
    iput-object p1, p0, Lhee$1;->a:Lhee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 62
    instance-of v0, p2, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lhee$1;->a:Lhee;

    check-cast p2, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;

    .line 1047
    .end local p2    # "service":Landroid/os/IBinder;
    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService$a;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .line 2022
    iput-object v1, v0, Lhee;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .line 64
    iget-object v0, p0, Lhee$1;->a:Lhee;

    .line 3022
    iget-object v0, v0, Lhee;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lhee$1;->a:Lhee;

    .line 4022
    iget-object v0, v0, Lhee;->b:Lheg;

    .line 65
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;->a(Lheg;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 58
    return-void
.end method
