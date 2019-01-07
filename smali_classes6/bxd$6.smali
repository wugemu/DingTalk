.class final Lbxd$6;
.super Lhzy;
.source "LvRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lbvh;",
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;J)V
    .locals 0

    .prologue
    .line 318
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;>;"
    iput-wide p2, p0, Lbxd$6;->a:J

    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 318
    check-cast p1, Lbvh;

    .line 1321
    iget-wide v6, p0, Lbxd$6;->a:J

    .line 2192
    if-nez p1, :cond_0

    .line 2193
    :goto_0
    return-object v1

    .line 2196
    :cond_0
    new-instance v4, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;-><init>()V

    .line 2197
    iget-object v0, p1, Lbvh;->a:Ljava/util/List;

    .line 3161
    if-nez v0, :cond_2

    move-object v0, v1

    .line 2197
    :goto_1
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;->liveViewers:Ljava/util/List;

    .line 2198
    iget-object v0, p1, Lbvh;->b:Ljava/lang/Integer;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_2
    iput-boolean v0, v4, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;->isEnd:Z

    .line 2199
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 2200
    if-eqz v0, :cond_1

    .line 2201
    new-instance v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;-><init>()V

    .line 2202
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->nick:Ljava/lang/String;

    .line 2203
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->avatarMedia:Ljava/lang/String;

    .line 2204
    iput-object v1, v4, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;->anchor:Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;

    :cond_1
    move-object v1, v4

    .line 318
    goto :goto_0

    .line 3165
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvn;

    .line 4142
    if-nez v0, :cond_4

    move-object v0, v1

    .line 3168
    :goto_4
    if-eqz v0, :cond_3

    .line 3169
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4146
    :cond_4
    new-instance v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;-><init>()V

    .line 4147
    iget-object v9, v0, Lbvn;->a:Ljava/lang/Long;

    invoke-static {v9}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->openId:J

    .line 4148
    iget-object v9, v0, Lbvn;->b:Ljava/lang/Long;

    invoke-static {v9}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->playDuration:J

    .line 4149
    iget-object v9, v0, Lbvn;->c:Ljava/lang/Integer;

    invoke-static {v9}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->status:J

    .line 4150
    iget-object v0, v0, Lbvn;->d:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->playRecordDuration:J

    .line 4151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v10, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->openId:J

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 4152
    if-eqz v0, :cond_5

    .line 4153
    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v9, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->nick:Ljava/lang/String;

    .line 4154
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveViewerObject;->avatarMedia:Ljava/lang/String;

    :cond_5
    move-object v0, v5

    .line 4157
    goto :goto_4

    :cond_6
    move-object v0, v2

    .line 3173
    goto/16 :goto_1

    .line 2198
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
