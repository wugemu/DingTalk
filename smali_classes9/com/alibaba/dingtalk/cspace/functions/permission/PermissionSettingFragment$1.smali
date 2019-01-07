.class final Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$1;
.super Ljava/lang/Object;
.source "PermissionSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_disk"

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 243
    return-void
.end method
