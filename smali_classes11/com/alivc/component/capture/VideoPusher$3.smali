.class Lcom/alivc/component/capture/VideoPusher$3;
.super Ljava/lang/Object;
.source "VideoPusher.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/capture/VideoPusher;->setFocus(FF)V
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
    .line 796
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$3;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 799
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 800
    return-void
.end method
