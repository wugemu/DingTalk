.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$9;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$9;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 536
    const-string/jumbo v0, "userprofile_exit_org_cancel_btn_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 537
    return-void
.end method
