.class public abstract Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.super Ljava/lang/Object;
.source "ReceiverMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private topic:Ljava/lang/String;

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 13
    .local p0, "this":Lcom/laiwang/idl/client/push/ReceiverMessageHandler;, "Lcom/laiwang/idl/client/push/ReceiverMessageHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .local v1, "superType":Ljava/lang/reflect/Type;
    move-object v0, v1

    .line 15
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 16
    .local v0, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->type:Ljava/lang/reflect/Type;

    .line 17
    iput-object p1, p0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->topic:Ljava/lang/String;

    .line 18
    sget-object v2, Liyy;->a:Liyy;

    invoke-virtual {v2, p0}, Liyy;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/laiwang/idl/client/push/ReceiverMessageHandler;, "Lcom/laiwang/idl/client/push/ReceiverMessageHandler<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->type:Ljava/lang/reflect/Type;

    .line 23
    iput-object p1, p0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->topic:Ljava/lang/String;

    .line 24
    sget-object v0, Liyy;->a:Liyy;

    invoke-virtual {v0, p0}, Liyy;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getReturnType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/laiwang/idl/client/push/ReceiverMessageHandler;, "Lcom/laiwang/idl/client/push/ReceiverMessageHandler<TT;>;"
    iget-object v0, p0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/laiwang/idl/client/push/ReceiverMessageHandler;, "Lcom/laiwang/idl/client/push/ReceiverMessageHandler<TT;>;"
    iget-object v0, p0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;",
            ")V"
        }
    .end annotation
.end method
