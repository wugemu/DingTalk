.class public Lguv;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"


# static fields
.field private static volatile b:Lguv;


# instance fields
.field public volatile a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lguv;->a:I

    .line 17
    return-void
.end method

.method public static a()Lguv;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lguv;->b:Lguv;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lguv;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lguv;->b:Lguv;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lguv;

    invoke-direct {v0}, Lguv;-><init>()V

    sput-object v0, Lguv;->b:Lguv;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lguv;->b:Lguv;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lguv;Z)V
    .locals 1
    .param p0, "x0"    # Lguv;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    const/4 v0, 0x1

    iput v0, p0, Lguv;->a:I

    :goto_0
    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lguv;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "positive"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negative"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 54
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    sget v1, Lgtt$f;->dt_video_play_network_not_wifi_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lgtt$f;->dt_video_play_confirm_continue_play:I

    new-instance v3, Lguv$2;

    invoke-direct {v3, p0, p2}, Lguv$2;-><init>(Lguv;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lgtt$f;->dt_video_play_confirm_not_auto_play:I

    new-instance v3, Lguv$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lguv$1;-><init>(Lguv;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 77
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 31
    iget v1, p0, Lguv;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 35
    iget v0, p0, Lguv;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
