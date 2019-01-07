.class public final Ldlt;
.super Ldlv;
.source "ForwardCombineEncryptFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlv",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ldlv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldlm;)V
    .locals 4
    .param p1, "params"    # Ldlm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Ldlm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Ldlt;->b(Ldlm;)V

    goto :goto_0

    .line 46
    :cond_1
    instance-of v1, p1, Ldln;

    if-nez v1, :cond_2

    .line 47
    const-string/jumbo v1, "Params must be ForwardSingleParams"

    invoke-static {p1, v1}, Ldlt;->a(Ldlm;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 51
    check-cast v0, Ldln;

    .line 1059
    .local v0, "singleParams":Ldln;
    iget-object v1, v0, Ldln;->c:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 1060
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    new-instance v3, Ldlt$1;

    invoke-direct {v3, p0, v0}, Ldlt$1;-><init>(Ldlt;Ldln;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    goto :goto_0
.end method
