.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;
.super Ljava/lang/Object;
.source "MiniappOpenAppPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Liny;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;Ljava/util/List;Landroid/content/Context;Liny;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->c:Liny;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 162
    .local v1, "nameArr":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [I

    aput v5, v0, v5

    .line 163
    .local v0, "chooseIndex":[I
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->b:Landroid/content/Context;

    sget v4, Lhdn$k;->dt_contact_smart_device_choose_org_title:I

    .line 164
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->a:Ljava/util/List;

    .line 165
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$3;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;[I)V

    invoke-virtual {v3, v2, v5, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lhdn$k;->cancel:I

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$2;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;)V

    .line 171
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lhdn$k;->sure:I

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;[I)V

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 185
    return-void
.end method
