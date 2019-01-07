.class final Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$3;
.super Ljava/lang/Object;
.source "PermissionSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;
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
    .line 545
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 548
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 551
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Lgfn$a;->a(Ljava/lang/String;)V

    .line 552
    return-void
.end method
