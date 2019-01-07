.class public Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;
.super Landroid/widget/RelativeLayout;
.source "TeleVideoAvatarView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->teleconf_video_avatar_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    sget v0, Leuj$i;->user_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;->a:Landroid/widget/TextView;

    .line 47
    sget v0, Leuj$i;->user_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 48
    sget v0, Leuj$i;->user_state:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAvatarView;->c:Landroid/widget/TextView;

    .line 49
    return-void
.end method
