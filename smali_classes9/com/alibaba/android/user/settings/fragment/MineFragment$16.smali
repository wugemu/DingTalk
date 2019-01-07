.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$16;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$16;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1611
    const-string/jumbo v0, "intent_key_sw_person_data"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$16;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/model/SWPersonObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1612
    const-string/jumbo v0, "intent_key_mine_new_version"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$16;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1613
    return-object p1
.end method
