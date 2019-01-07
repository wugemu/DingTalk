.class public Lfxa;
.super Ljava/lang/Object;
.source "NameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfxa$a;
    }
.end annotation


# static fields
.field private static volatile b:Lfxa;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Lfxa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfxa;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;JJ)Lckl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 161
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 162
    .local v6, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_1

    .line 163
    new-instance v0, Lckl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 164
    .local v0, "nameWrapper":Lckl;
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 165
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 1051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 171
    .end local v0    # "nameWrapper":Lckl;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lfxa;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lfxa;->b:Lfxa;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lfxa;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lfxa;->b:Lfxa;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lfxa;

    invoke-direct {v0}, Lfxa;-><init>()V

    sput-object v0, Lfxa;->b:Lfxa;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lfxa;->b:Lfxa;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/alibaba/wukong/Callback;Lckl;)V
    .locals 0
    .param p1, "nameWrapper"    # Lckl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lckl;",
            ">;",
            "Lckl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lckl;>;"
    if-eqz p0, :cond_0

    .line 753
    invoke-interface {p0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 755
    :cond_0
    return-void
.end method

.method private static a(Lfxa$a;Lckl;)V
    .locals 0
    .param p0, "callback"    # Lfxa$a;
    .param p1, "nameWrapper"    # Lckl;

    .prologue
    .line 758
    if-eqz p0, :cond_0

    .line 759
    invoke-interface {p0, p1}, Lfxa$a;->a(Lckl;)V

    .line 761
    :cond_0
    return-void
.end method

.method static synthetic a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V
    .locals 0
    .param p0, "x0"    # Lfxa;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;
    .param p2, "x2"    # Lckl;

    .prologue
    .line 51
    invoke-static {p1, p2}, Lfxa;->a(Lcom/alibaba/wukong/Callback;Lckl;)V

    return-void
.end method

.method static synthetic a(Lfxa;Lfxa$a;Lckl;)V
    .locals 0
    .param p0, "x0"    # Lfxa;
    .param p1, "x1"    # Lfxa$a;
    .param p2, "x2"    # Lckl;

    .prologue
    .line 51
    invoke-static {p1, p2}, Lfxa;->a(Lfxa$a;Lckl;)V

    return-void
.end method

.method static synthetic a(Lfxa;Ljava/lang/String;JJLfxa$a;)V
    .locals 0
    .param p0, "x0"    # Lfxa;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lfxa$a;

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p6}, Lfxa;->a(Ljava/lang/String;JJLfxa$a;)V

    return-void
.end method

.method private static b(Ljava/lang/String;JJ)Lckl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 476
    invoke-static {p1, p2, p3, p4}, Lfbm;->b(JJ)Lfrw;

    move-result-object v6

    .line 477
    .local v6, "orgUserNameObject":Lfrw;
    if-eqz v6, :cond_1

    .line 478
    new-instance v0, Lckl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 479
    .local v0, "nameWrapper":Lckl;
    iget-object v1, v6, Lfrw;->c:Ljava/lang/String;

    .line 6043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 480
    iget-object v1, v6, Lfrw;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, v6, Lfrw;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lfrw;->e:Ljava/lang/String;

    .line 483
    :cond_0
    iget-object v1, v6, Lfrw;->e:Ljava/lang/String;

    .line 6051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 486
    .end local v0    # "nameWrapper":Lckl;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lfxa;Ljava/lang/String;JJLfxa$a;)V
    .locals 0
    .param p0, "x0"    # Lfxa;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lfxa$a;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lfxa;->d(Ljava/lang/String;JJLfxa$a;)V

    return-void
.end method

