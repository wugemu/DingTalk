.class Lcom/alivc/component/capture/VideoPusher$5;
.super Ljava/lang/Object;
.source "VideoPusher.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/capture/VideoPusher;->cameraAutoFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$5;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 968
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$5;->this$0:Lcom/alivc/component/capture/VideoPusher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1502(Lcom/alivc/component/capture/VideoPusher;Z)Z

    .line 969
    return-void
.end method
