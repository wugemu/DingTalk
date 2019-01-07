.class final Ldxv$14;
.super Lcmg;
.source "GroupRobotServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxv;->f(Ljava/lang/String;Lcma;)Lcmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldxv;


# direct methods
.method constructor <init>(Ldxv;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldxv;

    .prologue
    .line 369
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    iput-object p1, p0, Ldxv$14;->b:Ldxv;

    iput-object p3, p0, Ldxv$14;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 369
    check-cast p1, Ljava/util/List;

    .line 1372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;

    .line 1376
    iget-object v5, p0, Ldxv$14;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lidr;->a(Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;)Lcom/alibaba/wukong/im/conversation/MemberRole;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_0

    .line 1379
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    iget-object v5, v0, Lcom/alibaba/wukong/im/conversation/MemberRole;->mGroupNickObject:Lcom/alibaba/wukong/im/GroupNickObject;

    if-eqz v5, :cond_0

    .line 1381
    iget-object v0, v0, Lcom/alibaba/wukong/im/conversation/MemberRole;->mGroupNickObject:Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1386
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1387
    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4}, Lcom/alibaba/wukong/im/GroupNickService;->updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V

    .line 1390
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 1391
    :goto_1
    return-object v0

    .line 1393
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/MemberRole;

    .line 1395
    invoke-static {v0}, Lidr;->a(Lcom/alibaba/wukong/im/conversation/MemberRole;)Lcom/alibaba/wukong/im/Member;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 369
    goto :goto_1
.end method
