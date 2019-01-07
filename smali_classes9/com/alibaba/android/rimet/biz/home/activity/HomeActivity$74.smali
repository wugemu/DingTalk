.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 4284
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4287
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->m(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 4288
    invoke-static {}, Lelj;->a()Lelj;

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 5110
    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getHeapDalvik()[J

    move-result-object v1

    .line 5111
    aget-wide v2, v1, v8

    .line 5112
    aget-wide v4, v1, v9

    .line 5113
    sub-long v4, v2, v4

    .line 5114
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    const-wide/16 v2, 0x800

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 5115
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v1, :cond_0

    .line 5116
    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 5448
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    instance-of v1, v1, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    if-eqz v1, :cond_0

    .line 5449
    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .line 5461
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    invoke-static {v1}, Lcms;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5462
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v1}, Lhdf;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v1}, Lhdf;->getView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v1, :cond_0

    .line 5463
    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a()V

    .line 6071
    :cond_0
    invoke-static {}, Log$a;->a()Log;

    move-result-object v0

    .line 6137
    iget-object v1, v0, Log;->b:Lof;

    invoke-virtual {v1}, Lof;->a()V

    .line 6138
    iget-object v0, v0, Log;->a:Lof;

    invoke-virtual {v0}, Lof;->a()V

    .line 4289
    :cond_1
    invoke-static {}, Lelj;->a()Lelj;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 7089
    iget-boolean v2, v1, Lelj;->a:Z

    if-nez v2, :cond_2

    .line 7090
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7091
    iget-object v3, v1, Lelj;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7092
    new-instance v0, Lelj$2;

    invoke-direct {v0, v1}, Lelj$2;-><init>(Lelj;)V

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->registerListener(Lcom/alibaba/wukong/im/IMListener;)V

    .line 7101
    iput-boolean v9, v1, Lelj;->a:Z

    .line 7103
    :cond_2
    iget-boolean v0, v1, Lelj;->b:Z

    if-eqz v0, :cond_3

    .line 8087
    const-string/jumbo v0, "THREAD"

    .line 8088
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 8089
    sget-object v2, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 8090
    new-instance v2, Lelu$1;

    invoke-direct {v2}, Lelu$1;-><init>()V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 7105
    iput-boolean v8, v1, Lelj;->b:Z

    .line 4290
    :cond_3
    invoke-static {}, Lelj;->a()Lelj;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 8123
    iget-boolean v0, v1, Lelj;->c:Z

    if-nez v0, :cond_4

    .line 8126
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 8127
    new-instance v3, Lelj$3;

    invoke-direct {v3, v1, v2}, Lelj$3;-><init>(Lelj;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4291
    :cond_4
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->e()V

    .line 4292
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->h()V

    .line 4293
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->g()V

    .line 4294
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->r()V

    .line 4295
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->C()V

    .line 4296
    return-void
.end method

.method public final onEnterForeground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4300
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->m(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 4301
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->d()V

    .line 4302
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->g()V

    .line 4303
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->f()V

    .line 4304
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->q()V

    .line 4305
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->D()V

    .line 4306
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_key_contact_change"

    invoke-static {v0}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4307
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->k(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)V

    .line 4309
    :cond_1
    return-void
.end method
