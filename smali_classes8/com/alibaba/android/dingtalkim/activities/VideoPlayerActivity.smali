.class public Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lhck$a;


# instance fields
.field private A:Z

.field private B:J

.field private C:Ljava/lang/Runnable;

.field private D:I

.field private a:Landroid/os/Handler;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/VideoView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

.field private t:J

.field private u:Ljava/lang/String;

.field private v:J

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Landroid/os/Bundle;

.field private z:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a:Landroid/os/Handler;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    .line 468
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->C:Ljava/lang/Runnable;

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->D:I

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 391
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->j:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 466
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    invoke-static {}, Ldsf;->a()Ldsf;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Ldsf;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->y:Landroid/os/Bundle;

    .line 4153
    if-eqz v0, :cond_1

    .line 4154
    const-string/jumbo v1, "video_auth_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4155
    const-string/jumbo v2, "video_auth_entity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4156
    const-string/jumbo v3, "video_auth_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4157
    invoke-static {v1, v2, v0, v5}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 364
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->k:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->q:J

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    const-class v11, Ldsf$a;

    invoke-interface {v0, v10, v11, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldsf$a;

    invoke-virtual/range {v1 .. v10}, Ldsf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;JJLdsf$a;)V

    goto :goto_0

    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v4, v5

    .line 4160
    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->r:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    .line 4251
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 4253
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "forward_enter_hide"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 4254
    if-nez v1, :cond_0

    .line 4255
    new-instance v1, Lcng;

    sget v2, Lctk$i;->chat_menu_forward:I

    invoke-direct {v1, v7, v2}, Lcng;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 4257
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->r:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 4258
    new-instance v1, Lcng;

    const/4 v2, 0x2

    sget v3, Lctk$i;->chat_menu_favorite:I

    invoke-direct {v1, v2, v3}, Lcng;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 4260
    :cond_1
    new-instance v1, Lcng;

    const/4 v2, 0x3

    sget v3, Lctk$i;->space_save:I

    invoke-direct {v1, v2, v3}, Lcng;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 4261
    new-instance v1, Lcng;

    const/4 v2, 0x4

    sget v3, Lctk$i;->save_to_phone:I

    invoke-direct {v1, v2, v3}, Lcng;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 4263
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 4264
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4265
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4340
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    :cond_2
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->x:J

    return-wide v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->s:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->y:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->q:J

    return-wide v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->t:J

    return-wide v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->v:J

    return-wide v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    .line 4345
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 4346
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4347
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4348
    const-string/jumbo v1, "_sight_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4349
    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4350
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4351
    const/16 v1, 0x280

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4352
    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4353
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "&from=tfs"

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 59
    .line 4548
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4549
    sget v0, Lctk$i;->dt_save_video_fail_no_download:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4550
    :goto_0
    return-void

    .line 4553
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4576
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->showLoadingDialog()V

    .line 4577
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->j:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lebr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->A:Z

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lhcm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->b:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lhcm;-><init>(Landroid/view/View;Landroid/view/View;)V

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->r:J

    invoke-virtual {v0, p0, v2, v3}, Lhcm;->b(Landroid/app/Activity;J)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->A:Z

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lhcm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->b:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lhcm;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, p1, p2}, Lhcm;->a(FF)V

    .line 585
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 605
    invoke-virtual {p0, v0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 606
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 130
    invoke-static {p0}, Lcoj;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->A:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a()V

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sget v0, Lctk$g;->activity_video_player:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->setContentView(I)V

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B:J

    .line 1137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1138
    const-string/jumbo v0, "video_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->m:Ljava/lang/String;

    .line 1139
    const-string/jumbo v0, "video_auth_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->n:Ljava/lang/String;

    .line 1140
    const-string/jumbo v0, "video_pic_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->o:Ljava/lang/String;

    .line 1141
    const-string/jumbo v0, "video_pic_auth_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->p:Ljava/lang/String;

    .line 1142
    const-string/jumbo v0, "video_size"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->q:J

    .line 1143
    const-string/jumbo v0, "message_id"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->r:J

    .line 1144
    const-string/jumbo v0, "org_id"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->t:J

    .line 1145
    const-string/jumbo v0, "space_transfer_src"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->u:Ljava/lang/String;

    .line 1146
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->w:Ljava/lang/String;

    .line 1147
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->v:J

    .line 1148
    const-string/jumbo v0, "intent_key_menu_seed"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->x:J

    .line 1149
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->y:Landroid/os/Bundle;

    .line 1150
    const-string/jumbo v0, "video_message_object"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const-string/jumbo v0, "video_message_object"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    if-eqz v4, :cond_0

    .line 1153
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->s:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->n:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Ldiq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->k:Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->p:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Ldiq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->l:Ljava/lang/String;

    .line 1161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    .line 1162
    invoke-static {v2, v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->A:Z

    .line 2166
    sget v0, Lctk$f;->background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->b:Landroid/view/View;

    .line 2167
    sget v0, Lctk$f;->video_player:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    .line 2168
    sget v0, Lctk$f;->video_play_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->e:Landroid/view/View;

    .line 2169
    sget v0, Lctk$f;->video_play_progress_head:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->f:Landroid/view/View;

    .line 2170
    sget v0, Lctk$f;->video_load_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c:Landroid/view/View;

    .line 2171
    sget v0, Lctk$f;->video_play_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g:Landroid/view/View;

    .line 2172
    sget v0, Lctk$f;->video_thumb:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->h:Landroid/widget/ImageView;

    .line 2173
    sget v0, Lctk$f;->video_thumb_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->i:Landroid/view/View;

    .line 2175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2181
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2182
    if-eqz v0, :cond_1

    .line 2183
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->y:Landroid/os/Bundle;

    .line 3164
    if-eqz v4, :cond_4

    .line 3165
    const-string/jumbo v5, "video_auth_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3166
    const-string/jumbo v7, "video_auth_entity"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3167
    const-string/jumbo v8, "video_pic_auth_entity"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3168
    invoke-static {v5, v7, v4, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    :goto_1
    move-object v5, v3

    .line 2183
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 2185
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 2186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2218
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->A:Z

    if-eqz v0, :cond_2

    .line 2219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lhck;

    invoke-direct {v1, p0, p0}, Lhck;-><init>(Landroid/content/Context;Lhck$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2230
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c()V

    .line 124
    return-void

    :cond_3
    move v0, v1

    .line 1162
    goto/16 :goto_0

    :cond_4
    move-object v4, v3

    .line 3171
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->z:Ljava/util/Timer;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 525
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->k:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B:J

    invoke-virtual {v0, p0, v1, v2, v3}, Ldsf;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 526
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    invoke-virtual {v0}, Ldsf;->c()V

    .line 527
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 528
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 510
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->D:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 514
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 496
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->D:I

    if-ltz v0, :cond_0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->D:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 504
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
