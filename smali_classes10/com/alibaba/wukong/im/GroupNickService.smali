.class public interface abstract Lcom/alibaba/wukong/im/GroupNickService;
.super Ljava/lang/Object;
.source "GroupNickService.java"


# virtual methods
.method public abstract addGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V
.end method

.method public abstract getGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupNick(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;
.end method

.method public abstract listGroupNicks(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V
.end method

.method public abstract setConvertPinyinManager(Libd$a;)V
.end method

.method public abstract updateGroupNick(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method
