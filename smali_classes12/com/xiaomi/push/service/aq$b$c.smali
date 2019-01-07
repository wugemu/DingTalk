.class public final Lcom/xiaomi/push/service/aq$b$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/aq$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/xiaomi/push/service/aq$b;

.field public final b:Landroid/os/Messenger;

.field final synthetic c:Lcom/xiaomi/push/service/aq$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/aq$b;Lcom/xiaomi/push/service/aq$b;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/aq$b$c;->c:Lcom/xiaomi/push/service/aq$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/push/service/aq$b$c;->a:Lcom/xiaomi/push/service/aq$b;

    iput-object p3, p0, Lcom/xiaomi/push/service/aq$b$c;->b:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "peer died, chid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b$c;->a:Lcom/xiaomi/push/service/aq$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b$c;->c:Lcom/xiaomi/push/service/aq$b;

    .line 1000
    iget-object v0, v0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    .line 0
    new-instance v1, Lkau;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkau;-><init>(Lcom/xiaomi/push/service/aq$b$c;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    return-void
.end method
