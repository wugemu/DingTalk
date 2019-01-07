.class public abstract Lfgg;
.super Landroid/widget/BaseAdapter;
.source "BaseSimpleContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgg$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/app/Activity;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfgg;->d:Z

    .line 53
    iput-object p1, p0, Lfgg;->b:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method static synthetic a(Lfgg;)V
    .locals 1
    .param p0, "x0"    # Lfgg;

    .prologue
    .line 38
    .line 1218
    iget-object v0, p0, Lfgg;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lfgg;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1220
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;Lfgg$a;)V
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Lfgg$a;Landroid/view/ViewGroup;)V
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lfgg;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfgg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lfgg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/16 v6, 0x23

    .line 98
    if-nez p2, :cond_0

    .line 99
    new-instance v1, Lfgg$a;

    invoke-direct {v1, p0}, Lfgg$a;-><init>(Lfgg;)V

    .line 100
    .local v1, "holder":Lfgg$a;
    iget-object v3, p0, Lfgg;->b:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lfgg;->a()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    sget v3, Lezg$h;->tv_letter:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    .line 102
    sget v3, Lezg$h;->tv_contact_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfgg$a;->c:Landroid/widget/TextView;

    .line 103
    sget v3, Lezg$h;->tv_ding_nick:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfgg$a;->g:Landroid/widget/TextView;

    .line 104
    sget v3, Lezg$h;->tv_contact_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfgg$a;->d:Landroid/widget/TextView;

    .line 105
    sget v3, Lezg$h;->tv_org_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfgg$a;->e:Landroid/widget/TextView;

    .line 106
    sget v3, Lezg$h;->divider_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lfgg$a;->f:Landroid/view/View;

    .line 107
    sget v3, Lezg$h;->tv_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v1, Lfgg$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 108
    invoke-virtual {p0, p2, v1}, Lfgg;->a(Landroid/view/View;Lfgg$a;)V

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    iget-object v3, p0, Lfgg;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 115
    .local v0, "contactModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-nez v0, :cond_1

    .line 147
    :goto_1
    return-object p2

    .line 111
    .end local v0    # "contactModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v1    # "holder":Lfgg$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfgg$a;

    .restart local v1    # "holder":Lfgg$a;
    goto :goto_0

    .line 118
    .restart local v0    # "contactModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_1
    if-lez p1, :cond_3

    .line 119
    iget-object v3, p0, Lfgg;->a:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 120
    .local v2, "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    invoke-static {v3, v6}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 121
    invoke-static {v4, v6}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    if-eq v3, v4, :cond_2

    .line 123
    iget-boolean v3, p0, Lfgg;->d:Z

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 126
    invoke-static {v4, v6}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    .line 125
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v2    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :goto_2
    invoke-virtual {p0, v0, v1, p3}, Lfgg;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Lfgg$a;Landroid/view/ViewGroup;)V

    .line 140
    new-instance v3, Lfgg$1;

    invoke-direct {v3, p0, v0}, Lfgg$1;-><init>(Lfgg;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 128
    .restart local v2    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_2
    iget-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 130
    .end local v2    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_3
    iget-boolean v3, p0, Lfgg;->d:Z

    if-eqz v3, :cond_4

    .line 131
    iget-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 133
    invoke-static {v4, v6}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    .line 132
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 135
    :cond_4
    iget-object v3, v1, Lfgg$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    return v0
.end method
