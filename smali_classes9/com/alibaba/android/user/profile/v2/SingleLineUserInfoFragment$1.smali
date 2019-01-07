.class final Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;
.super Ljava/lang/Object;
.source "SingleLineUserInfoFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lfry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 255
    check-cast p1, Lfry;

    .line 1258
    if-eqz p1, :cond_0

    iget-object v0, p1, Lfry;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    .line 1259
    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;ZI)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    move-result-object v0

    .line 1263
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setDividerColor(I)V

    .line 1264
    sget v1, Lezg$g;->right_arrow:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 1265
    new-instance v1, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;Lfry;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    iget-object v1, p1, Lfry;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setTitle(Ljava/lang/String;)V

    .line 1279
    iget-object v1, p1, Lfry;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1281
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lezg$h;->personal_home_divider:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "getUserEmployeeInfo"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "organizationProfile getUserEmployeeInfo error: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 292
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 287
    return-void
.end method
