.class public interface abstract Lcom/alibaba/wukong/idl/auth/client/OAuthIService;
.super Ljava/lang/Object;
.source "OAuthIService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract alogin(Lcom/alibaba/wukong/auth/l;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/l;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/o;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract kick(Ljava/lang/Integer;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract login(Lcom/alibaba/wukong/auth/m;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/m;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/o;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginBySms(Lcom/alibaba/wukong/auth/s;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/s;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/o;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginWithToken(Lcom/alibaba/wukong/auth/t;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/t;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/o;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshToken(Lcom/alibaba/wukong/auth/p;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/p;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/o;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendLoginSms(Lcom/alibaba/wukong/auth/s;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/s;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
