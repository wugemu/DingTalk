.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRecommendationService;
.super Ljava/lang/Object;
.source "GroupRecommendationService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getSimilarGroups(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/ConversationModel;",
            ">;>;)V"
        }
    .end annotation
.end method
