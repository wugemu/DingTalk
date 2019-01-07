.class public final Lacr;
.super Ljava/lang/Object;
.source "MultiMailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacr$a;
    }
.end annotation


# static fields
.field private static volatile m:Lacr;

.field private static final n:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Labx;

.field public d:Landroid/content/Context;

.field e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labk;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacr$a;",
            ">;"
        }
    .end annotation
.end field

.field k:Lrz;

.field l:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ldq;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Z

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lacr;->n:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v1, p0, Lacr;->t:Z

    .line 998
    new-instance v0, Lrz;

    const-wide/16 v2, 0x1388

    invoke-direct {v0, v2, v3}, Lrz;-><init>(J)V

    iput-object v0, p0, Lacr;->k:Lrz;

    .line 999
    iput-boolean v1, p0, Lacr;->l:Z

    .line 120
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lacr;->d:Landroid/content/Context;

    .line 121
    iput v1, p0, Lacr;->f:I

    .line 122
    iput-boolean v1, p0, Lacr;->r:Z

    .line 124
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lacr;->o:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacr;->j:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacr;->s:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacr;->i:Ljava/util/Map;

    .line 128
    invoke-virtual {p0}, Lacr;->b()V

    .line 129
    return-void
.end method

.method public static a()Lacr;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lacr;->m:Lacr;

    if-nez v0, :cond_1

    .line 110
    sget-object v1, Lacr;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lacr;->m:Lacr;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lacr;

    invoke-direct {v0}, Lacr;-><init>()V

    sput-object v0, Lacr;->m:Lacr;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lacr;->m:Lacr;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lacr;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lacr;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lacr;)V
    .locals 3
    .param p0, "x0"    # Lacr;

    .prologue
    .line 75
    .line 8726
    iget-object v1, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v1

    .line 8727
    :try_start_0
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8728
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8729
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacr$a;

    .line 8730
    if-eqz v0, :cond_0

    .line 8731
    invoke-interface {v0}, Lacr$a;->b()V

    goto :goto_0

    .line 8734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lacr;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 7851
    const-string/jumbo v0, "tryUnbindOrgEmail, orgEmail"

    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7854
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7855
    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7856
    :cond_0
    :goto_0
    return-void

    .line 7859
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lacr;->a(Ljava/lang/String;Z)V

    .line 7861
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    const-string/jumbo v1, "tryUnbindOrgEmail-android"

    new-instance v2, Lacr$5;

    invoke-direct {v2, p0, p1}, Lacr$5;-><init>(Lacr;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lro;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 408
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 409
    const-string/jumbo v1, "pref_key_mail_last_login_account"

    invoke-static {v1, p0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "orgEmail"    # Ljava/lang/String;
    .param p1, "isDistributed"    # Z

    .prologue
    .line 898
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v0

    new-instance v1, Lacp$b;

    invoke-direct {v1, p0, p1}, Lacp$b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lacp;->b(Lacp$b;)V

    .line 900
    return-void
.end method

.method static synthetic a(Lacr;Z)Z
    .locals 1
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacr;->l:Z

    return v0
.end method

.method static synthetic b(Lacr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacr;

    .prologue
    .line 75
    iget-object v0, p0, Lacr;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lacr;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 8740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8741
    invoke-static {p1}, Lafh;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8742
    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8757
    :cond_0
    :goto_0
    return-void

    .line 8749
    :cond_1
    iget-object v1, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v1

    .line 8750
    :try_start_0
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8751
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8752
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacr$a;

    .line 8753
    if-eqz v0, :cond_2

    .line 8754
    invoke-interface {v0}, Lacr$a;->c()V

    goto :goto_1

    .line 8757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lacr;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lacr;

    .prologue
    .line 75
    iget-object v0, p0, Lacr;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lacr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lacr;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 234
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lacr;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lacr;

    .prologue
    .line 75
    iget-object v0, p0, Lacr;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lacr;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 8842
    const-string/jumbo v0, "handleUnbindAccount"

    invoke-static {v0, p1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8843
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_account_logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8844
    const-string/jumbo v1, "mail_account_logout"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8845
    iget-object v1, p0, Lacr;->p:Ldq;

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 8846
    invoke-direct {p0, p1}, Lacr;->d(Ljava/lang/String;)V

    .line 8847
    invoke-direct {p0, p1}, Lacr;->e(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 552
    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 554
    iget-object v3, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v3

    .line 555
    :try_start_0
    iget-object v2, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 556
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacr$a;

    .line 558
    .local v1, "listener":Lacr$a;
    if-eqz v1, :cond_0

    .line 559
    invoke-interface {v1, p1}, Lacr$a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    .end local v1    # "listener":Lacr$a;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic e(Lacr;)V
    .locals 3
    .param p0, "x0"    # Lacr;

    .prologue
    .line 75
    .line 10797
    iget-object v1, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v1

    .line 10798
    :try_start_0
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 10799
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10800
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacr$a;

    .line 10801
    if-eqz v0, :cond_0

    .line 10802
    invoke-interface {v0}, Lacr$a;->a()V

    goto :goto_0

    .line 10805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic e(Lacr;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lacr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 9810
    iget-object v1, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v1

    .line 9812
    :try_start_0
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9813
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lacr;->a(Ljava/lang/String;Z)V

    .line 9814
    monitor-exit v1

    .line 9824
    :goto_0
    return-void

    .line 9817
    :cond_0
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 9818
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9819
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacr$a;

    .line 9820
    if-eqz v0, :cond_1

    .line 9821
    invoke-interface {v0, p1}, Lacr$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 9824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 829
    iget-object v3, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v3

    .line 830
    :try_start_0
    iget-object v2, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 831
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 832
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacr$a;

    .line 833
    .local v1, "listener":Lacr$a;
    if-eqz v1, :cond_0

    .line 834
    invoke-interface {v1, p1}, Lacr$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    .end local v1    # "listener":Lacr$a;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "dingtalkMail":Ljava/lang/String;
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 358
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    .line 359
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v2}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 373
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 377
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 385
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 386
    invoke-static {v1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 391
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static r()Labx;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "loginModeModel":Labx;
    const-string/jumbo v4, "pref_key_mail_login_mode"

    invoke-static {v4}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "modeStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 493
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v1, Labx;

    invoke-direct {v1}, Labx;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0    # "loginModeModel":Labx;
    .local v1, "loginModeModel":Labx;
    :try_start_1
    const-string/jumbo v4, "loginMode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Labx;->a:Ljava/lang/Integer;

    .line 495
    const-string/jumbo v4, "dingtalkMail"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Labx;->b:Ljava/lang/String;

    .line 496
    const-string/jumbo v4, "dingtalkOrgMail"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Labx;->d:Ljava/lang/String;

    .line 497
    const-string/jumbo v4, "allowModifyDingtalkALias"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Labx;->c:Ljava/lang/Boolean;

    .line 500
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Labx;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eq v4, v6, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 507
    .end local v1    # "loginModeModel":Labx;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local v1    # "loginModeModel":Labx;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    move-object v0, v1

    .line 505
    .end local v1    # "loginModeModel":Labx;
    .restart local v0    # "loginModeModel":Labx;
    goto :goto_0

    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0    # "loginModeModel":Labx;
    .restart local v1    # "loginModeModel":Labx;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "loginModeModel":Labx;
    .restart local v0    # "loginModeModel":Labx;
    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "currentDingtalkLoginMode"    # I

    .prologue
    .line 275
    iput p1, p0, Lacr;->e:I

    .line 277
    invoke-virtual {p0}, Lacr;->p()V

    .line 278
    return-void
.end method

.method public final a(Labx;)V
    .locals 5
    .param p1, "loginModel"    # Labx;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 281
    iput-object p1, p0, Lacr;->c:Labx;

    .line 2432
    iget-object v0, p0, Lacr;->c:Labx;

    if-eqz v0, :cond_0

    .line 2433
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2435
    const/16 v1, 0x8

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "saveLoginModelToLocal mode:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacr;->c:Labx;

    iget-object v3, v3, Labx;->a:Ljava/lang/Integer;

    .line 2436
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " dingMail:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lacr;->c:Labx;

    iget-object v3, v3, Labx;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, " dingOrgMail:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lacr;->c:Labx;

    iget-object v3, v3, Labx;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, " allowModifyDingtalkALias:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lacr;->c:Labx;

    iget-object v3, v3, Labx;->c:Ljava/lang/Boolean;

    .line 2442
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2435
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 2444
    const-string/jumbo v1, "loginMode"

    iget-object v2, p0, Lacr;->c:Labx;

    iget-object v2, v2, Labx;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2445
    const-string/jumbo v1, "dingtalkMail"

    iget-object v2, p0, Lacr;->c:Labx;

    iget-object v2, v2, Labx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2446
    const-string/jumbo v1, "dingtalkOrgMail"

    iget-object v2, p0, Lacr;->c:Labx;

    iget-object v2, v2, Labx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2447
    const-string/jumbo v1, "allowModifyDingtalkALias"

    iget-object v2, p0, Lacr;->c:Labx;

    iget-object v2, v2, Labx;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2448
    const-string/jumbo v1, "pref_key_mail_login_mode"

    .line 2449
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2448
    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Labx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p1, Labx;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lacr;->a(I)V

    .line 292
    :goto_1
    return-void

    .line 3299
    :cond_1
    invoke-virtual {p0, v4}, Lacr;->a(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 768
    invoke-static {p1}, Lafh;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 770
    :cond_0
    if-eqz p2, :cond_1

    .line 771
    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 790
    :cond_1
    :goto_0
    return-void

    .line 5246
    :cond_2
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 776
    invoke-interface {v2, p1, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 778
    if-eqz p2, :cond_3

    .line 779
    invoke-interface {p2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 782
    :cond_3
    iget-object v3, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v3

    .line 783
    :try_start_0
    iget-object v2, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 784
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 785
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacr$a;

    .line 786
    .local v1, "listener":Lacr$a;
    if-eqz v1, :cond_4

    .line 787
    invoke-interface {v1, p1}, Lacr$a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 790
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    .end local v1    # "listener":Lacr$a;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lacr$a;>;"
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 2
    .param p1, "orgEmail"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 907
    const-string/jumbo v0, "tryLoginNewOrgEmail, orgEmail"

    invoke-static {v0, p1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-static {p1}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 911
    if-eqz p3, :cond_0

    .line 912
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->LOCAL_EMAIL_INVALID_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->LOCAL_EMAIL_INVALID_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v0

    if-nez v0, :cond_2

    .line 919
    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    :cond_2
    if-eqz p3, :cond_0

    .line 922
    invoke-interface {p3, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 928
    :cond_3
    invoke-virtual {p0}, Lacr;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 929
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lacr;->a(Ljava/lang/String;Z)V

    .line 930
    if-eqz p3, :cond_0

    .line 931
    invoke-interface {p3, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 937
    :cond_4
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    new-instance v1, Lacr$6;

    invoke-direct {v1, p0, p1, p3}, Lacr$6;-><init>(Lacr;Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, p2, p1, v1}, Lro;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZLcma;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "forceSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1139
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    if-nez p2, :cond_1

    iget-object v1, p0, Lacr;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    if-eqz p3, :cond_0

    .line 1141
    iget-object v1, p0, Lacr;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    new-instance v0, Lacr$9;

    invoke-direct {v0, p0, p3, p1}, Lacr$9;-><init>(Lacr;Lcma;Ljava/lang/String;)V

    .line 1227
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Labr;>;>;"
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 6166
    const-string/jumbo v2, "MailRPC"

    const-string/jumbo v3, "listEmailSignatureV2"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6167
    new-instance v2, Lro$31;

    invoke-direct {v2, v1, v0}, Lro$31;-><init>(Lro;Lcma;)V

    .line 6184
    iget-object v1, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->listEmailSignatureV2(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Laca;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 1061
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lacr;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 134
    iget-boolean v2, p0, Lacr;->r:Z

    if-eqz v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lacr;->p()V

    .line 139
    const/4 v2, 0x0

    iput v2, p0, Lacr;->e:I

    .line 141
    iget-object v2, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 142
    new-instance v2, Lacr$1;

    invoke-direct {v2, p0}, Lacr$1;-><init>(Lacr;)V

    iput-object v2, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "action_dingtalk_mail_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v2, "mail_new_org_mail"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v2, "mail_remove_org_mail"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v2, "action_ali_mail_token_expired"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v2, "action_mail_account_logout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, "action_mail_force_out_account"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v2, "action_mail_has_increment"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v2, "action_mail_operations"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v1, "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.alibaba.alimei.common.sdk.auth.failed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lacr;->d:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iput-object v2, p0, Lacr;->p:Ldq;

    .line 207
    iget-object v2, p0, Lacr;->p:Ldq;

    iget-object v3, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 209
    iget-object v2, p0, Lacr;->d:Landroid/content/Context;

    iget-object v3, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "systemFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v2

    .line 2057
    iget-object v3, v2, Lafa;->b:Lblc;

    if-nez v3, :cond_2

    .line 2058
    new-instance v3, Lafa$1;

    invoke-direct {v3, v2}, Lafa$1;-><init>(Lafa;)V

    iput-object v3, v2, Lafa;->b:Lblc;

    .line 2065
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->C:Ljava/lang/String;

    iget-object v2, v2, Lafa;->b:Lblc;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lacr;->h()Labx;

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lacr;->r:Z

    goto/16 :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Lacr;->c:Labx;

    if-nez v1, :cond_0

    .line 219
    const-string/jumbo v1, "MultiMailManager"

    const-string/jumbo v2, "loginModel is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lacr;->n()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "accountName":Ljava/lang/String;
    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "dingtalkMail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1271
    .line 6275
    invoke-static {p1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacr;->c:Labx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacr;->c:Labx;

    iget-object v0, v0, Labx;->b:Ljava/lang/String;

    .line 6277
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6281
    :cond_0
    :goto_0
    return-void

    .line 6284
    :cond_1
    const-string/jumbo v0, "MultiMailManager"

    const-string/jumbo v1, "tryResetDingtalkMail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6285
    iget-object v0, p0, Lacr;->c:Labx;

    iput-object p1, v0, Labx;->b:Ljava/lang/String;

    .line 6286
    iget-object v0, p0, Lacr;->c:Labx;

    invoke-virtual {p0, v0}, Lacr;->a(Labx;)V

    .line 6287
    invoke-virtual {p0}, Lacr;->p()V

    .line 6288
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 6289
    iget-object v1, p0, Lacr;->d:Landroid/content/Context;

    invoke-static {}, Lacr;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacr$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lacr$2;-><init>(Lacr;Ljava/lang/String;Lcma;)V

    invoke-static {v1, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 242
    iget v0, p0, Lacr;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lacr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Labx;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lacr;->c:Labx;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lacr;->c:Labx;

    .line 271
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-static {}, Lacr;->r()Labx;

    move-result-object v0

    iput-object v0, p0, Lacr;->c:Labx;

    .line 269
    iget-object v0, p0, Lacr;->c:Labx;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lacr;->e:I

    .line 271
    iget-object v0, p0, Lacr;->c:Labx;

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lacr;->c:Labx;

    iget-object v0, v0, Labx;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public final i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 318
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacr;->a:Ljava/lang/String;

    .line 321
    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacr;->b:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lacr;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    iget-object v1, p0, Lacr;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    iget-object v0, p0, Lacr;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    iget-object v1, p0, Lacr;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    const-string/jumbo v0, "MultiMailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "all login accountNames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lacr;->o:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lacr;->i()Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_0
    return-object v1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 469
    iget-object v1, p0, Lacr;->c:Labx;

    if-nez v1, :cond_1

    .line 470
    const/4 v0, 0x0

    .line 478
    :cond_0
    :goto_0
    return-object v0

    .line 473
    :cond_1
    iget-object v1, p0, Lacr;->c:Labx;

    iget-object v0, v1, Labx;->b:Ljava/lang/String;

    .line 474
    .local v0, "dingtalkMail":Ljava/lang/String;
    iget-object v1, p0, Lacr;->c:Labx;

    iget-object v1, v1, Labx;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    iget-object v1, p0, Lacr;->c:Labx;

    iget-object v0, v1, Labx;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lacr;->c:Labx;

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lacr;->c:Labx;

    iget-object v0, v0, Labx;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    :cond_0
    iput-object v1, p0, Lacr;->a:Ljava/lang/String;

    .line 515
    iput-object v1, p0, Lacr;->b:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public final q()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1430
    iget-object v0, p0, Lacr;->p:Ldq;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lacr;->p:Ldq;

    iget-object v1, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1432
    iget-object v0, p0, Lacr;->d:Landroid/content/Context;

    iget-object v1, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1433
    iput-object v3, p0, Lacr;->p:Ldq;

    .line 1434
    iput-object v3, p0, Lacr;->q:Landroid/content/BroadcastReceiver;

    .line 1437
    :cond_0
    iget-object v0, p0, Lacr;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1438
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1439
    iget-object v1, p0, Lacr;->j:Ljava/util/List;

    monitor-enter v1

    .line 1440
    :try_start_0
    iget-object v0, p0, Lacr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    :cond_1
    iput-object v3, p0, Lacr;->h:Ljava/util/ArrayList;

    .line 1445
    iput-object v3, p0, Lacr;->a:Ljava/lang/String;

    .line 1446
    iput-object v3, p0, Lacr;->b:Ljava/lang/String;

    .line 1447
    iput-object v3, p0, Lacr;->c:Labx;

    .line 1448
    iput v2, p0, Lacr;->e:I

    .line 1450
    iput-boolean v2, p0, Lacr;->r:Z

    .line 1451
    iput-boolean v2, p0, Lacr;->l:Z

    .line 1452
    iput v2, p0, Lacr;->f:I

    .line 1456
    invoke-static {}, Lacg;->d()V

    .line 1457
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v1

    .line 6415
    const/4 v0, 0x1

    iput-boolean v0, v1, Lacp;->b:Z

    .line 6417
    iget-object v0, v1, Lacp;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6419
    iget-object v0, v1, Lacp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6420
    iget-object v0, v1, Lacp;->c:Ljava/util/List;

    iget-object v2, v1, Lacp;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacp$b;

    .line 6421
    invoke-static {v0}, Lacp;->a(Lacp$b;)V

    .line 6423
    :cond_2
    iget-object v0, v1, Lacp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1458
    :cond_3
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v0

    .line 7071
    iget-object v1, v0, Lafa;->b:Lblc;

    if-eqz v1, :cond_4

    .line 7072
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 7073
    iput-object v3, v0, Lafa;->b:Lblc;

    .line 1459
    :cond_4
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v0

    .line 7159
    iget-object v0, v0, Lafc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1461
    sget-object v1, Lacr;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 1462
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lacr;->m:Lacr;

    .line 1463
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1441
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1463
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
