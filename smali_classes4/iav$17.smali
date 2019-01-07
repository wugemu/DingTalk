.class final Liav$17;
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
        "Lcom/alibaba/wukong/idl/im/models/CodeModel;",
        "Lcom/alibaba/wukong/im/CodeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 975
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/CodeInfo;>;"
    iput-object p1, p0, Liav$17;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 975
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/CodeModel;

    .line 1978
    if-eqz p1, :cond_0

    .line 1979
    new-instance v0, Liac;

    invoke-direct {v0}, Liac;-><init>()V

    .line 1980
    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/CodeModel;->code:Ljava/lang/String;

    iput-object v1, v0, Liac;->a:Ljava/lang/String;

    .line 1981
    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/CodeModel;->expires:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Liac;->b:J

    .line 1982
    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/CodeModel;->shortLink:Ljava/lang/String;

    iput-object v1, v0, Liac;->c:Ljava/lang/String;

    .line 1983
    iget-object v1, p1, Lcom/alibaba/wukong/idl/im/models/CodeModel;->originLink:Ljava/lang/String;

    iput-object v1, v0, Liac;->d:Ljava/lang/String;

    .line 1984
    :goto_0
    return-object v0

    .line 1986
    :cond_0
    const/4 v0, 0x0

    .line 975
    goto :goto_0
.end method
