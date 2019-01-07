.class public Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;
.super Ljava/lang/Object;
.source "SearchPushResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1c6a5ec120cd9ebeL


# instance fields
.field public pushClickResultObject:Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;

.field public pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

.field public pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromIdl(Leph;)Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;
    .locals 2
    .param p0, "model"    # Leph;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;-><init>()V

    .line 26
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;
    iget-object v1, p0, Leph;->a:Leov;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->fromIdl(Leov;)Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushGroupResultObject:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    .line 27
    iget-object v1, p0, Leph;->b:Leox;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->fromIdl(Leox;)Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushUserResultObject:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 28
    iget-object v1, p0, Leph;->c:Leot;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->fromIDL(Leot;)Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/SearchPushResultObject;->pushClickResultObject:Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;

    goto :goto_0
.end method
