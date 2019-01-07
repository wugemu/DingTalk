.class final Ldjl$2;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic c:[I

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;[ILcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 1262
    iput-object p1, p0, Ldjl$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldjl$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iput-object p3, p0, Ldjl$2;->c:[I

    iput-object p4, p0, Ldjl$2;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1265
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Ldjl$2;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lctk$i;->conver_to_enterprise_group_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Ldjl$2$2;

    invoke-direct {v2, p0}, Ldjl$2$2;-><init>(Ldjl$2;)V

    .line 1266
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->sure:I

    new-instance v2, Ldjl$2$1;

    invoke-direct {v2, p0}, Ldjl$2$1;-><init>(Ldjl$2;)V

    .line 1271
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1279
    return-void
.end method
