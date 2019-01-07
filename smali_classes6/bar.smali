.class public final Lbar;
.super Ljava/lang/Object;
.source "DingUnReadPresenter.java"

# interfaces
.implements Lbaq$d;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field b:Lbaq$f;

.field c:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

.field private d:Landroid/app/Activity;

.field private e:Lbhs;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lcjo$a;

.field private h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbaq$f;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lbaq$f;
    .param p3, "listener"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbar;->a:Ljava/util/List;

    .line 46
    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    iput-object v0, p0, Lbar;->e:Lbhs;

    .line 52
    new-instance v0, Lbar$1;

    invoke-direct {v0, p0}, Lbar$1;-><init>(Lbar;)V

    iput-object v0, p0, Lbar;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .line 62
    iput-object p1, p0, Lbar;->d:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lbar;->b:Lbaq$f;

    .line 64
    iput-object p3, p0, Lbar;->c:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 65
    invoke-interface {p2, p0}, Lbaq$f;->setPresenter(Lcjd;)V

    .line 1075
    new-instance v0, Lbar$2;

    invoke-direct {v0, p0}, Lbar$2;-><init>(Lbar;)V

    const-class v1, Lcjo$a;

    iget-object v2, p0, Lbar;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lbar;->g:Lcjo$a;

    .line 1097
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lbar;->g:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 1098
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lbar;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 1100
    new-instance v0, Lbar$3;

    invoke-direct {v0, p0}, Lbar$3;-><init>(Lbar;)V

    iput-object v0, p0, Lbar;->f:Landroid/content/BroadcastReceiver;

    .line 1124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1125
    const-string/jumbo v1, "com.workapp.ding.confirm.all_ding"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    iget-object v1, p0, Lbar;->d:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbar;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lbar;->e:Lbhs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbhs;->a(Lbhs$a;)V

    .line 143
    return-void
.end method

.method b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 196
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbar$4;

    invoke-direct {v1, p0}, Lbar$4;-><init>(Lbar;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lbar;->e:Lbhs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbhs;->a(Lbhs$a;)V

    .line 148
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 178
    invoke-virtual {p0}, Lbar;->b()V

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "unReadNum":I
    iget-object v2, p0, Lbar;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 182
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_0

    .line 185
    invoke-static {v0}, Lbkh;->E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    .end local v0    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbar$5;

    invoke-direct {v3, p0, v1}, Lbar$5;-><init>(Lbar;I)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 191
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->c()V

    .line 192
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 229
    .line 2130
    iput-object v3, p0, Lbar;->c:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 2131
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lbar;->g:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 2132
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lbar;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 2134
    iget-object v0, p0, Lbar;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lbar;->d:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbar;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2136
    iput-object v3, p0, Lbar;->f:Landroid/content/BroadcastReceiver;

    .line 230
    :cond_0
    return-void
.end method
