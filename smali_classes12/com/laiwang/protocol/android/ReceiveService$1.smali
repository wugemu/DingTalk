.class Lcom/laiwang/protocol/android/ReceiveService$1;
.super Ljava/lang/Object;
.source "ReceiveService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ReceiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/ReceiveService;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ReceiveService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/ReceiveService;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/laiwang/protocol/android/ReceiveService$1;->this$0:Lcom/laiwang/protocol/android/ReceiveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    const-string/jumbo v0, "connected to %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/laiwang/protocol/android/ReceiveService$1;->this$0:Lcom/laiwang/protocol/android/ReceiveService;

    iget-object v0, v0, Lcom/laiwang/protocol/android/ReceiveService;->remoteAgent:Lcom/laiwang/protocol/android/c;

    invoke-static {p2}, Lcom/laiwang/protocol/IAidlService$a;->asInterface(Landroid/os/IBinder;)Lcom/laiwang/protocol/IAidlService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/c;->a(Lcom/laiwang/protocol/IAidlService;)V

    .line 153
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    const-string/jumbo v0, "disconnected to %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/laiwang/protocol/android/ReceiveService$1;->this$0:Lcom/laiwang/protocol/android/ReceiveService;

    iget-object v0, v0, Lcom/laiwang/protocol/android/ReceiveService;->remoteAgent:Lcom/laiwang/protocol/android/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/c;->a(Lcom/laiwang/protocol/IAidlService;)V

    .line 159
    return-void
.end method
