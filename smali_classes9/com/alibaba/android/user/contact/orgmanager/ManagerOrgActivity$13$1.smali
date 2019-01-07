.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13$1;
.super Ljava/lang/Object;
.source "ManagerOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    sget v3, Lezg$l;->chat_copy_is_success:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 1414
    return-void
.end method
