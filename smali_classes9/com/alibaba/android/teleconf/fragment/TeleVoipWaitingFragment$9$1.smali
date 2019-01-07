.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1764
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_voip_battery_too_low:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, "batteryStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)V

    .line 1766
    return-void
.end method
