.class public final Lcvv;
.super Lcqr;
.source "GroupAdminAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcvv$b;,
        Lcvv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcvv$a;

.field public e:Landroid/view/View;

.field private f:I

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "roleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcqr;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 41
    iput p3, p0, Lcvv;->f:I

    .line 1056
    iget-object v0, p0, Lcvv;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1057
    sget v1, Lctk$g;->layout_group_admin_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcvv;->e:Landroid/view/View;

    .line 1058
    iget v0, p0, Lcvv;->f:I

    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1059
    iget-object v0, p0, Lcvv;->e:Landroid/view/View;

    sget v1, Lctk$f;->rl_add_admin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    new-instance v1, Lcvv$1;

    invoke-direct {v1, p0}, Lcvv$1;-><init>(Lcvv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcvv;->e:Landroid/view/View;

    sget v1, Lctk$f;->tv_admin_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvv;->g:Landroid/widget/TextView;

    .line 1071
    sget v0, Lctk$i;->dt_im_conversation_admin_power_about:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "https://h5.dingtalk.com/pc-online/index.html?dtaction=os&showmenu=false"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1072
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v0, p0, Lcvv;->g:Landroid/widget/TextView;

    invoke-static {v1, v0}, Ldjt;->a(Landroid/text/Spannable;Landroid/view/View;)V

    .line 1074
    iget-object v0, p0, Lcvv;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcvv;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 43
    return-void
.end method

.method private a(I)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcvv;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v1, p0, Lcvv;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcvv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    goto :goto_0
.end method

.method static synthetic a(Lcvv;)Lcvv$a;
    .locals 1
    .param p0, "x0"    # Lcvv;

    .prologue
    .line 32
    iget-object v0, p0, Lcvv;->d:Lcvv$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4113
    if-eqz p1, :cond_0

    .line 4114
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4116
    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 79
    iget-object v0, p0, Lcvv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcvv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Lcvv;->notifyDataSetChanged()V

    .line 83
    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "object":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v0, p0, Lcvv;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcvv;->a:Ljava/util/List;

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcvv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-virtual {p0}, Lcvv;->notifyDataSetChanged()V

    .line 93
    :cond_1
    return-void
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcvv;->a(I)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p2, :cond_1

    .line 123
    new-instance v1, Lcvv$b;

    iget-object v2, p0, Lcvv;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcvv$b;-><init>(Lcvv;Landroid/content/Context;)V

    .line 1166
    .local v1, "viewHolder":Lcvv$b;
    iget-object v2, v1, Lcvv$b;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lctk$g;->layout_group_admin_item:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1167
    .end local p2    # "convertView":Landroid/view/View;
    sget v2, Lctk$f;->avatar_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v1, Lcvv$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1168
    sget v2, Lctk$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcvv$b;->c:Landroid/widget/TextView;

    .line 1169
    sget v2, Lctk$f;->btn_remove_admin:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcvv$b;->d:Landroid/widget/TextView;

    .line 125
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_0
    invoke-direct {p0, p1}, Lcvv;->a(I)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 131
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v0, :cond_2

    .line 142
    :cond_0
    :goto_1
    return-object p2

    .line 127
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v1    # "viewHolder":Lcvv$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcvv$b;

    .restart local v1    # "viewHolder":Lcvv$b;
    goto :goto_0

    .line 1178
    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-wide v4, v1, Lcvv$b;->f:J

    .line 134
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 138
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2174
    iput-wide v4, v1, Lcvv$b;->f:J

    .line 139
    iget v2, p0, Lcvv;->f:I

    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v4

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    .line 3162
    :goto_2
    iput-boolean v2, v1, Lcvv$b;->e:Z

    .line 3182
    if-eqz v0, :cond_0

    .line 3185
    iget-object v2, v1, Lcvv$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    iget-object v2, v1, Lcvv$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3187
    iget-object v2, v1, Lcvv$b;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3188
    iget-boolean v2, v1, Lcvv$b;->e:Z

    if-eqz v2, :cond_4

    .line 3189
    iget-object v2, v1, Lcvv$b;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 139
    goto :goto_2

    .line 3191
    :cond_4
    iget-object v2, v1, Lcvv$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3192
    iget-object v2, v1, Lcvv$b;->d:Landroid/widget/TextView;

    new-instance v3, Lcvv$b$1;

    invoke-direct {v3, v1, v0}, Lcvv$b$1;-><init>(Lcvv$b;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
