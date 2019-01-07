.class public final Lbxq;
.super Landroid/widget/BaseAdapter;
.source "LiveDetailsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxq$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stat"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lbxq;->b:Landroid/content/Context;

    .line 36
    iput p2, p0, Lbxq;->c:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbxq;->a:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbxq;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbxq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbxq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lbxq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 92
    if-nez p2, :cond_1

    .line 93
    iget-object v6, p0, Lbxq;->b:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lbtp$f;->item_live_details:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v5, Lbxq$a;

    const/4 v6, 0x0

    invoke-direct {v5, p2, v6}, Lbxq$a;-><init>(Landroid/view/View;B)V

    .line 1171
    .local v5, "viewHolder":Lbxq$a;
    iget-object v6, v5, Lbxq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 95
    invoke-virtual {v6, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lbxq;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;

    .line 101
    .local v1, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 102
    iget v6, p0, Lbxq;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 103
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->playDuration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 2171
    iget-object v6, v5, Lbxq$a;->a:Landroid/view/View;

    .line 104
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_1
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->playRecordDuration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 5171
    iget-object v6, v5, Lbxq$a;->b:Landroid/view/View;

    .line 110
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_2
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->openId:J

    .line 10171
    .local v2, "uid":J
    iget-object v6, v5, Lbxq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 123
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v4, :cond_5

    .line 11171
    iget-object v6, v5, Lbxq$a;->e:Landroid/widget/TextView;

    .line 124
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12171
    iget-object v6, v5, Lbxq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 125
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 13167
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 155
    .end local v2    # "uid":J
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    :goto_3
    return-object p2

    .line 98
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;
    .end local v5    # "viewHolder":Lbxq$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbxq$a;

    .restart local v5    # "viewHolder":Lbxq$a;
    goto :goto_0

    .line 3171
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;
    :cond_2
    iget-object v6, v5, Lbxq$a;->a:Landroid/view/View;

    .line 106
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4171
    iget-object v6, v5, Lbxq$a;->c:Landroid/widget/TextView;

    .line 107
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->playDuration:J

    invoke-static {v8, v9}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->parseAppointmentTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6171
    :cond_3
    iget-object v6, v5, Lbxq$a;->b:Landroid/view/View;

    .line 112
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7171
    iget-object v6, v5, Lbxq$a;->d:Landroid/widget/TextView;

    .line 113
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->playRecordDuration:J

    invoke-static {v8, v9}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->parseAppointmentTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8171
    :cond_4
    iget-object v6, v5, Lbxq$a;->a:Landroid/view/View;

    .line 116
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 9171
    iget-object v6, v5, Lbxq$a;->b:Landroid/view/View;

    .line 117
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 13171
    .restart local v2    # "uid":J
    .restart local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    iget-object v6, v5, Lbxq$a;->e:Landroid/widget/TextView;

    .line 127
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14171
    iget-object v6, v5, Lbxq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 128
    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    .line 15167
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 129
    new-instance v0, Lbxq$1;

    invoke-direct {v0, p0, v2, v3, v5}, Lbxq$1;-><init>(Lbxq;JLbxq$a;)V

    .line 148
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v6, p0, Lbxq;->b:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 149
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    const-class v8, Lcma;

    iget-object v6, p0, Lbxq;->b:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-interface {v7, v0, v8, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 152
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_3
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 161
    .local v0, "id":I
    sget v1, Lbtp$e;->iv_avatar:I

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 164
    .local v2, "uid":J
    iget-object v1, p0, Lbxq;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v1, p0, Lbxq;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v4, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 169
    .end local v2    # "uid":J
    :cond_0
    return-void
.end method
