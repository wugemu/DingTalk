.class public Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;
.super Lcom/alibaba/android/teleconf/widget/BaseFloatView;
.source "ConfVideoExtFloatView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

.field private e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

.field private f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    .line 47
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    invoke-static {v2}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    invoke-static {v3}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 49
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 53
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 1137
    sget v2, Leuj$i;->conf_sub_window_layout:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    .line 1138
    sget v2, Leuj$i;->conf_sub_window_cover:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    .line 1139
    sget v2, Leuj$i;->conf_sub_window_status:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    .line 1140
    sget v2, Leuj$i;->conf_sub_window_icon:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->f:Landroid/view/View;

    .line 58
    return-void
.end method

.method private a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 6
    .param p1, "memberObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v3

    .line 148
    .local v3, "userState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    invoke-static {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "stateStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 150
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 151
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 152
    .local v0, "nickName":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0    # "nickName":Ljava/lang/String;
    :cond_2
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 67
    if-eqz p1, :cond_d

    instance-of v6, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    if-eqz v6, :cond_d

    move-object v5, p1

    .line 68
    check-cast v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 69
    .local v5, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v6, :cond_5

    .line 70
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v3

    .line 71
    .local v3, "isMicMuted":Z
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v2

    .line 73
    .local v2, "isCamMuted":Z
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v0

    .line 74
    .local v0, "beInConf":Z
    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v1

    .line 75
    .local v1, "hasWindowShare":Z
    if-nez v3, :cond_0

    if-eqz v2, :cond_8

    .line 76
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 77
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v6, v3, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 78
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 79
    if-eqz v1, :cond_1

    .line 80
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v6, v3, v7}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 82
    :cond_1
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v6, :cond_2

    .line 83
    iget-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v1, :cond_6

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 96
    :cond_2
    :goto_1
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    if-ne v6, v9, :cond_4

    .line 97
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 98
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 99
    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 100
    :cond_3
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 101
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    .line 118
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 120
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 121
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->f:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 127
    .end local v0    # "beInConf":Z
    .end local v1    # "hasWindowShare":Z
    .end local v2    # "isCamMuted":Z
    .end local v3    # "isMicMuted":Z
    .end local v5    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_5
    :goto_3
    return-void

    .restart local v0    # "beInConf":Z
    .restart local v1    # "hasWindowShare":Z
    .restart local v2    # "isCamMuted":Z
    .restart local v3    # "isMicMuted":Z
    .restart local v5    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_6
    move v6, v8

    .line 83
    goto :goto_0

    .line 85
    :cond_7
    if-eqz v0, :cond_2

    .line 86
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v6, :cond_2

    .line 87
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6, v7}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 91
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 92
    if-eqz v0, :cond_2

    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v6, :cond_2

    .line 93
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6, v7}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_9
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v6, :cond_b

    .line 104
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6}, Lorg/webrtc/sdk/SophonSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 105
    .local v4, "parentView":Landroid/view/ViewParent;
    if-eqz v4, :cond_a

    .line 106
    check-cast v4, Landroid/widget/FrameLayout;

    .end local v4    # "parentView":Landroid/view/ViewParent;
    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 108
    :cond_a
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    iget-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    goto :goto_2

    .line 114
    :cond_c
    iget-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 115
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    goto :goto_2

    .line 124
    .end local v0    # "beInConf":Z
    .end local v1    # "hasWindowShare":Z
    .end local v2    # "isCamMuted":Z
    .end local v3    # "isMicMuted":Z
    .end local v5    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_d
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 125
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 62
    sget v0, Leuj$j;->layout_conf_float_view_video_window_ext:I

    return v0
.end method

.method public onClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 131
    const-string/jumbo v0, "tele_video_h"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a:Ljava/lang/String;

    const-string/jumbo v2, "Click for go back video conf"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 1157
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_floatwindow_click"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1160
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_conf_floating_enter_opt_enable"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1160
    if-eqz v0, :cond_1

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->f()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1163
    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b()V

    .line 134
    return-void

    .line 1166
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_video_h"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a:Ljava/lang/String;

    const-string/jumbo v2, "PendingIntent send exp"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b:Landroid/content/Context;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1177
    :cond_2
    const-string/jumbo v0, "tele_video_h"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a:Ljava/lang/String;

    const-string/jumbo v2, "Remove run-floating"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
