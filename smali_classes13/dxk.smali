.class public final Ldxk;
.super Ljava/lang/Object;
.source "ConversationAuthApiImpl.java"

# interfaces
.implements Ldxj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldsr;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    .local p2, "listener":Lcma;, "Lcma<Ldsr;>;"
    if-nez p2, :cond_0

    .line 42
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 26
    :cond_1
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "param is invalid"

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationAuthIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationAuthIService;

    .line 31
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationAuthIService;
    if-eqz v1, :cond_3

    .line 32
    new-instance v0, Ldxk$1;

    invoke-direct {v0, p0, p2}, Ldxk$1;-><init>(Ldxk;Lcma;)V

    .line 38
    .local v0, "handler":Lcmg;, "Lcmg<Ldsr;Ldsr;>;"
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationAuthIService;->checkO2O(Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 40
    .end local v0    # "handler":Lcmg;, "Lcmg<Ldsr;Ldsr;>;"
    :cond_3
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "service is null"

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
