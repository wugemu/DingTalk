.class final Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartisanHomeBadger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;


# direct methods
.method constructor <init>(Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;)V
    .locals 0
    .param p1, "this$0"    # Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;

    .prologue
    .line 46
    iput-object p1, p0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger$1;->a:Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    const-string/jumbo v1, "com.smartisanos.launcher.clear_message"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string/jumbo v1, "extra_component_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "componentList":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger$1;->a:Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;

    invoke-static {v1}, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->a(Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger$1;->a:Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->executeBadge(I)V

    .line 55
    .end local v0    # "componentList":Ljava/lang/String;
    :cond_0
    return-void
.end method
