.class public final Lfvi;
.super Ljava/lang/Object;
.source "ClipboardMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lfvi;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lfvi;->b:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 22
    return-void
.end method

.method static synthetic a(Lfvi;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 1
    .param p0, "x0"    # Lfvi;

    .prologue
    .line 14
    iget-object v0, p0, Lfvi;->b:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    return-object v0
.end method

.method static synthetic b(Lfvi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfvi;

    .prologue
    .line 14
    iget-object v0, p0, Lfvi;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 26
    iget-object v1, p0, Lfvi;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 27
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lfvi;->a:Landroid/content/Context;

    sget v3, Lezg$l;->copy_to_clipboard:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 28
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfvi;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lfvi$1;

    invoke-direct {v2, p0}, Lfvi$1;-><init>(Lfvi;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 38
    .end local v0    # "items":[Ljava/lang/String;
    :cond_0
    return-void
.end method
