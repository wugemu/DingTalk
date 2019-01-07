.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Liny;

.field final synthetic e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Landroid/app/Activity;[Ljava/lang/String;ILiny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->b:[Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->c:I

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->d:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->b:[Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 276
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 283
    return-void
.end method
