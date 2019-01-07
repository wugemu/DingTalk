.class final Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;
.super Ljava/lang/Object;
.source "ExternalCompanyListIncludeBusinessActivity.java"

# interfaces
.implements Ldbx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "total"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    sget v2, Lezg$l;->dt_contact_business_with_count_at:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    invoke-static {v4, p1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
