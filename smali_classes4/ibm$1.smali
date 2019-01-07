.class final Libm$1;
.super Lhzy;
.source "InvitationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/group_invitation/models/InvitationModel;",
        "Lcom/alibaba/wukong/im/invitation/InvitationObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Libm;


# direct methods
.method constructor <init>(Libm;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Libm;

    .prologue
    .line 21
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/invitation/InvitationObject;>;"
    iput-object p1, p0, Libm$1;->a:Libm;

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
    .line 21
    check-cast p1, Lcom/alibaba/wukong/idl/group_invitation/models/InvitationModel;

    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    new-instance v0, Lcom/alibaba/wukong/im/invitation/InvitationObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/invitation/InvitationObject;-><init>()V

    .line 1027
    iget-object v1, p1, Lcom/alibaba/wukong/idl/group_invitation/models/InvitationModel;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/invitation/InvitationObject;->cid:Ljava/lang/String;

    .line 1028
    iget-object v1, p1, Lcom/alibaba/wukong/idl/group_invitation/models/InvitationModel;->taoPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/invitation/InvitationObject;->taoPassword:Ljava/lang/String;

    .line 1029
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Libm$1;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
