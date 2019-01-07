.class final Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;
.super Lcq;
.source "ExternalCompanyListIncludeBusinessActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .line 82
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 83
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->b(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    sget v1, Lezg$l;->tab_contact:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    sget v1, Lezg$l;->dt_contact_profile_extcontact_follow_records:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
