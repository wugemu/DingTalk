.class public Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
.super Ljava/lang/Object;
.source "EntranceConversationPropertyObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x614ca7e30aad2c39L


# instance fields
.field public expireTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expire"
    .end annotation
.end field

.field public property:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pro"
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ver"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;-><init>()V

    .line 32
    .local v0, "object":Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;->property:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;->version:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J

    .line 34
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;->expireTime:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->expireTime:J

    goto :goto_0
.end method
