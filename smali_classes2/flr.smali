.class public Lflr;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lflr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lflr;->c:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lflr;->a:Z

    .line 90
    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lflr;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 4
    .param p0, "uid"    # J

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "commonObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->d()Lfmo;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lfmo;->b(J)Lcom/alibaba/android/user/entry/CommonContactEntry;

    move-result-object v1

    .line 442
    .local v1, "existEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    if-eqz v1, :cond_0

    .line 443
    invoke-static {v1}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/CommonContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v0

    .line 446
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;
    .locals 1
    .param p0, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .prologue
    .line 630
    if-nez p0, :cond_0

    .line 631
    const-string/jumbo v0, ""

    .line 633
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 623
    if-nez p0, :cond_0

    .line 624
    const-string/jumbo v0, ""

    .line 626
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "uid"    # J
    .param p2, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 645
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->b()Lfmr;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lfmr;->a(J)Ljava/util/List;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 646
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->b()Lfmr;

    move-result-object v0

    invoke-interface {v0, p2}, Lfmr;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 10

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 93
    sget-boolean v3, Lflr;->a:Z

    if-eqz v3, :cond_0

    .line 181
    .local v2, "syncFriendsListener":Lcma;
    :goto_0
    return-void

    .line 96
    .end local v2    # "syncFriendsListener":Lcma;
    :cond_0
    sput-boolean v8, Lflr;->a:Z

    .line 97
    new-instance v2, Lflr$1;

    invoke-direct {v2}, Lflr$1;-><init>()V

    .line 153
    .restart local v2    # "syncFriendsListener":Lcma;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "friends_bulk_sync"

    invoke-virtual {v3, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const-string/jumbo v3, "pref_sync_friends_cursor"

    invoke-static {v3, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 155
    .local v0, "cursor":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 156
    sget-object v3, Lflr;->c:Ljava/lang/String;

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lflr$2;

    invoke-direct {v4, v2, v0, v1}, Lflr$2;-><init>(Lcma;J)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v3

    invoke-interface {v3, v0, v1, v9, v2}, Lezv;->a(JILcma;)V

    .line 175
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "get friend list, has cursor "

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    .end local v0    # "cursor":J
    :cond_2
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v3

    invoke-interface {v3, v6, v7, v9, v2}, Lezv;->a(JILcma;)V

    .line 179
    const-string/jumbo v3, "get friend list, 0 cursor"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;JLandroid/content/Context;)V
    .locals 8
    .param p0, "uid"    # J
    .param p2, "contactType"    # Ljava/lang/String;
    .param p3, "modifyTime"    # J
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 335
    .local v7, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 336
    const-string/jumbo v0, "common_contact_thread"

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 338
    new-instance v0, Lflr$4;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lflr$4;-><init>(JLjava/lang/String;JLandroid/content/Context;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 65
    .line 1190
    sget-object v0, Lflr;->c:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflr$3;

    invoke-direct {v1, p0, p1}, Lflr$3;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    .line 1674
    const-class v0, Lflr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflr$7;

    invoke-direct {v1, p0}, Lflr$7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 637
    if-nez p0, :cond_0

    .line 638
    const-string/jumbo v0, ""

    .line 640
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    sput-boolean v0, Lflr;->a:Z

    .line 294
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.friend_first_load"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 295
    return-void
.end method

.method public static b(J)V
    .locals 2
    .param p0, "uid"    # J

    .prologue
    .line 566
    sget-object v0, Lflr;->c:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflr$5;

    invoke-direct {v1, p0, p1}, Lflr$5;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->e()Lfmp;

    move-result-object v1

    invoke-interface {v1}, Lfmp;->a()Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->c()Lfna;

    move-result-object v1

    invoke-interface {v1, v0}, Lfna;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lflr;->c()Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->e()Lfmp;

    move-result-object v1

    invoke-interface {v1}, Lfmp;->a()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->c()Lfna;

    move-result-object v1

    invoke-interface {v1, v0}, Lfna;->e(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 655
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    new-instance v1, Lflr$6;

    invoke-direct {v1}, Lflr$6;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    .line 671
    return-void
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 712
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "team_config"

    const-string/jumbo v2, "info"

    new-instance v3, Lflr$8;

    invoke-direct {v3}, Lflr$8;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 728
    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lflr;->c:Ljava/lang/String;

    return-object v0
.end method
