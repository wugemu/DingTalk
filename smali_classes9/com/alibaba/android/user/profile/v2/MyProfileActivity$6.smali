.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;ILcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iput p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;->b:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 649
    const-string/jumbo v0, "contact_org_profile_auth_click"

    const-string/jumbo v1, "org_auth_level=%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1315
    invoke-static {v7, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "https://h5.dingtalk.com/orgAuthRights/index.html?lwfrom=orgAuthRights&orgId="

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;->b:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method
