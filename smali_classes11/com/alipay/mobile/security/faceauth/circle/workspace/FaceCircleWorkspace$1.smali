.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;
.super Landroid/os/Handler;
.source "FaceCircleWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    .line 120
    .local v0, "what":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "faceFrame&3:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 121
    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->ONLYFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->resetTask(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->SELFFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->resetTask(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->FPPFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->resetTask(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V

    goto :goto_0

    .line 136
    :pswitch_4
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->stopTimerTask()V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
