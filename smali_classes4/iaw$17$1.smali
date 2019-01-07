.class final Liaw$17$1;
.super Lhzy;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyResultModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liaw$17;


# direct methods
.method constructor <init>(Liaw$17;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Liaw$17;

    .prologue
    .line 1371
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Liaw$17$1;->a:Liaw$17;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1371
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyResultModel;

    .line 2374
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyResultModel;->result:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyResultModel;->result:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1371
    return-object v0

    .line 2374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
