.class public final Lcom/mybank/android/api/VerifyTask$2;
.super Ljava/lang/Object;
.source "VerifyTask.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/api/VerifyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/api/RpcService;

.field final synthetic b:Lcom/mybank/android/api/VerifyTask;


# direct methods
.method public constructor <init>(Lcom/mybank/android/api/VerifyTask;Lcom/mybank/android/phone/common/service/api/RpcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/api/VerifyTask;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mybank/android/api/VerifyTask$2;->b:Lcom/mybank/android/api/VerifyTask;

    iput-object p2, p0, Lcom/mybank/android/api/VerifyTask$2;->a:Lcom/mybank/android/phone/common/service/api/RpcService;

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
    .line 105
    .local p1, "var1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/mybank/android/api/VerifyTask$2;->a:Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v0, p1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setGW(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method
