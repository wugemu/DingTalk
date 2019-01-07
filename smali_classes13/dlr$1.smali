.class final Ldlr$1;
.super Ljava/lang/Object;
.source "ForwardBatchEncryptTextTask.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlr;->a(Ldlm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlm;

.field final synthetic b:Ldlr;


# direct methods
.method constructor <init>(Ldlr;Ldlm;)V
    .locals 0
    .param p1, "this$0"    # Ldlr;

    .prologue
    .line 57
    iput-object p1, p0, Ldlr$1;->b:Ldlr;

    iput-object p2, p0, Ldlr$1;->a:Ldlm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "result"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 60
    iget-object v0, p0, Ldlr$1;->a:Ldlm;

    invoke-static {v0, p1}, Ldlr;->a(Ldlm;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 72
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v1, p0, Ldlr$1;->a:Ldlm;

    invoke-static {v1, p2, p3}, Ldlr;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardBatchEncryptTextTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardBatchEncryptTextTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