.method private b(Ljava/lang/String;JJLfxa$a;)V
    .locals 16
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "callback"    # Lfxa$a;

    .prologue
    .line 490
    new-instance v4, Lckl;

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 491
    .local v4, "result":Lckl;
    invoke-static/range {p2 .. p5}, Lfbm;->b(JJ)Lfrw;

    move-result-object v14

    .line 492
    .local v14, "orgUserNameObject":Lfrw;
    if-eqz v14, :cond_2

    .line 493
    iget-object v5, v14, Lfrw;->c:Ljava/lang/String;

    .line 7043
    iput-object v5, v4, Lckl;->d:Ljava/lang/String;

    .line 494
    iget-object v5, v14, Lfrw;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 495
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v5

    iget-object v6, v14, Lfrw;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lfrw;->e:Ljava/lang/String;

    .line 496
    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3, v14}, Lfbm;->a(JJLfrw;)V

    .line 498
    :cond_0
    iget-object v5, v14, Lfrw;->e:Ljava/lang/String;

    .line 7051
    iput-object v5, v4, Lckl;->e:Ljava/lang/String;

    .line 499
    if-eqz p6, :cond_1

    .line 500
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lfxa$a;->a(Lckl;)V

    .line 609
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lfxa;->a:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Lfxa$11;

    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object v12, v4

    move-object/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lfxa$11;-><init>(Lfxa;JJLckl;Lfxa$a;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;JJ)Lckl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 656
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 657
    .local v6, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_1

    .line 658
    new-instance v0, Lckl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 659
    .local v0, "nameWrapper":Lckl;
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 9043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 660
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 663
    :cond_0
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 9051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 666
    .end local v0    # "nameWrapper":Lckl;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lfxa;Ljava/lang/String;JJLfxa$a;)V
    .locals 0
    .param p0, "x0"    # Lfxa;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lfxa$a;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lfxa;->b(Ljava/lang/String;JJLfxa$a;)V

    return-void
.end method

