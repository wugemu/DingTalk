.class public Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;
.super Landroid/widget/RelativeLayout;
.source "TeleVideoRectStatusView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->teleconf_video_rect_status_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v0, Leuj$i;->user_mic_state_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a:Landroid/view/View;

    .line 46
    sget v0, Leuj$i;->user_mic_state_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 47
    sget v0, Leuj$i;->user_cam_state_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->c:Landroid/view/View;

    .line 48
    sget v0, Leuj$i;->user_cam_state_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 3
    .param p1, "muted"    # Z
    .param p2, "cameraMuted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_0
    if-eqz p2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_1
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
