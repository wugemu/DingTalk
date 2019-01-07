.class final Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$4;
.super Ljava/lang/Object;
.source "VerifyIdentityUtils.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyAlipay(Landroid/content/Context;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/api/RpcService;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/api/RpcService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$4;->a:Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$4;->a:Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v0, p1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setGW(Ljava/lang/String;)V
    .locals 0
    .param p1, "gwUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method