.method private c(Ljava/lang/String;JJLfxa$a;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "callback"    # Lfxa$a;

    .prologue
    .line 670
    new-instance v0, Lckl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 671
    .local v0, "result":Lckl;
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 672
    .local v6, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_1

    .line 673
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 10043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 674
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 676
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, v6}, Lfbn;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 678
    :cond_0
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 10051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 679
    invoke-static {p6, v0}, Lfxa;->a(Lfxa$a;Lckl;)V

    .line 706
    :goto_0
    return-void

    .line 682
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    new-instance v2, Lfxa$2;

    invoke-direct {v2, p0, v0, p6}, Lfxa$2;-><init>(Lfxa;Lckl;Lfxa$a;)V

    invoke-interface {v1, p4, p5, v2}, Lfac;->a(JLcma;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;JJ)Lckl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 709
    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickService;

    const/4 v2, 0x1

    invoke-interface {v1, p0, p3, p4, v2}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v6

    .line 710
    .local v6, "groupNick":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v6, :cond_0

    .line 711
    new-instance v0, Lckl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 712
    .local v0, "nameWrapper":Lckl;
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    .line 11043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 713
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v1

    .line 11051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 716
    .end local v0    # "nameWrapper":Lckl;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;JJLfxa$a;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "callback"    # Lfxa$a;

    .prologue
    .line 720
    new-instance v0, Lckl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 721
    .local v0, "result":Lckl;
    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickService;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p4, p5, v2}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v6

    .line 722
    .local v6, "groupNick":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v6, :cond_0

    .line 723
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    .line 12043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 724
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v1

    .line 12051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 725
    invoke-static {p6, v0}, Lfxa;->a(Lfxa$a;Lckl;)V

    .line 749
    :goto_0
    return-void

    .line 728
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickService;

    new-instance v2, Lfxa$3;

    invoke-direct {v2, p0, v0, p6}, Lfxa$3;-><init>(Lfxa;Lckl;Lfxa$a;)V

    invoke-interface {v1, p1, p4, p5, v2}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ZLjava/lang/String;JJ)Lckl;
    .locals 3
    .param p1, "showAlias"    # Z
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "uid"    # J

    .prologue
    .line 192
    if-eqz p1, :cond_2

    .line 193
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->c(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 194
    .local v0, "nameWrapper":Lckl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 207
    :goto_0
    return-object v1

    .line 197
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->d(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->a(Ljava/lang/String;JJ)Lckl;

    move-result-object v1

    goto :goto_0

    .line 203
    .end local v0    # "nameWrapper":Lckl;
    :cond_2
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->d(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 204
    .restart local v0    # "nameWrapper":Lckl;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 205
    goto :goto_0

    .line 207
    :cond_3
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->a(Ljava/lang/String;JJ)Lckl;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JJLfxa$a;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "callback"    # Lfxa$a;

    .prologue
    .line 612
    new-instance v0, Lckl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 613
    .local v0, "result":Lckl;
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 615
    .local v6, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_1

    .line 616
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 8043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 617
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 619
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v1

    invoke-virtual {v1, v6}, Lfbn;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 621
    :cond_0
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 8051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 622
    invoke-static {p6, v0}, Lfxa;->a(Lfxa$a;Lckl;)V

    .line 653
    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    new-instance v2, Lfxa$12;

    invoke-direct {v2, p0, v0, p6}, Lfxa$12;-><init>(Lfxa;Lckl;Lfxa$a;)V

    invoke-interface {v1, p4, p5, v2}, Lfac;->a(JLcma;)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "showAlias"    # Z
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lckl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lckl;>;"
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Lfxa$5;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lfxa$5;-><init>(Lfxa;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JJ)V

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lfxa;->c(Ljava/lang/String;JJLfxa$a;)V

    .line 257
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lfxa$6;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lfxa$6;-><init>(Lfxa;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JJ)V

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lfxa;->d(Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0
.end method

.method public b(ZLjava/lang/String;JJ)Lckl;
    .locals 9
    .param p1, "showAlias"    # Z
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "uid"    # J

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->c(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 266
    .local v0, "nameWrapper":Lckl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 288
    :goto_0
    return-object v2

    .line 270
    .end local v0    # "nameWrapper":Lckl;
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->b(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 271
    .restart local v0    # "nameWrapper":Lckl;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->d(Ljava/lang/String;JJ)Lckl;

    move-result-object v1

    .line 273
    .local v1, "tempNameWrapper":Lckl;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lckl;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    new-array v2, v3, [Ljava/lang/String;

    .line 2039
    iget-object v3, v0, Lckl;->d:Ljava/lang/String;

    .line 274
    aput-object v3, v2, v4

    const-string/jumbo v3, "("

    aput-object v3, v2, v5

    .line 3039
    iget-object v3, v1, Lckl;->d:Ljava/lang/String;

    .line 274
    aput-object v3, v2, v6

    const-string/jumbo v3, ")"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3043
    iput-object v2, v0, Lckl;->d:Ljava/lang/String;

    move-object v2, v0

    .line 275
    goto :goto_0

    .line 277
    :cond_1
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->a(Ljava/lang/String;JJ)Lckl;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lckl;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    new-array v2, v3, [Ljava/lang/String;

    .line 4039
    iget-object v3, v0, Lckl;->d:Ljava/lang/String;

    .line 279
    aput-object v3, v2, v4

    const-string/jumbo v3, "("

    aput-object v3, v2, v5

    .line 5039
    iget-object v3, v1, Lckl;->d:Ljava/lang/String;

    .line 279
    aput-object v3, v2, v6

    const-string/jumbo v3, ")"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5043
    iput-object v2, v0, Lckl;->d:Ljava/lang/String;

    move-object v2, v0

    .line 280
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 282
    goto :goto_0

    .line 284
    .end local v1    # "tempNameWrapper":Lckl;
    :cond_3
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->d(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 286
    goto :goto_0

    .line 288
    :cond_4
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->a(Ljava/lang/String;JJ)Lckl;

    move-result-object v2

    goto :goto_0
.end method

.method public b(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "showAlias"    # Z
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lckl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lckl;>;"
    if-eqz p1, :cond_0

    .line 318
    new-instance v0, Lfxa$7;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lfxa$7;-><init>(Lfxa;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JJ)V

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lfxa;->c(Ljava/lang/String;JJLfxa$a;)V

    .line 407
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v1, Lfxa$8;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lfxa$8;-><init>(Lfxa;Ljava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lfxa;->b(Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0
.end method

.method public c(ZLjava/lang/String;JJ)Lckl;
    .locals 3
    .param p1, "showAlias"    # Z
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "uid"    # J

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->c(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 298
    .local v0, "nameWrapper":Lckl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 310
    :goto_0
    return-object v1

    .line 302
    .end local v0    # "nameWrapper":Lckl;
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->b(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 303
    .restart local v0    # "nameWrapper":Lckl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 304
    goto :goto_0

    .line 306
    :cond_1
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->d(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 308
    goto :goto_0

    .line 310
    :cond_2
    invoke-static {p2, p3, p4, p5, p6}, Lfxa;->a(Ljava/lang/String;JJ)Lckl;

    move-result-object v1

    goto :goto_0
.end method

.method public c(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "showAlias"    # Z
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lckl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lckl;>;"
    if-eqz p1, :cond_0

    .line 414
    new-instance v0, Lfxa$9;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lfxa$9;-><init>(Lfxa;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JJ)V

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lfxa;->c(Ljava/lang/String;JJLfxa$a;)V

    .line 473
    :goto_0
    return-void

    .line 448
    :cond_0
    new-instance v0, Lfxa$10;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lfxa$10;-><init>(Lfxa;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JJ)V

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lfxa;->b(Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0
.end method
