.class public final Lglh;
.super Ljava/lang/Object;
.source "SpaceCommonTransfer.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/LinkedList;Lcma;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetSpaceId"    # Ljava/lang/String;
    .param p3, "needThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p4, "spaceDos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .local p5, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;>;"
    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lglh;->f:Ljava/util/HashMap;

    .line 46
    iput-wide v2, p0, Lglh;->g:J

    .line 48
    iput-wide v2, p0, Lglh;->h:J

    .line 54
    iput-object p1, p0, Lglh;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lglh;->d:Ljava/lang/String;

    .line 56
    iput-boolean p3, p0, Lglh;->i:Z

    .line 57
    iput-object p4, p0, Lglh;->e:Ljava/util/LinkedList;

    .line 58
    iput-object p5, p0, Lglh;->c:Lcma;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglh;->b:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic a(Lglh;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lglh;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 3239
    iget-object v0, p0, Lglh;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3242
    if-eqz p1, :cond_3

    .line 3243
    iget-boolean v0, p0, Lglh;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3244
    invoke-direct {p0, p1}, Lglh;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 3247
    iget-object v1, p0, Lglh;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3271
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lglh;->a()V

    goto :goto_0

    .line 3251
    :cond_3
    iget-object v0, p0, Lglh;->c:Lcma;

    if-eqz v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3252
    const-string/jumbo v0, "13026000"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3253
    iget-wide v0, p0, Lglh;->h:J

    iget-wide v2, p0, Lglh;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lglh;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 3254
    :cond_4
    iget-wide v0, p0, Lglh;->h:J

    iput-wide v0, p0, Lglh;->g:J

    .line 3256
    :cond_5
    iget-object v0, p0, Lglh;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3257
    iget-object v0, p0, Lglh;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    iget-object v0, p0, Lglh;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lglh;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3261
    :cond_6
    iget-object v0, p0, Lglh;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3262
    iget-object v0, p0, Lglh;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3263
    iget-object v0, p0, Lglh;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lglh;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3267
    :cond_7
    iget-object v0, p0, Lglh;->c:Lcma;

    if-eqz v0, :cond_2

    .line 3268
    iget-object v0, p0, Lglh;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lglh;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lglh;->a()V

    .line 236
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v6, Lglh$3;

    invoke-direct {v6, p0, p1}, Lglh$3;-><init>(Lglh;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 232
    .local v6, "listener":Lcma;, "Lcma<Lgrh;>;"
    iget-object v0, p0, Lglh;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 233
    const-class v1, Lcma;

    iget-object v0, p0, Lglh;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Lgrh;>;"
    check-cast v6, Lcma;

    .line 235
    .restart local v6    # "listener":Lcma;, "Lcma<Lgrh;>;"
    :cond_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 235
    invoke-virtual/range {v1 .. v6}, Lgon;->a(JJLcma;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "doSend":Z
    iget-object v2, p0, Lglh;->e:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lglh;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 73
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    iget-wide v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iput-wide v2, p0, Lglh;->h:J

    .line 1089
    :try_start_0
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 1090
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1091
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    .line 1092
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 1093
    :goto_0
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lglh$1;

    invoke-direct {v7, p0}, Lglh$1;-><init>(Lglh;)V

    const-class v8, Lcma;

    iget-object v3, p0, Lglh;->a:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v2, v7, v8, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 1091
    invoke-virtual {v5, v6, v4, v2}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lglh;->e:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lglh;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 80
    :cond_1
    iget-object v2, p0, Lglh;->c:Lcma;

    iget-object v3, p0, Lglh;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 82
    :cond_2
    return-void

    .line 1093
    .restart local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    .line 1120
    :cond_4
    invoke-virtual {p0, v2}, Lglh;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1123
    :catch_0
    move-exception v2

    .line 1124
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1125
    iget-object v2, p0, Lglh;->c:Lcma;

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lglh;->c:Lcma;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lglh;->a:Landroid/content/Context;

    sget v5, Lfzs$h;->send_fail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 10
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 132
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lglh;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-boolean v0, p0, Lglh;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lglh;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v7

    .line 138
    .local v7, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v0, p0, Lglh;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Lglh;->a()V

    goto :goto_0

    .line 145
    .end local v7    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    iget-wide v4, p0, Lglh;->g:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    iget-wide v4, p0, Lglh;->h:J

    iget-wide v8, p0, Lglh;->g:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_3

    .line 146
    invoke-virtual {p0}, Lglh;->a()V

    .line 147
    iget-object v0, p0, Lglh;->c:Lcma;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lglh;->c:Lcma;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lglh;->a:Landroid/content/Context;

    sget v4, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v1, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v2, p0, Lglh;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lglh$2;

    invoke-direct {v8, p0, p1}, Lglh$2;-><init>(Lglh;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    const-class v9, Lcma;

    iget-object v6, p0, Lglh;->a:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-interface {v4, v8, v9, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method
