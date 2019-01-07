.class final Lcom/alibaba/android/rimet/RimetDDContext$37;
.super Landroid/content/BroadcastReceiver;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->registerConnectivityReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$37;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3216
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3217
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$37;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->access$900(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 3221
    :cond_0
    return-void
.end method
