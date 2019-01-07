.class public final Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView$a;
.super Ljava/lang/Object;
.source "JavaCameraView.java"

# interfaces
.implements Lgww;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 58
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    return v1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 64
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    return v1
.end method
