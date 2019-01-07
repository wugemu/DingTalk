.class Lcom/alibaba/wukong/auth/AuthExtension$AuthReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuthExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/AuthExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/auth/AuthExtension;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/AuthExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/AuthExtension;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/wukong/auth/AuthExtension$AuthReceiver;->this$0:Lcom/alibaba/wukong/auth/AuthExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    const-string/jumbo v1, "sy"

    iget-object v2, p0, Lcom/alibaba/wukong/auth/AuthExtension$AuthReceiver;->this$0:Lcom/alibaba/wukong/auth/AuthExtension;

    invoke-static {v2}, Lcom/alibaba/wukong/auth/AuthExtension;->access$000(Lcom/alibaba/wukong/auth/AuthExtension;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/wukong/WKManager;->setVersion(Ljava/lang/String;I)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.alibaba.wukong.auth.KICKOUT"

    .line 307
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    :cond_2
    const-string/jumbo v1, "sy"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/alibaba/wukong/WKManager;->setVersion(Ljava/lang/String;I)V

    goto :goto_0
.end method
