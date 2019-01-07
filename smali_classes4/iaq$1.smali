.class final Liaq$1;
.super Landroid/content/BroadcastReceiver;
.source "IMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaq;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liaq;


# direct methods
.method constructor <init>(Liaq;)V
    .locals 0
    .param p1, "this$0"    # Liaq;

    .prologue
    .line 92
    iput-object p1, p0, Liaq$1;->a:Liaq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 95
    if-eqz p2, :cond_0

    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v0

    new-instance v1, Liaq$1$1;

    invoke-direct {v1, p0}, Liaq$1$1;-><init>(Liaq$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;)V

    .line 107
    :cond_0
    return-void
.end method
