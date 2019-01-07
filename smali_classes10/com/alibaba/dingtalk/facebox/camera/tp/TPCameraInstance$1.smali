.class final Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$1;
.super Ljava/lang/Object;
.source "TPCameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$1;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance$1;->a:Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a(Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;)Lgse;

    move-result-object v0

    invoke-virtual {v0}, Lgse;->a()V

    .line 135
    return-void
.end method
