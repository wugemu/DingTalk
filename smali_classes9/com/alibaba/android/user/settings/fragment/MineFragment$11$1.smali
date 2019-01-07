.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$11$1;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/fragment/MineFragment$11;

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$11$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment$11;

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
    .line 1421
    const-string/jumbo v0, "appId"

    const-string/jumbo v1, "2018091361350429"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    const-string/jumbo v0, "page"

    const-string/jumbo v1, "pages/cardholder/cardholder"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    return-object p1
.end method
