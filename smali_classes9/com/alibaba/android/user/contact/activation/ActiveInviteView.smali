.class public Lcom/alibaba/android/user/contact/activation/ActiveInviteView;
.super Landroid/widget/LinearLayout;
.source "ActiveInviteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lffw;


# instance fields
.field public a:Z

.field private b:J

.field private c:J

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageView;

.field private g:Lffx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->c()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->c()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->c()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activation/ActiveInviteView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activation/ActiveInviteView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activation/ActiveInviteView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->c:J

    return-wide v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getLayout()I

    move-result v2

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "root":Landroid/view/View;
    sget v1, Lezg$h;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->d:Landroid/widget/TextView;

    .line 84
    sget v1, Lezg$h;->tv_subTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->e:Landroid/widget/Button;

    .line 85
    sget v1, Lezg$h;->iv_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->f:Landroid/widget/ImageView;

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->e:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v1, Lffx;

    invoke-direct {v1, v4, v5, v4, v5}, Lffx;-><init>(JJ)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 1075
    iput-object p0, v1, Lffx;->f:Lffw;

    .line 91
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 10
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 201
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->setVisibility(I)V

    .line 203
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    .line 227
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_5

    .line 205
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 206
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 208
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    add-int/lit8 v0, v0, -0x1

    .line 209
    if-eqz v1, :cond_2

    .line 212
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 213
    if-eqz v0, :cond_2

    .line 214
    const-string/jumbo v3, "\u3001"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 212
    :cond_3
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_2

    .line 217
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->active_invite_text_less:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->e:Landroid/widget/Button;

    sget v4, Lezg$l;->active_invite_now:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 219
    invoke-virtual {p0, v8}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->setVisibility(I)V

    .line 220
    iput-boolean v9, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    goto :goto_0

    .line 222
    .end local v0    # "count":I
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->active_invite_text_more:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->e:Landroid/widget/Button;

    sget v4, Lezg$l;->active_invite_member_list:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 224
    invoke-virtual {p0, v8}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->setVisibility(I)V

    .line 225
    iput-boolean v9, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 0
    .param p1, "shareTitle"    # Ljava/lang/String;
    .param p2, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .prologue
    .line 197
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public final a(JJ)Z
    .locals 11
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->b:J

    .line 128
    cmp-long v0, p3, v8

    if-lez v0, :cond_2

    .end local p3    # "deptId":J
    :goto_0
    iput-wide p3, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->c:J

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->b:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->c:J

    .line 3084
    iput-wide v4, v0, Lffx;->b:J

    .line 3085
    iput-wide v6, v0, Lffx;->c:J

    .line 131
    cmp-long v0, p1, v8

    if-lez v0, :cond_6

    .line 3160
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "pref_key_close_active_view"

    invoke-static {v0, v3, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 3192
    iget-wide v6, v4, Lffx;->b:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    .line 3196
    const/4 v3, 0x0

    .line 3197
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 3198
    if-eqz v0, :cond_7

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 3199
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3200
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v8, v4, Lffx;->b:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 3208
    :goto_1
    if-eqz v0, :cond_5

    .line 3212
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/16 v5, 0x64

    if-eq v3, v5, :cond_1

    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    if-eq v3, v1, :cond_1

    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 3215
    :cond_1
    iput-boolean v1, v4, Lffx;->e:Z

    move v0, v1

    .line 131
    :goto_2
    if-eqz v0, :cond_6

    .line 132
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 4089
    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Lffx;->a(ZI)V

    .line 140
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    :goto_3
    return v0

    .line 128
    .restart local p3    # "deptId":J
    :cond_2
    const-wide/16 p3, -0x1

    goto :goto_0

    .line 3219
    .end local p3    # "deptId":J
    :cond_3
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3220
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3222
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v5, :cond_4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v8, v4, Lffx;->c:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    move v0, v1

    .line 3223
    goto :goto_2

    :cond_5
    move v0, v2

    .line 3227
    goto :goto_2

    .line 134
    :cond_6
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    .line 135
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->setVisibility(I)V

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lezg$j;->view_layout_active_invite:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_subTitle:I

    if-ne v1, v2, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 97
    .local v0, "navigator":Lcom/alibaba/doraemon/navigator/Navigator;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/active_invite.html"

    new-instance v3, Lcom/alibaba/android/user/contact/activation/ActiveInviteView$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView$1;-><init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteView;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 1300
    iget-boolean v1, v1, Lffx;->e:Z

    .line 105
    if-eqz v1, :cond_1

    .line 106
    const-string/jumbo v1, "contact_invitebanner_manager_invite_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 118
    .end local v0    # "navigator":Lcom/alibaba/doraemon/navigator/Navigator;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v0    # "navigator":Lcom/alibaba/doraemon/navigator/Navigator;
    :cond_1
    const-string/jumbo v1, "contact_invitebanner_staff_invite_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0    # "navigator":Lcom/alibaba/doraemon/navigator/Navigator;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->iv_close_button:I

    if-ne v1, v2, :cond_0

    .line 2164
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2165
    sget v2, Lezg$l;->active_invite_close_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2166
    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activation/ActiveInviteView$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView$2;-><init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteView;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2175
    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2176
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 2300
    iget-boolean v1, v1, Lffx;->e:Z

    .line 112
    if-eqz v1, :cond_3

    .line 113
    const-string/jumbo v1, "contact_invitebanner_manager_cancel_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    const-string/jumbo v1, "contact_invitebanner_staff_cancel_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->g:Lffx;

    .line 5080
    const/4 v1, 0x0

    iput-object v1, v0, Lffx;->f:Lffw;

    .line 235
    :cond_0
    return-void
.end method
