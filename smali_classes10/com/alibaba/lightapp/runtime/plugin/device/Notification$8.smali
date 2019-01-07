.class Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->showActionMenu(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

.field final synthetic val$callbackName:Ljava/lang/String;

.field final synthetic val$cancel:Ljava/lang/String;

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$cancel:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$callbackName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$items:[Ljava/lang/String;

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
    .line 363
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$title:Ljava/lang/String;

    .line 1205
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 364
    .local v0, "actionMenuDialog":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$cancel:Ljava/lang/String;

    .line 1213
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->b:Ljava/lang/String;

    .line 365
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;)V

    .line 1245
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;->val$items:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 379
    .local v1, "item":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .local v2, "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 1585
    iput-object v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 381
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 384
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8$2;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;)V

    .line 2250
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->c:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    .line 396
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    .line 397
    return-void
.end method
