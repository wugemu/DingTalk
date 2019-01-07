.class public Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
.super Ljava/lang/Object;
.source "TypeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    }
.end annotation


# instance fields
.field private componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public componentTypeInfo:Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

.field private rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getClassGenericType(Ljava/lang/Class;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/alimei/restfulapi/support/TypeInfo;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getGetnericType(Ljava/lang/reflect/Type;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    move-result-object v1

    .line 58
    .local v1, "type":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 60
    .local v0, "gifs":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getGetnericType(Ljava/lang/reflect/Type;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    move-result-object v1

    .line 65
    .end local v0    # "gifs":[Ljava/lang/reflect/Type;
    :cond_0
    return-object v1
.end method

.method private static getGetnericType(Ljava/lang/reflect/Type;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .locals 6
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v4, 0x0

    .line 84
    if-nez p0, :cond_1

    move-object v3, v4

    .line 113
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v3, "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 88
    .end local v3    # "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const/4 v3, 0x0

    .line 90
    .restart local v3    # "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 91
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 92
    .local v0, "args":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 93
    new-instance v3, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    .end local v3    # "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;-><init>()V

    .line 95
    .restart local v3    # "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;

    invoke-direct {v1, v4}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;-><init>(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$1;)V

    .line 96
    .local v1, "counter":Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->handleRawAndComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 98
    .end local v0    # "args":[Ljava/lang/reflect/Type;
    .end local v1    # "counter":Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_3

    move-object v2, p0

    .line 99
    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 100
    .local v2, "ga":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 101
    new-instance v3, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    .end local v3    # "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;-><init>()V

    .line 102
    .restart local v3    # "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;

    invoke-direct {v1, v4}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;-><init>(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$1;)V

    .line 103
    .restart local v1    # "counter":Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->handleRawAndComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 105
    .end local v1    # "counter":Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    .end local v2    # "ga":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-nez v4, :cond_0

    .line 107
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v4, :cond_0

    .line 111
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getClassGenericType(Ljava/lang/Class;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private static handleComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V
    .locals 3
    .param p0, "counter"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    .param p1, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .param p2, "type0"    # Ljava/lang/reflect/Type;

    .prologue
    .line 146
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 147
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 148
    .local v1, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 150
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;-><init>()V

    iput-object v2, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->componentTypeInfo:Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    .line 151
    iget-object v2, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->componentTypeInfo:Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    invoke-static {p0, v2, p2}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->handleRawAndComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V

    .line 161
    .end local v1    # "pt":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    iput-object v0, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->componentType:Ljava/lang/Class;

    .line 162
    return-void

    .line 153
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    instance-of v2, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_1

    .line 154
    const-class v0, Ljava/lang/reflect/Array;

    .line 156
    .restart local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->handleRawAndComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v0, p2

    .line 158
    check-cast v0, Ljava/lang/Class;

    .restart local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method private static handleRawAndComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V
    .locals 4
    .param p0, "counter"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
    .param p1, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->isContinue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->step()V

    .line 124
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 125
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 126
    .local v2, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iput-object v3, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->rawType:Ljava/lang/Class;

    .line 129
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 130
    .local v0, "args":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {p0, p1, v3}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->handleComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 133
    .end local v0    # "args":[Ljava/lang/reflect/Type;
    .end local v2    # "pt":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    instance-of v3, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_3

    .line 134
    const-class v3, Ljava/lang/reflect/Array;

    iput-object v3, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->rawType:Ljava/lang/Class;

    move-object v1, p2

    .line 136
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 137
    .local v1, "ga":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->handleComponentType(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 139
    .end local v1    # "ga":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->componentType:Ljava/lang/Class;

    .line 140
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    iput-object p2, p1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->rawType:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public setComponentType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->componentType:Ljava/lang/Class;

    .line 39
    return-void
.end method

.method public setRawType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->rawType:Ljava/lang/Class;

    .line 47
    return-void
.end method
