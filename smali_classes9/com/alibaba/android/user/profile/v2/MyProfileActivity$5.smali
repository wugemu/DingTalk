.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

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
    .line 607
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    .line 608
    return-void
.end method
