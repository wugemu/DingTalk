.class public final Lieq;
.super Ljava/lang/Object;
.source "AVAudioEventHandler.java"

# interfaces
.implements Liez$a;


# instance fields
.field private a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    iput-object v0, p0, Lieq;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 50
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 26
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 27
    .local v1, "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    iget-object v2, p0, Lieq;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    .line 28
    .local v0, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 30
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 31
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 32
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->g()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Z)V

    .line 33
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->h()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->c(Z)V

    goto :goto_0

    .line 38
    .end local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v1    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 39
    .restart local v1    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    iget-object v2, p0, Lieq;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    .line 40
    .restart local v0    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Ljava/lang/String;)V

    .line 42
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 43
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    goto :goto_0

    .line 24
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
