.class public final Lfjz;
.super Lfju;
.source "FollowerViewHolder.java"


# instance fields
.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lfju;-><init>(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lfjz;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfjz;

    .prologue
    .line 38
    iget-object v0, p0, Lfjz;->d:Lfin;

    return-object v0
.end method

.method static synthetic b(Lfjz;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfjz;

    .prologue
    .line 38
    iget-object v0, p0, Lfjz;->d:Lfin;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lfju;->a(Landroid/view/View;)V

    .line 54
    sget v0, Lezg$h;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjz;->n:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lfju;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    .line 60
    iget-object v0, p0, Lfjz;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lfjz;->a:Landroid/app/Activity;

    sget v2, Lezg$l;->item_follower_content:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 38
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1065
    iget v0, p0, Lfjz;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfjz;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lfjz;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfjz;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lfjz;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/crminfo.html"

    new-instance v2, Lfjz$1;

    invoke-direct {v2, p0, p1}, Lfjz$1;-><init>(Lfjz;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {p0, p1, p2, p3}, Lfjz;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lezg$j;->item_customer_follower_employee:I

    return v0
.end method
