.class public Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;
.super Landroid/widget/RelativeLayout;
.source "TeleVideoRectAvatarView.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->d:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->teleconf_video_rect_avatar_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Leuj$i;->user_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 49
    sget v0, Leuj$i;->user_avatar_cover:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    .line 50
    sget v0, Leuj$i;->user_state:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->c:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    .line 2058
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    .line 1058
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    :try_start_0
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->d:I

    if-lez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->d:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p3, :cond_1

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->ui_common_content_fg_color_alpha_72:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_1
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setAvatarTFSSize(I)V
    .locals 0
    .param p1, "dpSize"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->d:I

    .line 55
    return-void
.end method
