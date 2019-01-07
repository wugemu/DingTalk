.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->addDesktopShortcuts(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$appId:J

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$appId:J

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$corpId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3550
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3553
    .local v0, "addIntent":Landroid/content/Intent;
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$appId:J

    const-wide/16 v6, 0x9e

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 3554
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$g;->shortcut_attendance_icon:I

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 3559
    .local v1, "iconRes":Landroid/content/Intent$ShortcutIconResource;
    :goto_0
    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3560
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3561
    const-string/jumbo v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3563
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3564
    .local v2, "openIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3565
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3566
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3567
    const-string/jumbo v3, "corp_id"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$corpId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3568
    const-string/jumbo v3, "intent_key_transfer_type"

    const-string/jumbo v4, "transfer_type_shortcut"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3569
    const-string/jumbo v3, "intent_key_app_id"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$appId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3571
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3573
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$name:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lhrm;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3574
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v4, -0x1

    const-string/jumbo v5, "shortcut exist"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3579
    :goto_1
    return-void

    .line 3557
    .end local v1    # "iconRes":Landroid/content/Intent$ShortcutIconResource;
    .end local v2    # "openIntent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$g;->shortcut_attendance_icon:I

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .restart local v1    # "iconRes":Landroid/content/Intent$ShortcutIconResource;
    goto/16 :goto_0

    .line 3576
    .restart local v2    # "openIntent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->val$callbackId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    .line 3577
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$28;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$9700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
