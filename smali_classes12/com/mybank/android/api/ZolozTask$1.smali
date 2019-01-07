.class public final Lcom/mybank/android/api/ZolozTask$1;
.super Ljava/lang/Object;
.source "ZolozTask.java"

# interfaces
.implements Lcom/alipay/mobile/security/zim/api/ZIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/api/ZolozTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljex;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mybank/android/api/ZolozTask;


# direct methods
.method public constructor <init>(Lcom/mybank/android/api/ZolozTask;Ljex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/api/ZolozTask;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/mybank/android/api/ZolozTask$1;->e:Lcom/mybank/android/api/ZolozTask;

    iput-object p2, p0, Lcom/mybank/android/api/ZolozTask$1;->a:Ljex;

    iput-object p3, p0, Lcom/mybank/android/api/ZolozTask$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mybank/android/api/ZolozTask$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mybank/android/api/ZolozTask$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
    .locals 6
    .param p1, "zimResponse"    # Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->e:Lcom/mybank/android/api/ZolozTask;

    invoke-static {v2}, Lcom/mybank/android/api/ZolozTask;->a(Lcom/mybank/android/api/ZolozTask;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->e:Lcom/mybank/android/api/ZolozTask;

    invoke-static {v2}, Lcom/mybank/android/api/ZolozTask;->a(Lcom/mybank/android/api/ZolozTask;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->destroy()V

    .line 209
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->e:Lcom/mybank/android/api/ZolozTask;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mybank/android/api/ZolozTask;->a(Lcom/mybank/android/api/ZolozTask;Lcom/alipay/mobile/security/zim/api/ZIMFacade;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->a:Ljex;

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v2, "2000"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "task1":Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->a:Ljex;

    iget-object v3, p0, Lcom/mybank/android/api/ZolozTask$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mybank/android/api/ZolozTask$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/mybank/android/api/ZolozTask$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Ljex;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    .line 238
    .end local v1    # "task1":Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    if-eqz p1, :cond_4

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "extInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->extInfo:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 224
    iget-object v2, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->extInfo:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 227
    :cond_3
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mybank/android/api/ZolozTask$1;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 228
    .restart local v1    # "task1":Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->a:Ljex;

    iget-object v3, p0, Lcom/mybank/android/api/ZolozTask$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mybank/android/api/ZolozTask$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/mybank/android/api/ZolozTask$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Ljex;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0

    .line 232
    .end local v0    # "extInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "task1":Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
    :cond_4
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v2, "-1"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v1    # "task1":Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
    iget-object v2, p0, Lcom/mybank/android/api/ZolozTask$1;->a:Ljex;

    iget-object v3, p0, Lcom/mybank/android/api/ZolozTask$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mybank/android/api/ZolozTask$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/mybank/android/api/ZolozTask$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Ljex;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0
.end method
