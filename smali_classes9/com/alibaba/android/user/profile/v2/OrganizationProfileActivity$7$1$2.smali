.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$2;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$2;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$2;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->e(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$2;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(Ljava/util/List;)V

    .line 465
    return-void
.end method
