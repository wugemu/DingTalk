.class final Ldlw$2;
.super Ljava/lang/Object;
.source "MultiToTaskEncryptFileTask.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldlp;

.field final synthetic b:Ldlw;


# direct methods
.method constructor <init>(Ldlw;Ldlp;)V
    .locals 0
    .param p1, "this$0"    # Ldlw;

    .prologue
    .line 97
    iput-object p1, p0, Ldlw$2;->b:Ldlw;

    iput-object p2, p0, Ldlw$2;->a:Ldlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "codeStr":Ljava/lang/String;
    iget-object v2, p0, Ldlw$2;->a:Ldlp;

    invoke-static {v2, v0, p2}, Ldlw;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Ldlw;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "uploadImage failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "errorMsg":Ljava/lang/String;
    const-string/jumbo v2, "im"

    invoke-static {}, Ldlw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 101
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 97
    check-cast p1, Lifx;

    .line 1105
    if-nez p1, :cond_0

    .line 1106
    const-string/jumbo v0, "im"

    invoke-static {}, Ldlw;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uploadResponse is empty."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Ldlw$2;->a:Ldlp;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "uploadResponse is null"

    invoke-static {v0, v1, v2}, Ldlw;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_0
    return-void

    .line 2026
    :cond_0
    iget-object v1, p1, Lifx;->a:Ljava/lang/String;

    .line 2034
    iget-object v2, p1, Lifx;->b:Ljava/lang/String;

    .line 1114
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v8, v3

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 1117
    iget-object v1, p0, Ldlw$2;->a:Ldlp;

    invoke-static {v1, v0}, Ldlw;->a(Ldlm;Ljava/lang/Object;)V

    goto :goto_0
.end method
