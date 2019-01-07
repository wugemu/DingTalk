.class public Lbtq;
.super Ljava/lang/Object;
.source "AnchorManager.java"


# static fields
.field private static volatile g:Lbtq;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

.field private h:Ljjx;

.field private i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private j:Lbtt;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a()Lbtq;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lbtq;->g:Lbtq;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lbtq;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lbtq;->g:Lbtq;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lbtq;

    invoke-direct {v0}, Lbtq;-><init>()V

    sput-object v0, Lbtq;->g:Lbtq;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lbtq;->g:Lbtq;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbtq;)Lbtt;
    .locals 1
    .param p0, "x0"    # Lbtq;

    .prologue
    .line 30
    iget-object v0, p0, Lbtq;->j:Lbtt;

    return-object v0
.end method

.method static synthetic b(Lbtq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbtq;

    .prologue
    .line 30
    iget-object v0, p0, Lbtq;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lbtq;)Ljjx;
    .locals 1
    .param p0, "x0"    # Lbtq;

    .prologue
    .line 30
    iget-object v0, p0, Lbtq;->h:Ljjx;

    return-object v0
.end method

.method static synthetic d(Lbtq;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .locals 1
    .param p0, "x0"    # Lbtq;

    .prologue
    .line 30
    iget-object v0, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(ZZ)Ljjx;
    .locals 2
    .param p1, "isEnableHwCode"    # Z
    .param p2, "isLinkMicOn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbtq;->h:Ljjx;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljjx;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Ljjx;-><init>(ZZZ)V

    iput-object v0, p0, Lbtq;->h:Ljjx;

    .line 62
    iget-object v0, p0, Lbtq;->h:Ljjx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljjx;->a(Z)V

    .line 1204
    iget-object v0, p0, Lbtq;->i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Lbtq$3;

    invoke-direct {v0, p0}, Lbtq$3;-><init>(Lbtq;)V

    iput-object v0, p0, Lbtq;->i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 1233
    const-string/jumbo v0, "LIFECYCLE"

    .line 1234
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1235
    iget-object v1, p0, Lbtq;->i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lbtq;->h:Ljjx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveInfo"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .prologue
    .line 77
    iput-object p1, p0, Lbtq;->b:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 79
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 115
    iget-object v4, p0, Lbtq;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-nez v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lbtq;->j:Lbtt;

    if-nez v4, :cond_0

    .line 122
    const-string/jumbo v4, "AnchorManager.showSmallView"

    .line 2013
    const-string/jumbo v5, "live"

    invoke-static {v5, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 124
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lbtt;

    invoke-direct {v4}, Lbtt;-><init>()V

    iput-object v4, p0, Lbtq;->j:Lbtt;

    .line 125
    iget-object v4, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v4}, Lbtt;->b()V

    .line 126
    iget-object v4, p0, Lbtq;->j:Lbtt;

    iget-object v5, p0, Lbtq;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lbtt;->b(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lbtq;->j:Lbtt;

    iget-object v5, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape()Z

    move-result v5

    .line 2032
    iput-boolean v5, v4, Lbtt;->a:Z

    .line 128
    iget-object v4, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v4}, Lbtt;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v1

    .line 129
    .local v1, "floatWindow":Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;
    new-instance v4, Lbtq$2;

    invoke-direct {v4, p0, v0}, Lbtq$2;-><init>(Lbtq;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 154
    .local v3, "wm":Landroid/view/WindowManager;
    if-eqz v3, :cond_2

    .line 155
    iget-object v4, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v4}, Lbtt;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_2
    :goto_1
    iget-object v4, p0, Lbtq;->h:Ljjx;

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lbtq;->h:Ljjx;

    iget-object v5, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v5}, Lbtt;->a()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljjx;->a(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ignore":Ljava/lang/Throwable;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "AnchorManager.showSmallView failed, error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 159
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 158
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3013
    const-string/jumbo v5, "live"

    invoke-static {v5, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 168
    iget-object v2, p0, Lbtq;->j:Lbtt;

    if-eqz v2, :cond_2

    .line 170
    :try_start_0
    iget-object v2, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v2}, Lbtt;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 171
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 173
    .local v1, "wm":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 174
    iget-object v2, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v2}, Lbtt;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 176
    :cond_0
    const-string/jumbo v2, "AnchorManager.destroySmallView"

    .line 4013
    const-string/jumbo v3, "live"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    iget-object v2, p0, Lbtq;->j:Lbtt;

    invoke-virtual {v2}, Lbtt;->c()V

    .line 183
    iput-object v5, p0, Lbtq;->j:Lbtt;

    .line 185
    :cond_2
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ignore":Ljava/lang/Throwable;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "AnchorManager.destroySmallView failed, error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 179
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5013
    const-string/jumbo v3, "live"

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lbtq;->d()V

    .line 190
    iput-object v2, p0, Lbtq;->b:Ljava/lang/String;

    .line 191
    iput-boolean v0, p0, Lbtq;->d:Z

    .line 192
    iput-boolean v0, p0, Lbtq;->e:Z

    .line 193
    iput-object v2, p0, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 194
    iput-object v2, p0, Lbtq;->c:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lbtq;->h:Ljjx;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lbtq;->h:Ljjx;

    invoke-virtual {v0}, Ljjx;->c()V

    .line 197
    iget-object v0, p0, Lbtq;->h:Ljjx;

    invoke-virtual {v0}, Ljjx;->g()V

    .line 198
    iput-object v2, p0, Lbtq;->h:Ljjx;

    .line 5239
    :cond_0
    iget-object v0, p0, Lbtq;->i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-eqz v0, :cond_1

    .line 5242
    const-string/jumbo v0, "LIFECYCLE"

    .line 5243
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 5244
    iget-object v1, p0, Lbtq;->i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 5245
    iput-object v2, p0, Lbtq;->i:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 201
    :cond_1
    return-void
.end method
