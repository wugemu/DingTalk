.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$10;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$10;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 354
    :cond_0
    return-void
.end method
