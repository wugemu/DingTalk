.class public final Libc$2;
.super Lhzy;
.source "EntranceUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;",
        "Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 60
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;

    .line 1063
    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->fromIdl(Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    move-result-object v0

    .line 60
    return-object v0
.end method
