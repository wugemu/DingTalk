.class public Lcom/alibaba/wukong/im/GroupIconObject;
.super Ljava/lang/Object;
.source "GroupIconObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x47a8c88cfed6df22L


# instance fields
.field public conversationId:Ljava/lang/String;

.field public groupIcon:Ljava/lang/String;

.field public groupIconTag:J

.field public groupIconType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIconOption(Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/IconOptionModel;)Lcom/alibaba/wukong/im/GroupIconObject;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "optionModel"    # Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    .prologue
    .line 26
    if-nez p1, :cond_1

    .line 27
    const/4 v1, 0x0

    .line 43
    :cond_0
    :goto_0
    return-object v1

    .line 28
    :cond_1
    new-instance v1, Lcom/alibaba/wukong/im/GroupIconObject;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/GroupIconObject;-><init>()V

    .line 29
    .local v1, "object":Lcom/alibaba/wukong/im/GroupIconObject;
    iput-object p0, v1, Lcom/alibaba/wukong/im/GroupIconObject;->conversationId:Ljava/lang/String;

    .line 30
    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->type:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v1, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    .line 31
    iget v2, v1, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 32
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->automaticIcon:Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;

    .line 33
    .local v0, "iconModel":Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;
    if-eqz v0, :cond_0

    .line 34
    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconMediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    .line 35
    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;->automaticIconTag:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconTag:J

    goto :goto_0

    .line 38
    .end local v0    # "iconModel":Lcom/alibaba/wukong/idl/im/models/AutomaticIconModel;
    :cond_2
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;->customIcon:Lcom/alibaba/wukong/idl/im/models/CustomIconModel;

    .line 39
    .local v0, "iconModel":Lcom/alibaba/wukong/idl/im/models/CustomIconModel;
    if-eqz v0, :cond_0

    .line 40
    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/CustomIconModel;->customIconMediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    goto :goto_0
.end method
