.class public final Lgmq;
.super Lgly;
.source "SpaceMenuFavoriteHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lgmb;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 8
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "paramModel"    # Lgmb;

    .prologue
    const-wide/16 v6, 0x0

    .line 59
    iget-object v4, p1, Lgmb;->b:Ljava/lang/String;

    invoke-static {p0, v4}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 60
    .local v1, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget v4, p1, Lgmb;->c:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    iget-boolean v4, p1, Lgmb;->i:Z

    if-nez v4, :cond_0

    .line 61
    iput-wide v6, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 64
    :cond_0
    const-wide/16 v2, 0x0

    .line 67
    .local v2, "messageId":J
    :try_start_0
    iget-object v4, p1, Lgmb;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 72
    :goto_0
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 73
    iput-wide v2, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 76
    :cond_1
    iget-object v4, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 80
    :cond_2
    iget-object v4, p1, Lgmb;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    iget-object v4, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "conversation_id"

    iget-object v6, p1, Lgmb;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_3
    iget-object v4, p1, Lgmb;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 85
    iget-object v4, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "favorite_enter_hide"

    iget-object v6, p1, Lgmb;->j:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_4
    iget-object v4, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "space_transfer_src"

    const-string/jumbo v6, "picturepre"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lgmq;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 49
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 50
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-wide v2, p2, Lgmb;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v2

    invoke-static {v0, p2}, Lgmq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lgmb;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0
.end method
