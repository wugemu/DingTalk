.class final Libm$2;
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
        "Lcom/alibaba/wukong/idl/group_invitation/models/TaoPasswordModel;",
        "Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;",
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
    .line 46
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;>;"
    iput-object p1, p0, Libm$2;->a:Libm;

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
    .line 46
    check-cast p1, Lcom/alibaba/wukong/idl/group_invitation/models/TaoPasswordModel;

    .line 1050
    if-eqz p1, :cond_0

    .line 1051
    new-instance v0, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;-><init>()V

    .line 1052
    iget-object v1, p1, Lcom/alibaba/wukong/idl/group_invitation/models/TaoPasswordModel;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;->url:Ljava/lang/String;

    .line 1053
    iget-object v1, p1, Lcom/alibaba/wukong/idl/group_invitation/models/TaoPasswordModel;->isExpired:Ljava/lang/Boolean;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;->isExpired:Z

    .line 1054
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    const/4 v0, 0x0

    .line 46
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
    .line 61
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Libm$2;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
