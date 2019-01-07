.class public final Lfbr;
.super Landroid/widget/BaseAdapter;
.source "ChannelApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfbr$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/channel/model/ChannelApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/channel/model/ChannelApplyObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/channel/model/ChannelApplyObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lfbr;->b:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lfbr;->a:Ljava/util/ArrayList;

    .line 60
    const-string/jumbo v0, "channel_apply_first_in"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lfbr;->c:Z

    .line 61
    return-void
.end method

.method static synthetic a(Lfbr;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfbr;

    .prologue
    .line 44
    iget-object v0, p0, Lfbr;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lfbr;Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V
    .locals 0
    .param p0, "x0"    # Lfbr;
    .param p1, "x1"    # Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lfbr;->a(Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V

    return-void
.end method

.method static synthetic a(Lfbr;Z)Z
    .locals 1
    .param p0, "x0"    # Lfbr;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfbr;->c:Z

    return v0
.end method

.method static synthetic b(Lfbr;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lfbr;

    .prologue
    .line 44
    iget-object v0, p0, Lfbr;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 232
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 234
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ChannelIService;
    new-instance v0, Lfbr$4;

    invoke-direct {v0, p0, p1}, Lfbr$4;-><init>(Lfbr;Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V

    .line 248
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-wide v2, p1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ChannelIService;->acceptChannelApply(JLiyv;)V

    .line 250
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lfbr;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 81
    if-nez p2, :cond_4

    .line 82
    new-instance v0, Lfbr$a;

    invoke-direct {v0, p0, v8}, Lfbr$a;-><init>(Lfbr;B)V

    .line 83
    .local v0, "holder":Lfbr$a;
    iget-object v3, p0, Lfbr;->b:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->item_channel_apply:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    sget v3, Lezg$h;->tv_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v0, Lfbr$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 85
    sget v3, Lezg$h;->tv_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lfbr$a;->b:Landroid/widget/TextView;

    .line 86
    sget v3, Lezg$h;->tv_mobile:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lfbr$a;->c:Landroid/widget/TextView;

    .line 87
    sget v3, Lezg$h;->tv_remark:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lfbr$a;->d:Landroid/widget/TextView;

    .line 88
    sget v3, Lezg$h;->btn_action:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    .line 89
    sget v3, Lezg$h;->tv_action:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    .line 90
    sget v3, Lezg$h;->divider_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lfbr$a;->g:Landroid/view/View;

    .line 91
    sget v3, Lezg$h;->layout_item_org_apply_tip:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lfbr$a;->h:Landroid/view/View;

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v3, p0, Lfbr;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    .line 97
    .local v1, "model":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    iget v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v3, v4, :cond_0

    .line 98
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    sget v4, Lezg$l;->action_agree:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    iget-object v4, p0, Lfbr;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 102
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    iget-object v4, p0, Lfbr;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$g;->btn_empty_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lfbr;->b:Landroid/app/Activity;

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    :cond_0
    iget v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v3, v4, :cond_1

    .line 106
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    sget v4, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :cond_1
    iget v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v3, v4, :cond_2

    .line 111
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    sget v4, Lezg$l;->hint_reject:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :cond_2
    iget v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v3, v4, :cond_3

    .line 116
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v3, v0, Lfbr$a;->f:Landroid/widget/TextView;

    sget v4, Lezg$l;->hint_shield:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :cond_3
    iget-object v3, v0, Lfbr$a;->e:Landroid/widget/Button;

    new-instance v4, Lfbr$1;

    invoke-direct {v4, p0, v1}, Lfbr$1;-><init>(Lfbr;Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v3, v0, Lfbr$a;->b:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, v0, Lfbr$a;->c:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, v0, Lfbr$a;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lfbr;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->dt_channel_apply_channel_name:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lfbr;->b:Landroid/app/Activity;

    sget v5, Lezg$l;->my_local_contact:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lfbr;->d:Ljava/lang/String;

    .line 151
    iget-object v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v4, p0, Lfbr;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    iget-object v4, v0, Lfbr$a;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, v0, Lfbr$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lfbr;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3, v4, v5, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 158
    :goto_2
    new-instance v3, Lfbr$2;

    invoke-direct {v3, p0, v1, p1}, Lfbr$2;-><init>(Lfbr;Lcom/alibaba/android/user/channel/model/ChannelApplyObject;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v3, Lfbr$3;

    invoke-direct {v3, p0, p1, v1}, Lfbr$3;-><init>(Lfbr;ILcom/alibaba/android/user/channel/model/ChannelApplyObject;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    iget-boolean v3, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isRead:Z

    if-nez v3, :cond_7

    .line 214
    sget v3, Lezg$g;->list_item_common_unread_selector:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    :goto_3
    if-nez p1, :cond_8

    iget-boolean v3, p0, Lfbr;->c:Z

    if-eqz v3, :cond_8

    .line 221
    iget-object v3, v0, Lfbr$a;->h:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v3, v0, Lfbr$a;->h:Landroid/view/View;

    sget v4, Lezg$h;->small_text_tip_textview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 223
    .local v2, "textView":Landroid/widget/TextView;
    sget v3, Lezg$l;->org_apply_first_in_hint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    .end local v2    # "textView":Landroid/widget/TextView;
    :goto_4
    return-object p2

    .line 94
    .end local v0    # "holder":Lfbr$a;
    .end local v1    # "model":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbr$a;

    .restart local v0    # "holder":Lfbr$a;
    goto/16 :goto_0

    .line 152
    .restart local v1    # "model":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lfbr;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 156
    :cond_6
    iget-object v3, v0, Lfbr$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3, v4, v5, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 216
    :cond_7
    sget v3, Lezg$g;->list_item_common_white_selector:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 225
    :cond_8
    iget-object v3, v0, Lfbr$a;->h:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method
