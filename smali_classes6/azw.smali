.class public Lazw;
.super Ljava/lang/Object;
.source "DingCommentPresenter.java"

# interfaces
.implements Lazv$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lazv$b;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private f:Lbhm;

.field private g:Lbhm;

.field private h:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lazw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lazv$b;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dingId"    # Ljava/lang/String;
    .param p3, "view"    # Lazv$b;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lazw;->c:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lazw;->d:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lazw;->b:Lazv$b;

    .line 64
    iget-object v0, p0, Lazw;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dingId is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lazw;->b:Lazv$b;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lazw;->b:Lazv$b;

    invoke-interface {v0, p0}, Lazv$b;->setPresenter(Lcjd;)V

    .line 1076
    new-instance v0, Lazw$1;

    invoke-direct {v0, p0}, Lazw$1;-><init>(Lazw;)V

    iput-object v0, p0, Lazw;->h:Lckm$a;

    .line 1097
    new-instance v0, Lazw$2;

    invoke-direct {v0, p0}, Lazw$2;-><init>(Lazw;)V

    iput-object v0, p0, Lazw;->i:Lckm$a;

    .line 1107
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lazw;->h:Lckm$a;

    .line 1230
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$30;

    invoke-direct {v3, v0, v1}, Lbbp$30;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1108
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lazw;->i:Lckm$a;

    .line 1248
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$32;

    invoke-direct {v3, v0, v1}, Lbbp$32;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lazw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 43
    iget-object v0, p0, Lazw;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;Lbdy;Z)V
    .locals 8
    .param p0, "x0"    # Lazw;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .param p2, "x2"    # Lbdy;
    .param p3, "x3"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    .line 10347
    iget-object v0, p0, Lazw;->b:Lazv$b;

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10350
    iget-object v0, p0, Lazw;->b:Lazv$b;

    invoke-interface {v0}, Lazv$b;->H_()V

    .line 10351
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 10352
    iget-object v0, p2, Lbdy;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 10353
    iget-object v0, p2, Lbdy;->b:Ljava/lang/Long;

    .line 11044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 10353
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    .line 10355
    :cond_0
    iget-object v0, p2, Lbdy;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 10356
    iget-object v0, p2, Lbdy;->a:Ljava/lang/Long;

    .line 12044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 10356
    iput-wide v4, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    .line 10358
    :cond_1
    iget-object v3, p0, Lazw;->b:Lazv$b;

    iget-object v0, p0, Lazw;->f:Lbhm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazw;->f:Lbhm;

    .line 12135
    iget-boolean v0, v0, Lbhm;->b:Z

    .line 10360
    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lazw;->g:Lbhm;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lazw;->g:Lbhm;

    .line 13135
    iget-boolean v4, v4, Lbhm;->b:Z

    .line 10361
    if-eqz v4, :cond_4

    .line 10358
    :goto_1
    invoke-interface {v3, p1, p3, v0, v1}, Lazv$b;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;ZZZ)V

    .line 43
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 10360
    goto :goto_0

    :cond_4
    move v1, v2

    .line 10361
    goto :goto_1
.end method

