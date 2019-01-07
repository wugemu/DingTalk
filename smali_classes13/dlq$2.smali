.class final Ldlq$2;
.super Ljava/lang/Object;
.source "ForwardBatchEncryptFileTask.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldln;

.field final synthetic b:Ldlq;


# direct methods
.method constructor <init>(Ldlq;Ldln;)V
    .locals 0
    .param p1, "this$0"    # Ldlq;

    .prologue
    .line 90
    iput-object p1, p0, Ldlq$2;->b:Ldlq;

    iput-object p2, p0, Ldlq$2;->a:Ldln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "result"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 93
    iget-object v0, p0, Ldlq$2;->a:Ldln;

    invoke-static {v0, p1}, Ldlq;->a(Ldlm;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 106
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
    .line 98
    iget-object v1, p0, Ldlq$2;->a:Ldln;

    invoke-static {v1, p2, p3}, Ldlq;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardBatchEncryptFileTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "send failed, code="

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

    .line 101
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardBatchEncryptFileTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
