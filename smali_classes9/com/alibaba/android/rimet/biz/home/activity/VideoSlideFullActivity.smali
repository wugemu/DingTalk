.class public Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "VideoSlideFullActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

.field private e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

.field private f:Landroid/media/AudioManager;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getCurrentPositionInSeconds()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;)Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    const/16 v1, 0x700

    .line 157
    .local v1, "newVis":I
    if-nez p1, :cond_0

    .line 158
    const/16 v1, 0x707

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 165
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 174
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;
    .param p1, "x1"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 30
    .line 5177
    if-eqz p1, :cond_0

    .line 5178
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5179
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 5181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5182
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 189
    .line 2223
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->finish()V

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 3223
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->finish()V

    goto :goto_0

    .line 199
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->pause()V

    .line 4209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110bcb -> :sswitch_0
        0x7f110c19 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1056
    const v0, 0x7f0401ce

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->setContentView(I)V

    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->hideToolbar()V

    .line 1058
    const v0, 0x7f110c17

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .line 1059
    const v0, 0x7f110c18

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .line 1060
    const v0, 0x7f110bcb

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->b:Landroid/view/View;

    .line 1061
    const v0, 0x7f110c19

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->c:Landroid/view/View;

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-direct {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a(Z)V

    .line 1068
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->f:Landroid/media/AudioManager;

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setMediaController(Lemh;)V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setOnPlayStateListener(Lemk;)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->setSeekbarDraggable(Z)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->e:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->setVisibilityListener(Lemi;)V

    .line 1088
    if-nez p1, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    const-string/jumbo v1, "http://file.dingtalk.com/media/dingtalkv3.mp4"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setVideo(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->start()V

    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    const-string/jumbo v0, "current_position"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    .line 1093
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    if-gez v0, :cond_0

    .line 1094
    iput v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d()V

    .line 230
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x18

    const/4 v1, 0x1

    .line 101
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_2

    .line 102
    :cond_0
    if-ne p1, v3, :cond_1

    move v0, v1

    .line 103
    .local v0, "direction":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->f:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 106
    .end local v0    # "direction":I
    :goto_1
    return v1

    .line 102
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 128
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 144
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    if-ltz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->d:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    const-string/jumbo v1, "http://file.dingtalk.com/media/dingtalkv3.mp4"

    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->g:I

    .line 2175
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 1185
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/net/Uri;I)V

    .line 150
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string/jumbo v0, "current_position"

    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    return-void
.end method