.method static synthetic a(Lazw;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V
    .locals 0
    .param p0, "x0"    # Lazw;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lazw;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V

    return-void
.end method

.method static synthetic b(Lazw;)Lazv$b;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 43
    iget-object v0, p0, Lazw;->b:Lazv$b;

    return-object v0
.end method

.method private b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V
    .locals 8
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p2, "realReplyUid"    # J
    .param p4, "sendId"    # J

    .prologue
    .line 311
    iget-object v4, p0, Lazw;->d:Ljava/lang/String;

    .line 5109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 312
    .local v2, "dingId":J
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide p2

    .line 316
    :cond_0
    if-eqz p1, :cond_1

    .line 5326
    iget-object v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 316
    if-nez v4, :cond_5

    :cond_1
    const/4 v4, 0x0

    move-object v5, v4

    .line 7093
    :goto_0
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7094
    :cond_2
    const/4 v0, 0x0

    .line 317
    .local v0, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    :goto_1
    new-instance v1, Lazw$7;

    invoke-direct {v1, p0, v0}, Lazw$7;-><init>(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    .line 337
    .local v1, "listener":Lcma;, "Lcma<Lbdy;>;"
    iget-object v4, p0, Lazw;->c:Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 338
    const-class v4, Lcma;

    iget-object v5, p0, Lazw;->c:Landroid/app/Activity;

    invoke-static {v1, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Lbdy;>;"
    check-cast v1, Lcma;

    .line 341
    .restart local v1    # "listener":Lcma;, "Lcma<Lbdy;>;"
    :cond_3
    if-eqz v0, :cond_4

    .line 342
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lbbz;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcma;)V

    .line 344
    :cond_4
    return-void

    .line 316
    .end local v0    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v1    # "listener":Lcma;, "Lcma<Lbdy;>;"
    :cond_5
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const/4 v5, 0x0

    .line 6326
    iget-object v6, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 316
    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    .line 7097
    :cond_6
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/CommentObject;-><init>()V

    .line 7099
    iput-wide v2, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    .line 7100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    .line 7101
    iput-wide p4, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    .line 7102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    .line 7104
    new-instance v4, Layz;

    invoke-direct {v4}, Layz;-><init>()V

    .line 7105
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v4, Layz;->g:Ljava/util/Map;

    .line 7106
    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    iput-object v6, v4, Layz;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 7107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Laxp$i;->dt_ding_attach_comment_update_tip:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Layz;->a:Ljava/lang/String;

    .line 7108
    iput-object v4, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    .line 7110
    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v6, 0x0

    aput-wide p2, v4, v6

    :goto_2
    iput-object v4, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    .line 7112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7113
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 7114
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 7115
    if-eqz v4, :cond_7

    .line 7116
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 7110
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 7120
    :cond_9
    iput-object v6, v0, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    goto/16 :goto_1
.end method

.method static synthetic c(Lazw;)Lbhm;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 43
    iget-object v0, p0, Lazw;->f:Lbhm;

    return-object v0
.end method

.method static synthetic d(Lazw;)Lbhm;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 43
    iget-object v0, p0, Lazw;->g:Lbhm;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lazw;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lazw;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 43
    iget-object v0, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    new-instance v0, Lazw$3;

    invoke-direct {v0, p0}, Lazw$3;-><init>(Lazw;)V

    .line 138
    .local v0, "callback":Lbhm$a;
    iget-object v1, p0, Lazw;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 139
    const-class v1, Lbhm$a;

    iget-object v2, p0, Lazw;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lbhm$a;
    check-cast v0, Lbhm$a;

    .line 141
    .restart local v0    # "callback":Lbhm$a;
    :cond_0
    new-instance v1, Lbhm;

    iget-object v2, p0, Lazw;->d:Ljava/lang/String;

    invoke-static {v2}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v0}, Lbhm;-><init>(JILbhm$a;)V

    iput-object v1, p0, Lazw;->f:Lbhm;

    .line 142
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "cursor"    # J

    .prologue
    .line 166
    iget-object v0, p0, Lazw;->f:Lbhm;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lazw;->f:Lbhm;

    invoke-virtual {v0, p1, p2}, Lbhm;->a(J)V

    .line 169
    :cond_0
    return-void
.end method

.method public final a(JLjava/util/Map;JLjava/lang/String;)V
    .locals 24
    .param p1, "currentUid"    # J
    .param p4, "replyUid"    # J
    .param p6, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, "atMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 261
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static/range {p6 .. p6}, Lcqz;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 204
    .local v11, "hasEmotion":Z
    if-eqz v11, :cond_2

    .line 2242
    const-string/jumbo v18, "ding_comment_send_emotion_click"

    invoke-static/range {v18 .. v18}, Lbjz;->a(Ljava/lang/String;)V

    .line 209
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->b:Lazv$b;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lazv$b;->b()V

    .line 210
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v4, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p3, :cond_3

    .line 212
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 213
    .local v10, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 214
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 215
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 216
    .local v12, "key":Ljava/lang/Long;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 217
    .local v17, "val":Ljava/lang/String;
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "@"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "\u0007"

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 218
    move-object/from16 v0, v17

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "@"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "\u0007"

    .line 220
    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "@"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 221
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "\u0007"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 219
    move-object/from16 v0, p6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    goto/16 :goto_2

    .line 2246
    .end local v4    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v12    # "key":Ljava/lang/Long;
    .end local v17    # "val":Ljava/lang/String;
    :cond_2
    const-string/jumbo v18, "ding_comment_send_text_click"

    invoke-static/range {v18 .. v18}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    .restart local v4    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    const/16 v18, 0x7

    const/16 v19, 0x20

    move-object/from16 v0, p6

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "sendString":Ljava/lang/String;
    new-instance v6, Layz;

    invoke-direct {v6}, Layz;-><init>()V

    .line 229
    .local v6, "commentText":Layz;
    move-object/from16 v0, v16

    iput-object v0, v6, Layz;->a:Ljava/lang/String;

    .line 230
    iput-object v4, v6, Layz;->g:Ljava/util/Map;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3109
    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 233
    .local v8, "dingId":J
    move-wide/from16 v14, p4

    .local v14, "realReplyUid":J
    const-wide/16 v18, 0x0

    cmp-long v18, p4, v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v14

    .line 4082
    :cond_4
    new-instance v5, Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {v5}, Lcom/alibaba/android/ding/base/objects/CommentObject;-><init>()V

    .line 4083
    iput-wide v8, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    .line 4084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    .line 4085
    move-wide/from16 v0, p1

    iput-wide v0, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    .line 4086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    .line 4087
    iput-object v6, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    .line 4088
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v14, v18, v19

    :goto_3
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    .line 237
    .local v5, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    new-instance v13, Lazw$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lazw$5;-><init>(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    .line 255
    .local v13, "listener":Lcma;, "Lcma<Lbdy;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->c:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 256
    const-class v18, Lcma;

    move-object/from16 v0, p0

    iget-object v0, v0, Lazw;->c:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v13, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    .line 259
    :cond_5
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v13}, Lbbz;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcma;)V

    goto/16 :goto_0

    .line 4088
    .end local v5    # "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v13    # "listener":Lcma;, "Lcma<Lbdy;>;"
    :cond_6
    const/16 v18, 0x0

    goto :goto_3
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 8
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 7234
    const-string/jumbo v0, "ding_comment_delete_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 369
    if-nez p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lazw;->b:Lazv$b;

    invoke-interface {v0}, Lazv$b;->b()V

    .line 373
    new-instance v6, Lazw$8;

    invoke-direct {v6, p0, p1}, Lazw$8;-><init>(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    .line 398
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lazw;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 399
    const-class v0, Lcma;

    iget-object v1, p0, Lazw;->c:Landroid/app/Activity;

    invoke-static {v6, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v6, Lcma;

    .line 401
    .restart local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_1
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    iget-wide v4, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    .line 8069
    iget-object v7, v1, Lbbz;->a:Lbbz$a;

    new-instance v0, Lbbz$3;

    invoke-direct/range {v0 .. v6}, Lbbz$3;-><init>(Lbbz;JJLcma;)V

    invoke-virtual {v7, v0}, Lbbz$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V
    .locals 8
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .param p2, "replyId"    # J
    .param p4, "senderId"    # J

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lazw;->b:Lazv$b;

    invoke-interface {v0}, Lazv$b;->b()V

    .line 269
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-direct/range {p0 .. p5}, Lazw;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V

    goto :goto_0

    .line 274
    :cond_1
    new-instance v1, Lazw$6;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lazw$6;-><init>(Lazw;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V

    .line 4176
    iput-object v1, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 194
    iput-object p1, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 195
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 146
    new-instance v0, Lazw$4;

    invoke-direct {v0, p0}, Lazw$4;-><init>(Lazw;)V

    .line 158
    .local v0, "callback":Lbhm$a;
    iget-object v1, p0, Lazw;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 159
    const-class v1, Lbhm$a;

    iget-object v2, p0, Lazw;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lbhm$a;
    check-cast v0, Lbhm$a;

    .line 161
    .restart local v0    # "callback":Lbhm$a;
    :cond_0
    new-instance v1, Lbhm;

    iget-object v2, p0, Lazw;->d:Ljava/lang/String;

    invoke-static {v2}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lbhm;-><init>(JILbhm$a;)V

    iput-object v1, p0, Lazw;->g:Lbhm;

    .line 162
    return-void
.end method

.method public final b(J)V
    .locals 1
    .param p1, "cursor"    # J

    .prologue
    .line 173
    iget-object v0, p0, Lazw;->g:Lbhm;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lazw;->g:Lbhm;

    invoke-virtual {v0, p1, p2}, Lbhm;->a(J)V

    .line 176
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 406
    iget-object v0, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lazw;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 8862
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$92;

    invoke-direct {v3, v0, v1}, Lbbp$92;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 409
    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 1
    .param p1, "cursor"    # J

    .prologue
    .line 180
    iget-object v0, p0, Lazw;->f:Lbhm;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lazw;->f:Lbhm;

    invoke-virtual {v0, p1, p2}, Lbhm;->b(J)V

    .line 183
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 1
    .param p1, "cursor"    # J

    .prologue
    .line 187
    iget-object v0, p0, Lazw;->g:Lbhm;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lazw;->g:Lbhm;

    invoke-virtual {v0, p1, p2}, Lbhm;->b(J)V

    .line 190
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 421
    .line 9113
    iget-object v0, p0, Lazw;->i:Lckm$a;

    if-eqz v0, :cond_0

    .line 9114
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lazw;->i:Lckm$a;

    .line 9257
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$33;

    invoke-direct {v3, v0, v1}, Lbbp$33;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 9116
    :cond_0
    iget-object v0, p0, Lazw;->h:Lckm$a;

    if-eqz v0, :cond_1

    .line 9117
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lazw;->h:Lckm$a;

    .line 10239
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$31;

    invoke-direct {v3, v0, v1}, Lbbp$31;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 422
    :cond_1
    return-void
.end method
