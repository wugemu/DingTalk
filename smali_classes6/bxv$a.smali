.class final Lbxv$a;
.super Ljava/lang/Object;
.source "LinkMicCallListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget v0, Lbtp$e;->tv_nick:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxv$a;->b:Landroid/widget/TextView;

    .line 117
    sget v0, Lbtp$e;->tv_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbxv$a;->c:Landroid/widget/TextView;

    .line 118
    sget v0, Lbtp$e;->btn_connect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbxv$a;->a:Landroid/widget/Button;

    .line 119
    sget v0, Lbtp$e;->iv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbxv$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lbxv$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lbxv$a;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V
    .locals 6
    .param p0, "x0"    # Lbxv$a;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "x2"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 108
    .line 1124
    if-eqz p1, :cond_0

    .line 1128
    iget-object v0, p0, Lbxv$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v0, p0, Lbxv$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1167
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1130
    if-nez p2, :cond_1

    .line 1131
    iget-object v0, p0, Lbxv$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lbxv$a;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v0, p0, Lbxv$a;->c:Landroid/widget/TextView;

    sget v1, Lbtp$g;->dt_lv_linkmic_waiting_for_on_seconds:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1145
    iget-object v0, p0, Lbxv$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lbxv$a;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
