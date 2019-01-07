.class public final Lfii;
.super Lfif;
.source "FollowerViewHolder.java"


# instance fields
.field public k:Ljava/lang/String;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lfif;-><init>(Landroid/app/Activity;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lfif;->a(Landroid/view/View;)V

    .line 53
    sget v0, Lezg$h;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfii;->l:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 3
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lfii;->i:Lfhx;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lfii;->i:Lfhx;

    iget-object v1, p0, Lfii;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lfhx;->e(Ljava/lang/Object;)Z

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lfii;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/crminfo.html"

    new-instance v2, Lfii$1;

    invoke-direct {v2, p0, p1}, Lfii$1;-><init>(Lfii;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
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
    .line 58
    invoke-super {p0, p1, p2, p3}, Lfif;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    .line 59
    iget-object v0, p0, Lfii;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lfii;->e:Landroid/app/Activity;

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

    .line 60
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lezg$j;->item_customer_follower_employee:I

    return v0
.end method
