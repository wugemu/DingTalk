.class public Lcjw;
.super Ljava/lang/Object;
.source "FpsFrameManager.java"

# interfaces
.implements Lcjv;


# static fields
.field private static volatile f:Lcjw;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;

.field public b:Lcjt;

.field public c:Landroid/view/WindowManager;

.field public d:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field public e:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

.field private g:Landroid/os/Handler;

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcju;->a()V

    .line 50
    new-instance v0, Lcjt;

    invoke-direct {v0}, Lcjt;-><init>()V

    iput-object v0, p0, Lcjw;->b:Lcjt;

    .line 51
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcjw;->c:Landroid/view/WindowManager;

    .line 53
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lcjw;->d:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 54
    new-instance v0, Lcjw$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcjw$1;-><init>(Lcjw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcjw;->g:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcjw$2;

    invoke-direct {v0, p0}, Lcjw$2;-><init>(Lcjw;)V

    iput-object v0, p0, Lcjw;->e:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    .line 85
    return-void
.end method

.method static synthetic a(Lcjw;I)I
    .locals 1
    .param p0, "x0"    # Lcjw;
    .param p1, "x1"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcjw;->h:I

    return v0
.end method

.method public static a()Lcjw;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcjw;->f:Lcjw;

    if-nez v0, :cond_1

    .line 89
    const-class v1, Lcjw;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcjw;->f:Lcjw;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcjw;

    invoke-direct {v0}, Lcjw;-><init>()V

    sput-object v0, Lcjw;->f:Lcjw;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    sget-object v0, Lcjw;->f:Lcjw;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcjw;)Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;
    .locals 1
    .param p0, "x0"    # Lcjw;

    .prologue
    .line 29
    iget-object v0, p0, Lcjw;->a:Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;

    return-object v0
.end method

.method public static a(Z)V
    .locals 3
    .param p0, "isOn"    # Z

    .prologue
    .line 134
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_fps_switch_on"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method static synthetic b(Lcjw;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcjw;

    .prologue
    .line 29
    iget-object v0, p0, Lcjw;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public static c()Z
    .locals 4

    .prologue
    .line 128
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "key_fps_switch_on"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "fps"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 141
    iget v0, p0, Lcjw;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcjw;->h:I

    if-ge p1, v0, :cond_1

    .line 142
    :cond_0
    iput p1, p0, Lcjw;->h:I

    .line 144
    :cond_1
    iget-object v0, p0, Lcjw;->a:Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;

    iget v1, p0, Lcjw;->h:I

    .line 3043
    iget v2, v0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->c:I

    if-eq v2, p1, :cond_2

    .line 3044
    iput p1, v0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->c:I

    .line 3045
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3047
    :cond_2
    iget v2, v0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->d:I

    if-eq v2, v1, :cond_3

    .line 3048
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->d:I

    .line 3049
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->b:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 118
    .line 1177
    :try_start_0
    iget-object v0, p0, Lcjw;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcjw;->a:Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcjw;->a:Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;

    .line 121
    iget-object v0, p0, Lcjw;->b:Lcjt;

    .line 2044
    iput-boolean v2, v0, Lcjt;->a:Z

    .line 122
    iget-object v0, p0, Lcjw;->b:Lcjt;

    .line 2054
    iget-object v0, v0, Lcjt;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcjw;->d:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v1, p0, Lcjw;->e:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 124
    invoke-static {v2}, Lcjw;->a(Z)V

    .line 125
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
