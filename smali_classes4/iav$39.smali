.class public final Liav$39;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/IconOptionModel;",
        "Lcom/alibaba/wukong/im/GroupIconObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liav;


# direct methods
.method public constructor <init>(Liav;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 1388
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/GroupIconObject;>;"
    iput-object p1, p0, Liav$39;->b:Liav;

    iput-object p3, p0, Liav$39;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1388
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    .line 2392
    iget-object v0, p0, Liav$39;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/wukong/im/GroupIconObject;->fromIconOption(Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/IconOptionModel;)Lcom/alibaba/wukong/im/GroupIconObject;

    move-result-object v0

    .line 1388
    return-object v0
.end method
