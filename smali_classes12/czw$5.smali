.class final Lczw$5;
.super Ljava/lang/Object;
.source "UserSpaceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lczw;


# direct methods
.method constructor <init>(Lczw;)V
    .locals 0
    .param p1, "this$0"    # Lczw;

    .prologue
    .line 387
    iput-object p1, p0, Lczw$5;->a:Lczw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://pages.dingtalk.com/wow/dingtalk/16120/usepc?lwfrom=20160506122818792"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lczw$5;->a:Lczw;

    iget-object v2, v2, Lczw;->d:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 393
    return-void
.end method
