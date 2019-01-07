.class public final Lcom/alibaba/android/ding/adapter/CommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ListView;

.field public b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lbkz;

.field private h:Landroid/app/Activity;

.field private i:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "unReadCommentCount"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    sget-object v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->f:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->h:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->i:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 60
    iput-object p3, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a:Landroid/widget/ListView;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    .line 63
    iput p4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->c:I

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/adapter/CommentAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5
    .param p1, "dingId"    # J
    .param p3, "commentId"    # J

    .prologue
    .line 293
    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 294
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 296
    .local v0, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 300
    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    sget-object v3, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne v2, v3, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 307
    .end local v0    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 308
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 310
    .restart local v0    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_2

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 314
    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    sget-object v3, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne v2, v3, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 320
    .end local v0    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :cond_3
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V
    .locals 10
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .param p2, "type"    # Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 272
    sget-object v4, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne p2, v4, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 273
    .local v1, "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 274
    .local v0, "object":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v0, :cond_0

    .line 275
    iget-wide v6, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    iget-wide v8, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 290
    .end local v0    # "object":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :cond_1
    :goto_1
    return-void

    .line 272
    .end local v1    # "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    goto :goto_0

    .line 280
    .restart local v1    # "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 281
    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne p2, v4, :cond_1

    .line 282
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-wide v6, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 283
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_4

    .line 284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v3, "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Ljava/util/Collection;)V

    .line 288
    .end local v3    # "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 368
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 369
    .local v1, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 370
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v2, "read_local_contact"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 371
    sget-object v2, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 372
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 374
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    new-instance v2, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;-><init>(Lcom/alibaba/android/ding/adapter/CommentAdapter;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V
    .locals 16
    .param p2, "type"    # Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;",
            "Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 226
    .local p1, "commentObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget-object v10, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 231
    .local v7, "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v5, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 234
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 235
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 236
    .local v3, "comFirst":Lcom/alibaba/android/ding/base/objects/CommentObject;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 237
    .local v6, "existLast":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    iget-wide v10, v3, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    iget-wide v12, v6, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    .line 240
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    .end local v3    # "comFirst":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v6    # "existLast":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 254
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v9, "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 258
    .local v4, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v4, :cond_3

    .line 259
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    iget-wide v12, v4, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v8

    .line 260
    .local v8, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v8, :cond_3

    .line 261
    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    .end local v4    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v5    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    .end local v7    # "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    .end local v8    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v9    # "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    goto :goto_1

    .line 242
    .restart local v3    # "comFirst":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .restart local v5    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    .restart local v6    # "existLast":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .restart local v7    # "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 243
    .local v2, "cObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v2, :cond_6

    .line 244
    if-eqz v6, :cond_6

    iget-wide v12, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    iget-wide v14, v6, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    cmp-long v11, v12, v14

    if-ltz v11, :cond_6

    .line 245
    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    .end local v2    # "cObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v3    # "comFirst":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v6    # "existLast":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .restart local v9    # "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Ljava/util/Collection;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    sget-object v2, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 102
    .local v0, "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 101
    .end local v0    # "originList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    sget-object v3, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 90
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    :cond_0
    :goto_1
    return-object v1

    .line 89
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    goto :goto_0

    .line 93
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_2
    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 96
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    sget-object v4, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 113
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    :cond_0
    :goto_1
    return v2

    .line 112
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    goto :goto_0

    .line 116
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    :cond_2
    if-ltz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 119
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 120
    .local v0, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v0, :cond_0

    .line 123
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->k:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    if-ne v3, v4, :cond_0

    .line 124
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getItemViewType(I)I

    move-result v2

    .line 138
    .local v2, "holderType":I
    if-nez p2, :cond_2

    .line 139
    if-nez v2, :cond_1

    .line 140
    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->h:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Laxp$g;->ding_item_comment:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    new-instance v0, Lbid;

    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->h:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->i:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {v0, v4, p0, p2, v5}, Lbid;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/adapter/CommentAdapter;Landroid/view/View;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 146
    .local v0, "commentHolder":Lbia;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 152
    .local v1, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    const/4 v3, 0x1

    .line 154
    .local v3, "isLastItem":Z
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->i:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0, v3, v1, v4}, Lbia;->a(ZLcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 157
    .end local v3    # "isLastItem":Z
    :cond_0
    iget v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->c:I

    if-ge p1, v4, :cond_4

    .line 158
    sget v4, Laxp$e;->ding_common_unread_cell_selector:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    :goto_3
    return-object p2

    .line 143
    .end local v0    # "commentHolder":Lbia;
    .end local v1    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->h:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Laxp$g;->ding_item_system_comment:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 144
    new-instance v0, Lbif;

    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->h:Landroid/app/Activity;

    invoke-direct {v0, v4, p2}, Lbif;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .restart local v0    # "commentHolder":Lbia;
    goto :goto_0

    .line 148
    .end local v0    # "commentHolder":Lbia;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbia;

    .restart local v0    # "commentHolder":Lbia;
    goto :goto_1

    .line 153
    .restart local v1    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 160
    :cond_4
    sget v4, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x2

    return v0
.end method
