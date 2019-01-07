.class public final Ldei;
.super Ljava/lang/Object;
.source "FaceToFaceCreatePresenter.java"

# interfaces
.implements Ldeg$a;


# instance fields
.field a:Ldeg$b;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldeg$b;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Ldeg$b;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ldei;->b:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Ldei;->a:Ldeg$b;

    .line 28
    iget-object v0, p0, Ldei;->a:Ldeg$b;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "FaceToFaceCreatePresenter param view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iget-object v0, p0, Ldei;->a:Ldeg$b;

    invoke-interface {v0, p0}, Ldeg$b;->setPresenter(Lcjd;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;DD)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D

    .prologue
    .line 39
    new-instance v0, Ldei$1;

    invoke-direct {v0, p0}, Ldei$1;-><init>(Ldei;)V

    .line 59
    .local v0, "listener":Lcma;, "Lcma<Ldel;>;"
    iget-object v1, p0, Ldei;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Ldei;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ldel;>;"
    check-cast v0, Lcma;

    .line 63
    .restart local v0    # "listener":Lcma;, "Lcma<Ldel;>;"
    :cond_0
    invoke-static {}, Lden;->a()Lden;

    move-result-object v1

    .line 1041
    if-eqz v0, :cond_2

    .line 1044
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 1045
    :cond_1
    const-string/jumbo v1, ""

    const-string/jumbo v2, "code is invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_2
    :goto_0
    return-void

    .line 1049
    :cond_3
    iget-object v2, v1, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    if-eqz v2, :cond_2

    .line 1050
    new-instance v2, Ldem;

    invoke-direct {v2}, Ldem;-><init>()V

    .line 1051
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldem;->a:Ljava/lang/String;

    .line 1052
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldem;->b:Ljava/lang/String;

    .line 1053
    iget-object v3, v1, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    new-instance v4, Lden$1;

    invoke-direct {v4, v1, v0}, Lden$1;-><init>(Lden;Lcma;)V

    invoke-interface {v3, p1, v2, v4}, Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;->createF2FGroup(Ljava/lang/String;Ldem;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    new-instance v0, Ldei$3;

    invoke-direct {v0, p0}, Ldei$3;-><init>(Ldei;)V

    .line 117
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v1, p0, Ldei;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Ldei;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 121
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_0
    invoke-static {}, Lden;->a()Lden;

    move-result-object v1

    .line 1110
    if-eqz v0, :cond_2

    .line 1113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 1114
    :cond_1
    const-string/jumbo v1, ""

    const-string/jumbo v2, "code is invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_2
    :goto_0
    return-void

    .line 1118
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1119
    const-string/jumbo v1, ""

    const-string/jumbo v2, "cid is invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    :cond_4
    iget-object v2, v1, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    if-eqz v2, :cond_2

    .line 1124
    iget-object v2, v1, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    new-instance v3, Lden$3;

    invoke-direct {v3, v1, v0}, Lden$3;-><init>(Lden;Lcma;)V

    invoke-interface {v2, p1, p2, v3}, Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;->joinF2FGroup(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "longitude"    # D
    .param p5, "latitude"    # D

    .prologue
    .line 68
    new-instance v0, Ldei$2;

    invoke-direct {v0, p0}, Ldei$2;-><init>(Ldei;)V

    .line 88
    .local v0, "listener":Lcma;, "Lcma<Ldel;>;"
    iget-object v1, p0, Ldei;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Ldei;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ldel;>;"
    check-cast v0, Lcma;

    .line 92
    .restart local v0    # "listener":Lcma;, "Lcma<Ldel;>;"
    :cond_0
    invoke-static {}, Lden;->a()Lden;

    move-result-object v1

    .line 1073
    if-eqz v0, :cond_2

    .line 1076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 1077
    :cond_1
    const-string/jumbo v1, ""

    const-string/jumbo v2, "code is invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_2
    :goto_0
    return-void

    .line 1081
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1082
    const-string/jumbo v1, ""

    const-string/jumbo v2, "cid is invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_4
    iget-object v2, v1, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    if-eqz v2, :cond_2

    .line 1087
    new-instance v2, Ldem;

    invoke-direct {v2}, Ldem;-><init>()V

    .line 1088
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldem;->a:Ljava/lang/String;

    .line 1089
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldem;->b:Ljava/lang/String;

    .line 1090
    iget-object v3, v1, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    new-instance v4, Lden$2;

    invoke-direct {v4, v1, v0}, Lden$2;-><init>(Lden;Lcma;)V

    invoke-interface {v3, p1, p2, v2, v4}, Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;->syncF2FMembers(Ljava/lang/String;Ljava/lang/String;Ldem;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    iget-object v1, p0, Ldei;->a:Ldeg$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ldeg$b;->a(Ljava/util/List;)V

    .line 156
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Ldei$4;

    invoke-direct {v0, p0}, Ldei$4;-><init>(Ldei;)V

    .line 152
    .local v0, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    iget-object v1, p0, Ldei;->b:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 153
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Ldei;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    check-cast v0, Lcma;

    .line 155
    .restart local v0    # "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
