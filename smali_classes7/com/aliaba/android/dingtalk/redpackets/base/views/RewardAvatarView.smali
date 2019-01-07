.class public Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;
.super Landroid/widget/LinearLayout;
.source "RewardAvatarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private r:[Landroid/widget/TextView;

.field private s:[Landroid/view/View;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    sget-object v1, Loe$c;->RewardAvatarView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Loe$c;->RewardAvatarView_imageViewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->n:F

    .line 78
    sget v1, Loe$c;->RewardAvatarView_imageViewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->m:F

    .line 79
    sget v1, Loe$c;->RewardAvatarView_maxTextWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->p:F

    .line 80
    sget v1, Loe$c;->RewardAvatarView_imageViewMargin:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->o:F

    .line 81
    sget v1, Loe$c;->RewardAvatarView_isShowText:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->t:Z

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1087
    invoke-virtual {p0}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Loe$b;->redpackets_reward_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1088
    sget v1, Loe$a;->icon0:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1089
    sget v1, Loe$a;->icon1:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1090
    sget v1, Loe$a;->icon2:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1091
    sget v1, Loe$a;->icon3:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1093
    sget v1, Loe$a;->rl0:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->e:Landroid/view/View;

    .line 1094
    sget v1, Loe$a;->rl1:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->f:Landroid/view/View;

    .line 1095
    sget v1, Loe$a;->rl2:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->g:Landroid/view/View;

    .line 1096
    sget v1, Loe$a;->rl3:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->h:Landroid/view/View;

    .line 1098
    sget v1, Loe$a;->tv0:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->i:Landroid/widget/TextView;

    .line 1099
    sget v1, Loe$a;->tv1:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->j:Landroid/widget/TextView;

    .line 1100
    sget v1, Loe$a;->tv2:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->k:Landroid/widget/TextView;

    .line 1101
    sget v1, Loe$a;->tv3:I

    invoke-virtual {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->l:Landroid/widget/TextView;

    .line 1103
    iget-boolean v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->t:Z

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1106
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1114
    :goto_0
    iget v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->p:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->i:Landroid/widget/TextView;

    iget v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->p:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1116
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->p:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1117
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->k:Landroid/widget/TextView;

    iget v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->p:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1118
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->l:Landroid/widget/TextView;

    iget v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->p:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1120
    :cond_0
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->e:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setViewProperties(Landroid/view/View;)V

    .line 1121
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->f:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setViewProperties(Landroid/view/View;)V

    .line 1122
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->g:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setViewProperties(Landroid/view/View;)V

    .line 1123
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->h:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setViewProperties(Landroid/view/View;)V

    .line 1125
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setImageProperties(Landroid/widget/ImageView;)V

    .line 1126
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setImageProperties(Landroid/widget/ImageView;)V

    .line 1127
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setImageProperties(Landroid/widget/ImageView;)V

    .line 1128
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {p0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->setImageProperties(Landroid/widget/ImageView;)V

    .line 1130
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1131
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v2, v1, v4

    .line 1132
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v2, v1, v5

    .line 1133
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v2, v1, v6

    .line 1134
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v3, v1, v2

    .line 1136
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    .line 1137
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->e:Landroid/view/View;

    aput-object v2, v1, v4

    .line 1138
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->f:Landroid/view/View;

    aput-object v2, v1, v5

    .line 1139
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->g:Landroid/view/View;

    aput-object v2, v1, v6

    .line 1140
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->h:Landroid/view/View;

    aput-object v3, v1, v2

    .line 1142
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    .line 1143
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->i:Landroid/widget/TextView;

    aput-object v2, v1, v4

    .line 1144
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->j:Landroid/widget/TextView;

    aput-object v2, v1, v5

    .line 1145
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->k:Landroid/widget/TextView;

    aput-object v2, v1, v6

    .line 1146
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->l:Landroid/widget/TextView;

    aput-object v3, v1, v2

    .line 84
    return-void

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1110
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1111
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    iget-object v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setImageProperties(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->n:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 153
    iget v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->m:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method

.method private setViewProperties(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->o:F

    float-to-int v1, v1

    iget v2, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->o:F

    float-to-int v2, v2

    iget v3, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->o:F

    float-to-int v3, v3

    iget v4, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->o:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method


# virtual methods
.method public setData(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;>;"
    const/16 v11, 0x8

    const/4 v7, 0x0

    .line 164
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 166
    .local v4, "size":I
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    array-length v3, v6

    .line 167
    .local v3, "iconSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 168
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    add-int/lit8 v0, v3, -0x1

    .line 172
    .local v0, "disPlaySize":I
    const/4 v1, 0x0

    .line 174
    .local v1, "displayDefault":Z
    if-lt v4, v3, :cond_1

    .line 175
    const/4 v1, 0x1

    .line 178
    :cond_1
    if-ge v4, v3, :cond_2

    .line 179
    move v0, v4

    .line 182
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 183
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v8, v6, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget-object v9, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->d:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->c:Ljava/lang/String;

    .line 1167
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 185
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    aget-object v8, v6, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->d:Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    :cond_3
    if-eqz v1, :cond_5

    .line 189
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->b:I

    if-lez v6, :cond_6

    .line 190
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    add-int/lit8 v8, v3, -0x1

    aget-object v6, v6, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->e:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 192
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->r:[Landroid/widget/TextView;

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v6, v8

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->e:Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_4
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->q:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v6, v8

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;

    iget v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView$a;->b:I

    invoke-virtual {v8, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 206
    .end local v0    # "disPlaySize":I
    .end local v1    # "displayDefault":Z
    .end local v2    # "i":I
    .end local v3    # "iconSize":I
    .end local v4    # "size":I
    :cond_5
    :goto_2
    return-void

    .line 197
    .restart local v0    # "disPlaySize":I
    .restart local v1    # "displayDefault":Z
    .restart local v2    # "i":I
    .restart local v3    # "iconSize":I
    .restart local v4    # "size":I
    :cond_6
    iget-object v6, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 202
    .end local v0    # "disPlaySize":I
    .end local v1    # "displayDefault":Z
    .end local v2    # "i":I
    .end local v3    # "iconSize":I
    .end local v4    # "size":I
    :cond_7
    iget-object v8, p0, Lcom/aliaba/android/dingtalk/redpackets/base/views/RewardAvatarView;->s:[Landroid/view/View;

    array-length v9, v8

    move v6, v7

    :goto_3
    if-ge v6, v9, :cond_5

    aget-object v5, v8, v6

    .line 203
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method
