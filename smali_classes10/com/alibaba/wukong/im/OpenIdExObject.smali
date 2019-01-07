.class public Lcom/alibaba/wukong/im/OpenIdExObject;
.super Ljava/lang/Object;
.source "OpenIdExObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf84ff01a3b78a53L


# instance fields
.field private extTag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "extTag"
    .end annotation
.end field

.field private openId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "openId"
    .end annotation
.end field

.field private tag:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2IdlModel(Lcom/alibaba/wukong/im/OpenIdExObject;)Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/wukong/im/OpenIdExObject;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;-><init>()V

    .line 92
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    iget-wide v2, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->openId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    .line 93
    iget-wide v2, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->tag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    .line 94
    iget-object v1, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->extTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->extTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static convert2IdlModelList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    :cond_0
    const/4 v1, 0x0

    .line 114
    :cond_1
    return-object v1

    .line 105
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/OpenIdExObject;

    .line 107
    .local v2, "object":Lcom/alibaba/wukong/im/OpenIdExObject;
    invoke-static {v2}, Lcom/alibaba/wukong/im/OpenIdExObject;->convert2IdlModel(Lcom/alibaba/wukong/im/OpenIdExObject;)Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    move-result-object v0

    .line 108
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    if-eqz v0, :cond_3

    .line 109
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromIdl(Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;)Lcom/alibaba/wukong/im/OpenIdExObject;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/OpenIdExObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/OpenIdExObject;-><init>()V

    .line 61
    .local v0, "object":Lcom/alibaba/wukong/im/OpenIdExObject;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/OpenIdExObject;->openId:J

    .line 62
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/OpenIdExObject;->tag:J

    .line 63
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->extTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/OpenIdExObject;->extTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :cond_0
    const/4 v2, 0x0

    .line 82
    :cond_1
    return-object v2

    .line 74
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .line 76
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    invoke-static {v0}, Lcom/alibaba/wukong/im/OpenIdExObject;->fromIdl(Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;)Lcom/alibaba/wukong/im/OpenIdExObject;

    move-result-object v1

    .line 77
    .local v1, "object":Lcom/alibaba/wukong/im/OpenIdExObject;
    if-eqz v1, :cond_3

    .line 78
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getExtTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->extTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->openId:J

    return-wide v0
.end method

.method public getTag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->tag:J

    return-wide v0
.end method

.method public setExtTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "extTag"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->extTag:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setOpenId(J)V
    .locals 1
    .param p1, "openId"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->openId:J

    .line 36
    return-void
.end method

.method public setTag(J)V
    .locals 1
    .param p1, "tag"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/alibaba/wukong/im/OpenIdExObject;->tag:J

    .line 44
    return-void
.end method
