.class public final Lfgi;
.super Lfxq;
.source "CreateOrgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgi$a;,
        Lfgi$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfgi$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lfgi;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfgi;

    .prologue
    .line 41
    iget-object v0, p0, Lfgi;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lfgi;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfgi;

    .prologue
    .line 41
    iget-object v0, p0, Lfgi;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lfgi;)Lfgi$a;
    .locals 1
    .param p0, "x0"    # Lfgi;

    .prologue
    .line 41
    iget-object v0, p0, Lfgi;->a:Lfgi$a;

    return-object v0
.end method

.method static synthetic d(Lfgi;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfgi;

    .prologue
    .line 41
    iget-object v0, p0, Lfgi;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 55
    iget-object v3, p0, Lfgi;->i:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->item_org_member:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v2, Lfgi$b;

    invoke-direct {v2, p0}, Lfgi$b;-><init>(Lfgi;)V

    .line 57
    .local v2, "viewHolder":Lfgi$b;
    sget v3, Lezg$h;->tv_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v2, Lfgi$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 58
    sget v3, Lezg$h;->edit_nick:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    .line 59
    sget v3, Lezg$h;->icon_remove:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lfgi$b;->d:Landroid/widget/ImageView;

    .line 60
    sget v3, Lezg$h;->icon_edit:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lfgi$b;->c:Landroid/view/View;

    .line 61
    sget v3, Lezg$h;->divider_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lfgi$b;->e:Landroid/view/View;

    .line 62
    sget v3, Lezg$h;->divider_last_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lfgi$b;->f:Landroid/view/View;

    .line 63
    sget v3, Lezg$h;->icon_friends:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lfgi$b;->g:Landroid/view/View;

    .line 64
    iget-object v3, v2, Lfgi$b;->g:Landroid/view/View;

    new-instance v4, Lfgi$1;

    invoke-direct {v4, p0}, Lfgi$1;-><init>(Lfgi;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v3, p0, Lfgi;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 72
    .local v1, "model":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v1, :cond_1

    .line 73
    iget-object v3, v2, Lfgi$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 74
    iget-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    iget-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, v2, Lfgi$b;->b:Landroid/widget/EditText;

    .line 81
    .local v0, "etNick":Landroid/widget/EditText;
    iget-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    new-instance v4, Lfgi$2;

    invoke-direct {v4, p0, v1}, Lfgi$2;-><init>(Lfgi;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    iget-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 100
    iget-object v3, v2, Lfgi$b;->c:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v3, v2, Lfgi$b;->c:Landroid/view/View;

    new-instance v4, Lfgi$3;

    invoke-direct {v4, p0, v0}, Lfgi$3;-><init>(Lfgi;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_0
    iget-object v3, v2, Lfgi$b;->g:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_1
    iget-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v3, :cond_3

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 121
    iget-object v3, v2, Lfgi$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v3, v2, Lfgi$b;->d:Landroid/widget/ImageView;

    new-instance v4, Lfgi$4;

    invoke-direct {v4, p0, p1}, Lfgi$4;-><init>(Lfgi;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :goto_2
    iget-object v3, p0, Lfgi;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    .line 138
    iget-object v3, v2, Lfgi$b;->f:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_3
    return-object p2

    .line 76
    .end local v0    # "etNick":Landroid/widget/EditText;
    :cond_1
    iget-object v3, v2, Lfgi$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 77
    iget-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    .restart local v0    # "etNick":Landroid/widget/EditText;
    :cond_2
    iget-object v3, v2, Lfgi$b;->b:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 112
    iget-object v3, v2, Lfgi$b;->c:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, v2, Lfgi$b;->g:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v3, v2, Lfgi$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 140
    :cond_4
    iget-object v3, v2, Lfgi$b;->f:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
