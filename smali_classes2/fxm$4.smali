.class public final Lfxm$4;
.super Ljava/lang/Object;
.source "UicMtopHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcma;

.field final synthetic c:Lfxm;


# direct methods
.method public constructor <init>(Lfxm;Lorg/json/JSONObject;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfxm;

    .prologue
    .line 166
    iput-object p1, p0, Lfxm$4;->c:Lfxm;

    iput-object p2, p0, Lfxm$4;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lfxm$4;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 166
    .line 1169
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    .line 1170
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    move-object v1, v0

    .line 1171
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    .line 1172
    :goto_1
    iget-object v2, p0, Lfxm$4;->c:Lfxm;

    iget-object v3, p0, Lfxm$4;->a:Lorg/json/JSONObject;

    iget-object v4, p0, Lfxm$4;->b:Lcma;

    invoke-static {v2, v1, v0, v3, v4}, Lfxm;->a(Lfxm;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V

    .line 166
    return-void

    .line 1170
    :cond_0
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_0

    .line 1171
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lfxm$4;->b:Lcma;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lfxm$4;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 178
    return-void
.end method
