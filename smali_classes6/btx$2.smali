.class public final Lbtx$2;
.super Ljava/lang/Object;
.source "GuideHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lbtx$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    iput-object p2, p0, Lbtx$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lbtx$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->dismiss()V

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/ding_live_introduce?wh_ttid=phone"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lbtx$2;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
