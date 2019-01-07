.class public final Leed;
.super Ljava/lang/Object;
.source "DetailUniformGridViewAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leed$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 4
    .param p2, "totalSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Leed;->b:Ljava/util/List;

    .line 59
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ledz$d;->attendance_detail_avatar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 60
    .local v1, "avatarSize":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ledz$d;->attendance_detail_avatar_min_space:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 61
    .local v0, "avatarMinSpace":I
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int v3, v1, v0

    div-int/2addr v2, v3

    iput v2, p0, Leed;->c:I

    .line 63
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_0

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Leed;->d:Z

    .line 65
    iget-object v2, p0, Leed;->b:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Leed;->c:I

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "oldView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 83
    if-nez p3, :cond_9

    .line 84
    iget v5, p0, Leed;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_7

    .line 85
    iget-object v5, p0, Leed;->a:Landroid/app/Activity;

    if-eqz v5, :cond_6

    iget-object v5, p0, Leed;->a:Landroid/app/Activity;

    :goto_0
    sget v6, Ledz$g;->activity_attendance_avatar_omit:I

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 89
    .local v4, "view":Landroid/view/View;
    :goto_1
    new-instance v1, Leed$a;

    invoke-direct {v1, p0, v4}, Leed$a;-><init>(Leed;Landroid/view/View;)V

    .line 90
    .local v1, "holder":Leed$a;
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_2
    iget-object v5, p0, Leed;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_d

    .line 96
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-boolean v5, p0, Leed;->d:Z

    if-nez v5, :cond_0

    iget v5, p0, Leed;->c:I

    add-int/lit8 v5, v5, -0x1

    if-lt p1, v5, :cond_1

    iget v5, p0, Leed;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_0

    iget v5, p0, Leed;->c:I

    iget-object v6, p0, Leed;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    iget-boolean v5, p0, Leed;->d:Z

    if-eqz v5, :cond_c

    iget v5, p0, Leed;->c:I

    add-int/lit8 v5, v5, -0x1

    if-lt p1, v5, :cond_1

    iget-object v5, p0, Leed;->b:Ljava/util/List;

    .line 98
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_c

    .line 99
    :cond_1
    iget-object v5, p0, Leed;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 100
    .local v2, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    const/4 v3, 0x0

    .line 101
    .local v3, "nick":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 102
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v5, :cond_a

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 103
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 108
    :cond_2
    :goto_3
    const/4 v0, 0x0

    .line 109
    .local v0, "avatarUrl":Ljava/lang/String;
    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_3

    .line 111
    :try_start_0
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :cond_3
    :goto_4
    if-nez v3, :cond_4

    .line 116
    const-string/jumbo v3, ""

    .line 118
    :cond_4
    if-eqz v1, :cond_5

    .line 1039
    iget-object v5, v1, Leed$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 119
    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 2039
    iget-object v5, v1, Leed$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 120
    invoke-virtual {v5, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    iget-object v5, v1, Leed$a;->b:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4039
    iget-object v5, v1, Leed$a;->b:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5039
    iget-object v5, v1, Leed$a;->c:Landroid/view/View;

    .line 123
    if-eqz v5, :cond_5

    .line 6039
    iget-object v5, v1, Leed$a;->c:Landroid/view/View;

    .line 124
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .end local v0    # "avatarUrl":Ljava/lang/String;
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v3    # "nick":Ljava/lang/String;
    :cond_5
    :goto_5
    return-object v4

    .line 85
    .end local v1    # "holder":Leed$a;
    .end local v4    # "view":Landroid/view/View;
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    goto/16 :goto_0

    .line 87
    :cond_7
    iget-object v5, p0, Leed;->a:Landroid/app/Activity;

    if-eqz v5, :cond_8

    iget-object v5, p0, Leed;->a:Landroid/app/Activity;

    :goto_6
    sget v6, Ledz$g;->activity_attendance_avatar:I

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "view":Landroid/view/View;
    goto/16 :goto_1

    .end local v4    # "view":Landroid/view/View;
    :cond_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    goto :goto_6

    .line 93
    :cond_9
    move-object v4, p3

    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leed$a;

    .restart local v1    # "holder":Leed$a;
    goto/16 :goto_2

    .line 104
    .restart local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local v3    # "nick":Ljava/lang/String;
    :cond_a
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_2

    .line 105
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto :goto_3

    :cond_b
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_3

    .line 128
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v3    # "nick":Ljava/lang/String;
    :cond_c
    if-eqz v1, :cond_5

    .line 7039
    iget-object v5, v1, Leed$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 129
    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 8039
    iget-object v5, v1, Leed$a;->b:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9039
    iget-object v5, v1, Leed$a;->c:Landroid/view/View;

    .line 131
    if-eqz v5, :cond_5

    .line 10039
    iget-object v5, v1, Leed$a;->c:Landroid/view/View;

    .line 132
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 137
    :cond_d
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .restart local v0    # "avatarUrl":Ljava/lang/String;
    .restart local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local v3    # "nick":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
