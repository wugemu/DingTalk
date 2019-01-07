.class public Lfiz;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "CrmContactViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Landroid/widget/CheckBox;

.field public k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lfiz;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfiz;

    .prologue
    .line 44
    iget-object v0, p0, Lfiz;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lfiz;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfiz;

    .prologue
    .line 44
    iget-object v0, p0, Lfiz;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfiz;->j:Landroid/widget/CheckBox;

    .line 70
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfiz;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 71
    sget v0, Lezg$h;->tv_contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfiz;->l:Landroid/widget/TextView;

    .line 72
    sget v0, Lezg$h;->tv_contact_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfiz;->m:Landroid/widget/TextView;

    .line 73
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfiz;->n:Landroid/view/View;

    .line 74
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V
    .locals 2
    .param p1, "crmContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 113
    .line 114
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 115
    .local v0, "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lfiz;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfiz;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 116
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lfiz;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;ILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "crmContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 79
    iget-object v2, p0, Lfiz;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v3, v4, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 82
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lfiz;->l:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->name:Ljava/lang/String;

    .line 1106
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1107
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->customerName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lfiz;->m:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->customerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-object v2, p0, Lfiz;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 91
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    .local v0, "avatarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lfiz;->n:Landroid/view/View;

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .local v1, "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lfiz;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfiz;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 95
    :cond_2
    iget-object v2, p0, Lfiz;->m:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v2, p0, Lfiz;->a:Landroid/app/Activity;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v2, p0, Lfiz;->a:Landroid/app/Activity;

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_3
    iget-object v2, p0, Lfiz;->m:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lfiz;->a:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 101
    iget-object v2, p0, Lfiz;->a:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-virtual {p0, p1}, Lfiz;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-virtual {p0, p1, p2, p3}, Lfiz;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V
    .locals 6
    .param p1, "crmContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 128
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lfiz$1;

    invoke-direct {v0, p0}, Lfiz$1;-><init>(Lfiz;)V

    .line 155
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v1, p0, Lfiz;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 156
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfiz;->a:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 158
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lfac;->a(JLcma;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lezg$j;->item_common_contact:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method
