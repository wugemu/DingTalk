.class final Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView$1;
.super Ljava/lang/Object;
.source "JniGLView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView$1;->a:Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->b()Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->b()Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->b()Ljava/lang/String;

    .line 36
    return-void
.end method
