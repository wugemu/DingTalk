.class final Liav$38;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 1350
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    iput-object p1, p0, Liav$38;->b:Liav;

    iput-object p3, p0, Liav$38;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1350
    check-cast p1, Ljava/util/List;

    .line 2353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    if-eqz p1, :cond_1

    .line 2355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;

    .line 2356
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    if-eqz v3, :cond_0

    .line 2357
    new-instance v3, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 2358
    iget-object v4, p0, Liav$38;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 2359
    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v4, v4, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 2360
    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    iget-object v4, v4, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->groupNick:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 2361
    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;->groupNickModel:Lcom/alibaba/wukong/idl/im/models/GroupNickModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/GroupNickModel;->tag:Ljava/lang/Integer;

    invoke-static {v0}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/GroupNickObject;->setTag(I)V

    .line 2362
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1350
    :cond_1
    return-object v1
.end method
