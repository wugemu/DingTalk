.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$1;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
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
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    .line 179
    return-void
.end method
