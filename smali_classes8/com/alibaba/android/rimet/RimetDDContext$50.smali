.class final Lcom/alibaba/android/rimet/RimetDDContext$50;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initAsyncTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 4032
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$50;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4035
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$50;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_0

    .line 4036
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4038
    :cond_0
    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$50$1;

    const-string/jumbo v1, "search_cmd"

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/RimetDDContext$50$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$50;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 4045
    invoke-static {}, Lelk;->a()Lelk;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$50;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 5064
    new-instance v2, Lelk$1;

    const-string/jumbo v3, "cmd_open_accs"

    invoke-direct {v2, v0, v3, v1}, Lelk$1;-><init>(Lelk;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 5079
    new-instance v2, Lelk$2;

    const-string/jumbo v3, "cmd_close_accs"

    invoke-direct {v2, v0, v3, v1}, Lelk$2;-><init>(Lelk;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 5092
    new-instance v2, Lelk$3;

    const-string/jumbo v3, "cmd_open_ut"

    invoke-direct {v2, v0, v3, v1}, Lelk$3;-><init>(Lelk;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 5103
    new-instance v2, Lelk$4;

    const-string/jumbo v3, "cmd_close_ut"

    invoke-direct {v2, v0, v3, v1}, Lelk$4;-><init>(Lelk;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 5114
    new-instance v1, Lelk$5;

    const-string/jumbo v2, "cmd_dump_thread"

    invoke-direct {v1, v0, v2}, Lelk$5;-><init>(Lelk;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 4046
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->c()V

    .line 4047
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 4048
    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->initHpm()V

    .line 4050
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$50;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4052
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$50$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/RimetDDContext$50$2;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$50;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4061
    :cond_1
    invoke-static {}, Leli;->a()Leli;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$50;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Leli;->a(Landroid/content/Context;)V

    .line 4063
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$50;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1400(Lcom/alibaba/android/rimet/RimetDDContext;)V

    .line 4064
    return-void
.end method
