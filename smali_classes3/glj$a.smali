.class public final Lglj$a;
.super Lglj;
.source "SpaceLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field final c:Lcom/alibaba/wukong/im/Conversation;

.field final d:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    invoke-direct {p0}, Lglj;-><init>()V

    .line 288
    iput-object p1, p0, Lglj$a;->a:Landroid/app/Activity;

    .line 289
    iput-object p2, p0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 290
    iput-object p3, p0, Lglj$a;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 291
    iput-object p4, p0, Lglj$a;->d:Lcma;

    .line 292
    return-void
.end method

.method static synthetic a(Lglj$a;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Lglj$a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 280
    .line 4344
    new-instance v0, Lglj$a$2;

    invoke-direct {v0, p0}, Lglj$a$2;-><init>(Lglj$a;)V

    .line 4377
    const-class v1, Lcma;

    iget-object v2, p0, Lglj$a;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 4378
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    const-string/jumbo v4, "0"

    iget-object v0, p0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v5, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    .line 5116
    if-eqz v3, :cond_0

    .line 5119
    iget-object v2, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v2, :cond_1

    .line 5120
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v4, "createDentryLink: mCSpaceService is null"

    invoke-static {v0, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5121
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lgon$83;

    invoke-direct {v2, v1, v3}, Lgon$83;-><init>(Lgon;Lcma;)V

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 5127
    :cond_0
    :goto_0
    return-void

    .line 5129
    :cond_1
    new-instance v7, Lggv;

    invoke-direct {v7}, Lggv;-><init>()V

    .line 6109
    invoke-static {p1, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5130
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lggv;->b:Ljava/lang/Long;

    .line 5131
    iput-object v4, v7, Lggv;->d:Ljava/lang/String;

    .line 7109
    invoke-static {v5, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5132
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lggv;->r:Ljava/lang/Long;

    .line 5133
    iput-object v6, v7, Lggv;->q:Ljava/lang/String;

    .line 5134
    iput-object v0, v7, Lggv;->e:Ljava/lang/String;

    .line 5135
    iget-object v8, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$84;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lgon$84;-><init>(Lgon;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v7, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->createDentryLink(Lggv;Liyv;)V

    goto :goto_0
.end method


# virtual methods
.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 295
    iget-object v0, p0, Lglj$a;->d:Lcma;

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lglj$a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lglj$a;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_2

    .line 299
    :cond_1
    iget-object v0, p0, Lglj$a;->d:Lcma;

    const-string/jumbo v1, "INVALID_PARAM"

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4306
    :cond_2
    invoke-virtual {p0}, Lglj$a;->a()V

    .line 4308
    new-instance v0, Lglj$a$1;

    invoke-direct {v0, p0}, Lglj$a$1;-><init>(Lglj$a;)V

    .line 4339
    const-class v1, Lcma;

    iget-object v2, p0, Lglj$a;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4340
    iget-object v1, p0, Lglj$a;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v0}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0
.end method
