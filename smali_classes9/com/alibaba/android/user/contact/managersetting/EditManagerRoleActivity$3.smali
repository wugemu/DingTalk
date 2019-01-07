.class final Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;
.super Ljava/lang/Object;
.source "EditManagerRoleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)Lfhn$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)Lfhn$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->roleId:J

    invoke-interface {v0, v2, v3, v4, v5}, Lfhn$a;->a(JJ)V

    .line 247
    :cond_0
    return-void
.end method
