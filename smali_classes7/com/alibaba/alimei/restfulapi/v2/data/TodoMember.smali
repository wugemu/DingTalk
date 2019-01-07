.class public Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;
.super Ljava/lang/Object;
.source "TodoMember.java"


# instance fields
.field public aliasEmail:Ljava/lang/String;

.field public displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;->aliasEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAliasEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "aliasEmail"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;->aliasEmail:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;->displayName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "aliasEmail"

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;->aliasEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method
