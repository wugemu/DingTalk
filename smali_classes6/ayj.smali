.class public final Layj;
.super Landroid/widget/BaseAdapter;
.source "EditMeetingRecorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layj$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field private d:Landroid/app/Activity;

.field private e:Lbio$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;JLayj$a;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "originRecorderId"    # J
    .param p5, "onRecorderChangedListener"    # Layj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;J",
            "Layj$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Layj;->d:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Layj;->a:Ljava/util/List;

    .line 34
    iput-wide p3, p0, Layj;->b:J

    .line 35
    iput-wide p3, p0, Layj;->c:J

    .line 37
    new-instance v0, Layj$1;

    invoke-direct {v0, p0, p5}, Layj$1;-><init>(Layj;Layj$a;)V

    iput-object v0, p0, Layj;->e:Lbio$a;

    .line 52
    return-void
.end method

.method static synthetic a(Layj;J)J
    .locals 1
    .param p0, "x0"    # Layj;
    .param p1, "x1"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Layj;->c:J

    return-wide p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Layj;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Layj;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Layj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 67
    iget-object v0, p0, Layj;->a:Ljava/util/List;

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
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    if-nez p2, :cond_2

    .line 79
    iget-object v2, p0, Layj;->d:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Laxp$g;->ding_item_edit_meeting_recorder:I

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    new-instance v0, Lbio;

    iget-object v2, p0, Layj;->e:Lbio$a;

    invoke-direct {v0, p2, v2}, Lbio;-><init>(Landroid/view/View;Lbio$a;)V

    .line 81
    .local v0, "holder":Lbio;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v2, p0, Layj;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    move v1, v3

    .line 86
    .local v1, "isLast":Z
    :goto_1
    iget-object v2, p0, Layj;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, p0, Layj;->c:J

    .line 1064
    iput-object v2, v0, Lbio;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1066
    iget-object v5, v0, Lbio;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v5, :cond_1

    .line 1070
    iget-object v5, v0, Lbio;->c:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1083
    iget-object v8, v0, Lbio;->c:Landroid/widget/CheckBox;

    iget-wide v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v5, v10, v6

    if-nez v5, :cond_4

    move v5, v3

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1087
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    .line 1088
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1089
    const-string/jumbo v5, ""

    .line 1091
    :cond_0
    iget-object v8, v0, Lbio;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v8, v5, v2, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1092
    iget-object v2, v0, Lbio;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    if-eqz v1, :cond_5

    .line 1097
    iget-object v2, v0, Lbio;->f:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    :goto_3
    iget-object v2, v0, Lbio;->c:Landroid/widget/CheckBox;

    iget-object v5, v0, Lbio;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1078
    iget-object v5, v0, Lbio;->b:Landroid/view/View;

    iget-object v2, v0, Lbio;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1079
    iget-object v2, v0, Lbio;->c:Landroid/widget/CheckBox;

    iget-object v5, v0, Lbio;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_7

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 87
    :cond_1
    return-object p2

    .line 83
    .end local v0    # "holder":Lbio;
    .end local v1    # "isLast":Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbio;

    .restart local v0    # "holder":Lbio;
    goto :goto_0

    :cond_3
    move v1, v4

    .line 85
    goto :goto_1

    .restart local v1    # "isLast":Z
    :cond_4
    move v5, v4

    .line 1083
    goto :goto_2

    .line 1099
    :cond_5
    iget-object v2, v0, Lbio;->f:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move v2, v4

    .line 1078
    goto :goto_4

    :cond_7
    move v3, v4

    .line 1079
    goto :goto_5
.end method
