.class final Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$1;
.super Ljava/lang/Object;
.source "EditManagerRoleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h()V
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
    .line 170
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->finish()V

    .line 174
    return-void
.end method
