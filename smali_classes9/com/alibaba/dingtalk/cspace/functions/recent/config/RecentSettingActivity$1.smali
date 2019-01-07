.class final Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity$1;
.super Ljava/lang/Object;
.source "RecentSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;)Lgge$a;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lgge$a;->a(Z)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
