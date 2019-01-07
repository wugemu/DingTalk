.class public final Ldlq;
.super Ldlv;
.source "ForwardBatchEncryptFileTask.java"


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
    .line 26
    invoke-direct {p0}, Ldlv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldlm;)V
    .locals 7
    .param p1, "params"    # Ldlm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Ldlm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Ldlq;->b(Ldlm;)V

    goto :goto_0

    .line 39
    :cond_1
    instance-of v1, p1, Ldln;

    if-nez v1, :cond_2

    .line 40
    const-string/jumbo v1, "Params must be ForwardSingleParams"

    invoke-static {p1, v1}, Ldlq;->a(Ldlm;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 44
    check-cast v0, Ldln;

    .line 1054
    .local v0, "singleParams":Ldln;
    iget-object v1, v0, Ldln;->c:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 1055
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v1, p0, Ldlq;->a:Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Ldlq$1;

    invoke-direct {v4, p0, v0}, Ldlq$1;-><init>(Ldlq;Ldln;)V

    const-class v5, Lcma;

    iget-object v6, v0, Ldln;->a:Landroid/app/Activity;

    .line 1056
    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1055
    invoke-virtual {v3, v2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    goto :goto_0
.end method
