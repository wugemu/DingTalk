.class public abstract Lbin;
.super Ljava/lang/Object;
.source "DingNotifyCenterViewHolder.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private b:Landroid/widget/TextView;

.field protected c:Landroid/app/Activity;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lbin;->c:Landroid/app/Activity;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lbin;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbin;->d:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    sget v1, Laxp$f;->iv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbin;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 45
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    sget v1, Laxp$f;->sender_name_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbin;->b:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    sget v1, Laxp$f;->comment_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbin;->e:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    sget v1, Laxp$f;->sender_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbin;->f:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    sget v1, Laxp$f;->sender_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbin;->g:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    sget v1, Laxp$f;->line_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbin;->h:Landroid/view/View;

    .line 50
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isMultiUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    iget-object v0, p0, Lbin;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lbin;->c:Landroid/app/Activity;

    sget v2, Laxp$i;->dt_ding_notifycenter_comment_new_sender:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lbin;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected final a(JZ)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "isMultiUser"    # Z

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 60
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 61
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 62
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "localNick":Ljava/lang/String;
    iget-object v3, p0, Lbin;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1167
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 64
    iget-object v3, p0, Lbin;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxp$i;->dt_accessibility_conversation_avatar:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    invoke-direct {p0, v1, p3}, Lbin;->a(Ljava/lang/String;Z)V

    .line 72
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v1    # "localNick":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lbin;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v4, Lbin$1;

    invoke-direct {v4, p0, p1, p2}, Lbin$1;-><init>(Lbin;J)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 67
    :cond_0
    iget-object v3, p0, Lbin;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2167
    invoke-virtual {v3, v4, v6, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 68
    iget-object v3, p0, Lbin;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxp$i;->dt_accessibility_avatar:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lbin;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final a(Lbbm;)V
    .locals 3
    .param p1, "dingCommentRemindMergeData"    # Lbbm;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    iget-object v1, p0, Lbin;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :goto_0
    return-void

    .line 3032
    :cond_0
    iget-object v0, p1, Lbbm;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 96
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-nez v0, :cond_1

    .line 97
    iget-object v1, p0, Lbin;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Lbbm;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lbin;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V
    .locals 7
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "count"    # I
    .param p3, "isUnread"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "dingId":Ljava/lang/String;
    iget-object v6, p0, Lbin;->d:Landroid/view/View;

    new-instance v0, Lbin$2;

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lbin$2;-><init>(Lbin;ILjava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbin;->d:Landroid/view/View;

    return-object v0
.end method
