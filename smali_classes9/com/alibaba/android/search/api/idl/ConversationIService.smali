.class public interface abstract Lcom/alibaba/android/search/api/idl/ConversationIService;
.super Ljava/lang/Object;
.source "ConversationIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract searchConversation(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/ConversationModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract searchPublic(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/ConversationModel;",
            ">;>;)V"
        }
    .end annotation
.end method
