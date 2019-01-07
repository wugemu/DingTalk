.class public Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;
.super Landroid/widget/LinearLayout;
.source "TeleConfOneLineAvatarView.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->c:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->teleconf_video_oneline_avatar_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    sget v0, Leuj$i;->avatar_list_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->b:Landroid/widget/LinearLayout;

    .line 57
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p0, "destView"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 93
    if-nez p0, :cond_0

    move-object p0, v1

    .line 102
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-object p0

    .line 96
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x42240000    # 41.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 99
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .locals 12
    .param p2, "hasTail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->b:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 73
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 75
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-nez v4, :cond_2

    .line 73
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1106
    :cond_2
    if-nez v4, :cond_4

    .line 1107
    const/4 v0, 0x0

    .line 79
    .local v0, "avatarView":Landroid/view/View;
    :goto_3
    if-eqz v1, :cond_3

    .line 80
    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 82
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1109
    .end local v0    # "avatarView":Landroid/view/View;
    :cond_4
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    move-object v7, v5

    .line 1111
    :goto_4
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->c:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Leuj$j;->layout_conf_avatar_small:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1112
    sget v5, Leuj$i;->user_avatar_layout:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1113
    sget v5, Leuj$i;->user_avatar:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1114
    sget v6, Leuj$i;->user_tail:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1115
    sget v6, Leuj$i;->nickname:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1117
    iget-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v11, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    const/16 v5, 0x8

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-boolean v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->d:Z

    if-eqz v5, :cond_6

    .line 1122
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1109
    :cond_5
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    move-object v7, v5

    goto :goto_4

    .line 1125
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 84
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    if-eqz p2, :cond_0

    .line 1132
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->c:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Leuj$j;->layout_conf_avatar_small:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1133
    sget v5, Leuj$i;->user_avatar_layout:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1134
    sget v5, Leuj$i;->user_tail:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1135
    sget v5, Leuj$i;->nickname:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1137
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->d:Z

    if-eqz v6, :cond_8

    .line 1141
    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    .local v3, "tailView":Landroid/view/View;
    :goto_5
    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->a(Landroid/view/View;)Landroid/view/View;

    .line 88
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1144
    .end local v3    # "tailView":Landroid/view/View;
    :cond_8
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->a(Ljava/util/List;Z)V

    .line 65
    return-void
.end method

.method public setNickVisible(Z)V
    .locals 0
    .param p1, "beVisible"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->d:Z

    .line 61
    return-void
.end method
