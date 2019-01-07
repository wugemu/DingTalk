.class public final Lfdm;
.super Ljava/lang/Object;
.source "ConnectionAPIImpl.java"

# interfaces
.implements Lfdk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdm$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static a(JLcmg;)Z
    .locals 4
    .param p0, "postId"    # J
    .param p2, "handlerExt"    # Lcmg;

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 55
    const-string/jumbo v0, "err_parameter"

    const-string/jumbo v1, "postId <= 0"

    .line 2033
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcmg;)Z
    .locals 3
    .param p1, "handlerExt"    # Lcmg;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    if-nez v0, :cond_0

    .line 44
    const-class v0, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    iput-object v0, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    .line 46
    :cond_0
    iget-object v0, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    if-nez v0, :cond_1

    .line 47
    const-string/jumbo v0, "err_parameter"

    const-string/jumbo v1, "service null."

    .line 1033
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(JJLcma;)V
    .locals 5
    .param p1, "postId"    # J
    .param p3, "commentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    new-instance v0, Lfdm$9;

    invoke-direct {v0, p0, p5}, Lfdm$9;-><init>(Lfdm;Lcma;)V

    .line 187
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfen;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p1, p2, v0}, Lfdm;->a(JLcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->recallComment(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    .line 191
    :cond_0
    return-void
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "postId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfdm$5;

    invoke-direct {v0, p0, p3}, Lfdm$5;-><init>(Lfdm;Lcma;)V

    .line 122
    .local v0, "handlerExt":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {p1, p2, v0}, Lfdm;->a(JLcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->deletePost(Ljava/lang/Long;Liyv;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final a(JLcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;Lcma;)V
    .locals 5
    .param p1, "postId"    # J
    .param p3, "comment"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    new-instance v0, Lfdm$8;

    invoke-direct {v0, p0, p4}, Lfdm$8;-><init>(Lfdm;Lcma;)V

    .line 172
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfen;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p1, p2, v0}, Lfdm;->a(JLcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Lfee;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->comment(Ljava/lang/Long;Lfee;Liyv;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;Lcma;)V
    .locals 5
    .param p1, "postId"    # J
    .param p3, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    new-instance v0, Lfdm$6;

    invoke-direct {v0, p0, p4}, Lfdm$6;-><init>(Lfdm;Lcma;)V

    .line 137
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfen;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "uuid null"

    .line 6033
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {p1, p2, v0}, Lfdm;->a(JLcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->like(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 209
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfdm$2;

    invoke-direct {v0, p0, p1}, Lfdm$2;-><init>(Lfdm;Lcma;)V

    .line 215
    .local v0, "handlerExt":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-interface {v1, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->readNotice(Liyv;)V

    .line 218
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
    .locals 4
    .param p1, "loadParamObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    new-instance v0, Lfdm$1;

    invoke-direct {v0, p0, p2}, Lfdm$1;-><init>(Lfdm;Lcma;)V

    .line 70
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfeo;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    if-nez p1, :cond_1

    .line 71
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "loadParamObject null."

    .line 3033
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->toIdl()Lfei;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->load(Lfei;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V
    .locals 4
    .param p1, "postCreateObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    new-instance v0, Lfdm$4;

    invoke-direct {v0, p0, p2}, Lfdm$4;-><init>(Lfdm;Lcma;)V

    .line 104
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfen;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    if-nez p1, :cond_1

    .line 105
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "postCreateObject null."

    .line 5033
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->toIdl()Lfem;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->createPost(Lfem;Liyv;)V

    goto :goto_0
.end method

.method public final b(JLcma;)V
    .locals 3
    .param p1, "postId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    new-instance v0, Lfdm$7;

    invoke-direct {v0, p0, p3}, Lfdm$7;-><init>(Lfdm;Lcma;)V

    .line 157
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfen;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p1, p2, v0}, Lfdm;->a(JLcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->recallLike(Ljava/lang/Long;Liyv;)V

    .line 161
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
    .locals 4
    .param p1, "loadParamObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    new-instance v0, Lfdm$3;

    invoke-direct {v0, p0, p2}, Lfdm$3;-><init>(Lfdm;Lcma;)V

    .line 87
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfeo;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    if-nez p1, :cond_1

    .line 88
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "loadParamObject null."

    .line 4033
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->toIdl()Lfei;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->loadPersonal(Lfei;Liyv;)V

    goto :goto_0
.end method

.method public final c(JLcma;)V
    .locals 3
    .param p1, "postId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    new-instance v0, Lfdm$10;

    invoke-direct {v0, p0, p3}, Lfdm$10;-><init>(Lfdm;Lcma;)V

    .line 201
    .local v0, "handlerExt":Lcmg;, "Lcmg<Lfen;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p1, p2, v0}, Lfdm;->a(JLcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lfdm;->a(Lcmg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lfdm;->a:Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/connection/idl/services/FriendCircleIService;->getPostDetail(Ljava/lang/Long;Liyv;)V

    .line 205
    :cond_0
    return-void
.end method
