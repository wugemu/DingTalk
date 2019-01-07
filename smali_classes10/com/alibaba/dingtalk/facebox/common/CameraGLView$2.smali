.class final Lcom/alibaba/dingtalk/facebox/common/CameraGLView$2;
.super Ljava/lang/Object;
.source "CameraGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$2;->a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$2;->a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)Lgse;

    move-result-object v0

    invoke-virtual {v0}, Lgse;->a()V

    .line 197
    return-void
.end method
