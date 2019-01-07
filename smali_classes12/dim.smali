.class public final Ldim;
.super Ljava/lang/Object;
.source "ConversationMembersFetcher.java"


# instance fields
.field public a:Ljava/lang/String;

.field b:Lcom/alibaba/wukong/im/Conversation;

.field c:Z

.field d:J

.field e:Z

.field f:I

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;"
        }
    .end annotation
.end field

.field h:J

.field public i:Z

.field private final j:I

.field private k:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;>;"
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1f4

    iput v0, p0, Ldim;->j:I

    .line 54
    iput v1, p0, Ldim;->f:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldim;->g:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Ldim;->a:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Ldim;->k:Lcom/alibaba/wukong/Callback;

    .line 62
    if-eqz p3, :cond_0

    .line 63
    const-string/jumbo v0, "intent_key_contains_robot"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldim;->c:Z

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic a(Ldim;)V
    .locals 8
    .param p0, "x0"    # Ldim;

    .prologue
    .line 45
    .line 1324
    iget-object v0, p0, Ldim;->k:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1325
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;-><init>()V

    .line 1326
    iget-object v0, p0, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1327
    iget-object v0, p0, Ldim;->g:Ljava/util/ArrayList;

    .line 2196
    if-nez v0, :cond_1

    .line 2197
    const/4 v0, 0x0

    .line 1327
    :goto_0
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;->mUserIdentityObjectList:Ljava/util/List;

    .line 1328
    iget-object v0, p0, Ldim;->k:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void

    .line 2199
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 2201
    if-eqz v0, :cond_2

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_2

    .line 2202
    iget-object v4, v0, Ldqw;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Ldqw;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2203
    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v0, Ldqw;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 2204
    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v0, Ldqw;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 2206
    :cond_3
    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 2207
    if-eqz v4, :cond_2

    .line 2208
    iget-wide v6, v0, Ldqw;->d:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 2209
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2213
    goto :goto_0
.end method

.method static synthetic a(Ldim;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "x0"    # Ldim;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    .line 1171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1173
    const/16 v0, 0x1f4

    if-le v2, v0, :cond_2

    .line 1174
    rem-int/lit16 v0, v2, 0x1f4

    if-nez v0, :cond_0

    div-int/lit16 v0, v2, 0x1f4

    .line 1175
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 1176
    mul-int/lit16 v5, v3, 0x1f4

    .line 1177
    add-int/lit16 v1, v5, 0x1f4

    if-le v1, v2, :cond_1

    move v1, v2

    .line 1178
    :goto_2
    invoke-virtual {p1, v5, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1179
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1174
    :cond_0
    div-int/lit16 v0, v2, 0x1f4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    add-int/lit16 v1, v5, 0x1f4

    goto :goto_2

    .line 1182
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_3
    iget-boolean v0, p0, Ldim;->e:Z

    if-eqz v0, :cond_4

    .line 1186
    invoke-virtual {p0, v4}, Ldim;->a(Ljava/util/List;)V

    :goto_3
    return-void

    .line 1188
    :cond_4
    invoke-virtual {p0, v4}, Ldim;->b(Ljava/util/List;)V

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v0, p0, Ldim;->k:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Ldim;->k:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "uidLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v4, 0x1

    .line 195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 196
    .local v8, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashSet;

    iget v0, p0, Ldim;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v7, "hashSet":Ljava/util/HashSet;
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    new-instance v6, Ldim$3;

    invoke-direct {v6, p0, v8, p1}, Ldim$3;-><init>(Ldim;ILjava/util/List;)V

    .line 241
    .local v6, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Ldim;->h:J

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZLcma;)V

    .line 243
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "uidLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v9, 0x1

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 248
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget v4, p0, Ldim;->f:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget v4, p0, Ldim;->f:I

    if-gez v4, :cond_1

    .line 250
    :cond_0
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "MembersFetcher getUserProfileBatches index exception,index="

    aput-object v8, v6, v7

    iget v7, p0, Ldim;->f:I

    .line 251
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, ",size:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v4, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    iget v4, p0, Ldim;->f:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v1, "hashSet":Ljava/util/HashSet;
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    new-instance v0, Ldim$4;

    invoke-direct {v0, p0, v3, v2, p1}, Ldim$4;-><init>(Ldim;Ljava/util/List;ILjava/util/List;)V

    .line 320
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v9, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(ZLjava/util/List;Lcma;)V

    goto :goto_0
.end method
