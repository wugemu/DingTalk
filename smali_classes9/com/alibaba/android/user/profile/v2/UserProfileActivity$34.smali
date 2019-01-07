.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 808
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 811
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 746
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 746
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    invoke-static {p1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1749
    if-eqz v0, :cond_3

    .line 1750
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1751
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    sget v1, Lezg$h;->calendar_circle_stub:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1752
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/view/View;)Landroid/view/View;

    .line 1753
    const-string/jumbo v0, "pref_key_user_shared_calendar_hint"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1798
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1801
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
