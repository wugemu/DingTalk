.class public final Lfga;
.super Lclj;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lffz$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclj",
        "<",
        "Lffz$b;",
        ">;",
        "Lffz$a;"
    }
.end annotation


# instance fields
.field public b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

.field public c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lclj;-><init>()V

    return-void
.end method

.method static synthetic a(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic a(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    .locals 0
    .param p0, "x0"    # Lfga;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .prologue
    .line 40
    iput-object p1, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    return-object p1
.end method

.method static synthetic a(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    .locals 0
    .param p0, "x0"    # Lfga;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .prologue
    .line 40
    iput-object p1, p0, Lfga;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    return-object p1
.end method

.method public static a(J)Z
    .locals 6
    .param p0, "uid"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 107
    const-string/jumbo v2, "BusinessRequestPresenter"

    const-string/jumbo v3, "error uid: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic c(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic d(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic e(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic f(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic g(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic h(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic i(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic j(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic k(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic l(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic m(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic n(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic o(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic p(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic q(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic r(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic s(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic t(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic u(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method

.method static synthetic v(Lfga;)Lcli;
    .locals 1
    .param p0, "x0"    # Lfga;

    .prologue
    .line 40
    iget-object v0, p0, Lfga;->a:Lcli;

    return-object v0
.end method


# virtual methods
.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;I)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    .param p4, "tag"    # I

    .prologue
    .line 193
    invoke-static {p1, p2}, Lfga;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    invoke-interface {v1}, Lffz$b;->showLoadingDialog()V

    .line 197
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lfga$5;

    invoke-direct {v3, p0, p4}, Lfga$5;-><init>(Lfga;I)V

    const-class v4, Lcma;

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    .line 221
    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    .line 197
    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 223
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lezv;->a(JLcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p4, "isShowMobile"    # Z

    .prologue
    .line 115
    invoke-static {p1, p2}, Lfga;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfga;->a:Lcli;

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lfga;->a:Lcli;

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->showLoadingDialog()V

    .line 119
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    new-instance v0, Lfga$3;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lfga$3;-><init>(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZJ)V

    const-class v2, Lcma;

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    .line 148
    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    .line 119
    invoke-interface {v7, v0, v2, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 150
    .local v6, "apiEventListener":Lcma;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v6}, Lezv;->a(JZLcma;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZZLcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p4, "isShowMobile"    # Z
    .param p5, "confirmed"    # Z
    .param p6, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;

    .prologue
    .line 155
    invoke-static {p1, p2}, Lfga;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfga;->a:Lcli;

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lfga;->a:Lcli;

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->showLoadingDialog()V

    .line 159
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    new-instance v0, Lfga$4;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lfga$4;-><init>(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZJ)V

    const-class v2, Lcma;

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    .line 187
    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    .line 159
    invoke-interface {v7, v0, v2, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 188
    .local v6, "apiEventListener":Lcma;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-wide v2, p1

    move-object v5, p6

    invoke-interface/range {v1 .. v6}, Lezv;->a(JLjava/lang/Boolean;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "remark"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lfga;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    iput-wide p1, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    .line 314
    iget-object v1, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    iput-object p3, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->alias:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    iput-object p4, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->remark:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    iput-object p5, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->tags:Ljava/util/List;

    .line 317
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lfga$8;

    invoke-direct {v3, p0}, Lfga$8;-><init>(Lfga;)V

    const-class v4, Lcma;

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    .line 332
    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    .line 317
    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 333
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-object v2, p0, Lfga;->c:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    invoke-interface {v1, v2, v0}, Lezv;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 84
    const-string/jumbo v0, "jumpToChatMsg conversation null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lfga;->a:Lcli;

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lfga;->a:Lcli;

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lfga$2;

    invoke-direct {v2, p0, p1}, Lfga$2;-><init>(Lfga;Lcom/alibaba/wukong/im/Conversation;)V

    .line 91
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 248
    invoke-static {p1, p2}, Lfga;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    invoke-interface {v1}, Lffz$b;->showLoadingDialog()V

    .line 252
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lfga$6;

    invoke-direct {v3, p0}, Lfga$6;-><init>(Lfga;)V

    const-class v4, Lcma;

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    .line 275
    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    .line 252
    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 276
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lezv;->c(JLcma;)V

    goto :goto_0
.end method

.method public final c(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 281
    invoke-static {p1, p2}, Lfga;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lfga$7;

    invoke-direct {v3, p0}, Lfga$7;-><init>(Lfga;)V

    const-class v4, Lcma;

    iget-object v1, p0, Lfga;->a:Lcli;

    check-cast v1, Lffz$b;

    .line 304
    invoke-interface {v1}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v1

    .line 284
    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 305
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lezv;->d(JLcma;)V

    goto :goto_0
.end method
