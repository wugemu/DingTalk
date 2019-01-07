.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationSafeIService;
.super Ljava/lang/Object;
.source "ConversationSafeIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getFirstEnterConversationMsgs(Ldtg;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldtg;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;",
            ">;>;)V"
        }
    .end annotation
.end method
