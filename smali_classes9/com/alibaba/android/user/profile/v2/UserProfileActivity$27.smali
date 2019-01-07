.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 2548
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2551
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 2553
    .local v0, "menuAdapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    new-instance v1, Lcng;

    sget v2, Lezg$l;->and_cspace_menu_forward_email:I

    sget v3, Lezg$l;->and_cspace_menu_forward_email:I

    invoke-direct {v1, v2, v3}, Lcng;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 2554
    new-instance v1, Lcng;

    sget v2, Lezg$l;->copy_to_clipboard:I

    sget v3, Lezg$l;->copy_to_clipboard:I

    invoke-direct {v1, v2, v3}, Lcng;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 2556
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$27;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    .line 2557
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 2586
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2588
    return-void
.end method
