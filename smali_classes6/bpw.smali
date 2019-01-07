.class public Lbpw;
.super Ljava/lang/Object;
.source "LoadModel.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field protected final b:Landroid/app/Activity;

.field c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

.field e:I

.field private g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_circle_last_cursor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpw;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_circle_first_cursor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpw;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loadParam"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lbpw;->b:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    .line 66
    return-void
.end method

.method static synthetic a(Lbpw;)I
    .locals 1
    .param p0, "x0"    # Lbpw;

    .prologue
    .line 46
    iget v0, p0, Lbpw;->e:I

    return v0
.end method

.method static synthetic a(Lbpw;I)I
    .locals 0
    .param p0, "x0"    # Lbpw;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lbpw;->e:I

    return p1
.end method

.method static synthetic a(Lbpw;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
    .locals 0
    .param p0, "x0"    # Lbpw;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .prologue
    .line 46
    iput-object p1, p0, Lbpw;->g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 230
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v0

    .line 232
    .local v0, "api":Lbou;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lbpw$3;

    invoke-direct {v3, p0}, Lbpw$3;-><init>(Landroid/app/Activity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 252
    .local v1, "listener":Lcma;
    invoke-interface {v0, v1}, Lbou;->a(Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "postId"    # J

    .prologue
    .line 257
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v0

    .line 259
    .local v0, "api":Lbou;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lbpw$4;

    invoke-direct {v3, p1, p2, p0}, Lbpw$4;-><init>(JLandroid/app/Activity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 298
    .local v1, "listener":Lcma;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lbou;->a(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcov;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "loadParam"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;",
            "Lcov",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p5, "listener":Lcov;, "Lcov<Ljava/lang/Long;>;"
    if-eqz p5, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string/jumbo v0, "Circle-LoadModel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    const-class v0, Ljava/lang/Runnable;

    new-instance v1, Lbpw$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lbpw$1;-><init>(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcov;)V

    invoke-static {p0, v0, v1}, Lbqo;->a(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcma;)V
    .locals 4
    .param p0, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "commentObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "atUids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;-><init>()V

    .line 213
    .local v0, "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->type:I

    .line 214
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 215
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->uuid:Ljava/lang/String;

    .line 216
    if-eqz p3, :cond_2

    .line 217
    iget-wide v2, p3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    .line 218
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 221
    :cond_2
    invoke-static {p2}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    iput-object p2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    .line 225
    :cond_3
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p4}, Lbov;->a(Ljava/lang/Long;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcma;)V

    goto :goto_0
.end method

.method static a(J)Z
    .locals 2
    .param p0, "cursor"    # J

    .prologue
    .line 107
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lbpw;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .locals 1
    .param p0, "x0"    # Lbpw;

    .prologue
    .line 46
    iget-object v0, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    return-object v0
.end method

.method static synthetic b(Lbpw;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V
    .locals 2
    .param p0, "x0"    # Lbpw;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .prologue
    .line 46
    .line 3194
    if-eqz p1, :cond_1

    .line 3195
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 3196
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3198
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 3200
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3201
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic c(Lbpw;)Lcma;
    .locals 1
    .param p0, "x0"    # Lbpw;

    .prologue
    .line 46
    iget-object v0, p0, Lbpw;->c:Lcma;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lbpw;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lbou;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V
    .locals 0
    .param p1, "api"    # Lbou;
    .param p2, "loadParam"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 336
    invoke-interface {p1, p2, p3}, Lbou;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V

    .line 337
    return-void
.end method

.method protected a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V
    .locals 3
    .param p1, "snPostResultObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    const-string/jumbo v1, "load empty posts"

    .line 3076
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0
.end method

.method final a(Lcov;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcov",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 82
    .local p1, "listener":Lcov;, "Lcov<Ljava/lang/Long;>;"
    iget-object v0, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lbpw;->a()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    iget-object v4, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lbpw;->a(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcov;)V

    .line 83
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lbpw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 5
    .param p1, "createAt"    # J

    .prologue
    .line 134
    iget-object v3, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 136
    .local v0, "cursor":J
    invoke-static {v0, v1}, Lbpw;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->loadMore(J)V

    .line 138
    invoke-virtual {p0}, Lbpw;->d()V

    .line 159
    :goto_0
    return-void

    .line 147
    :cond_0
    cmp-long v3, v0, p1

    if-lez v3, :cond_1

    .line 148
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "cursor > createAt, while cursor = "

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". createAt = "

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "log":Ljava/lang/String;
    invoke-static {v2}, Lbqh;->a(Ljava/lang/String;)V

    .line 153
    .end local v2    # "log":Ljava/lang/String;
    :cond_1
    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    .line 154
    iget-object v3, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->loadMore(J)V

    .line 155
    invoke-virtual {p0}, Lbpw;->d()V

    goto :goto_0

    .line 1162
    :cond_2
    const-string/jumbo v3, "Circle-LoadModel"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lbpw$2;

    invoke-direct {v4, p0, p1, p2}, Lbpw$2;-><init>(Lbpw;J)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbpw;->h:J

    iput-wide v0, p0, Lbpw;->i:J

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lbpw;->e:I

    .line 125
    iget-object v0, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lbpw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lbpw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 305
    iget-object v2, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v0

    .line 307
    .local v0, "api":Lbou;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lbpw$5;

    invoke-direct {v3, p0}, Lbpw$5;-><init>(Lbpw;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 331
    .local v1, "listener":Lcma;
    iget-object v2, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-virtual {p0, v0, v2, v1}, Lbpw;->a(Lbou;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V

    goto :goto_0
.end method

.method final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 340
    .line 2345
    iget-object v0, p0, Lbpw;->g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    if-nez v0, :cond_3

    iget-wide v0, p0, Lbpw;->h:J

    .line 1364
    :goto_0
    iget-wide v4, p0, Lbpw;->h:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 1365
    iget-object v4, p0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    iput-wide v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 1366
    iget-object v4, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lbpw;->a()Ljava/lang/String;

    move-result-object v5

    iput-wide v0, p0, Lbpw;->h:J

    invoke-static {v4, v5, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2354
    :cond_0
    iget-object v0, p0, Lbpw;->g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    if-nez v0, :cond_6

    .line 1370
    :cond_1
    :goto_1
    iget-wide v0, p0, Lbpw;->i:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 1371
    iget-object v0, p0, Lbpw;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lbpw;->b()Ljava/lang/String;

    move-result-object v1

    iput-wide v2, p0, Lbpw;->i:J

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 341
    :cond_2
    iget-object v0, p0, Lbpw;->g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-virtual {p0, v0}, Lbpw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V

    .line 342
    return-void

    .line 2346
    :cond_3
    iget-object v0, p0, Lbpw;->g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 2347
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v0, p0, Lbpw;->h:J

    goto :goto_0

    .line 2348
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2349
    if-nez v0, :cond_5

    move-wide v0, v2

    goto :goto_0

    .line 2350
    :cond_5
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    goto :goto_0

    .line 2355
    :cond_6
    iget-object v0, p0, Lbpw;->g:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 2356
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2357
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2358
    if-eqz v0, :cond_1

    .line 2359
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    goto :goto_1
.end method
