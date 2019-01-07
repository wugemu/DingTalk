.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase$1;
.super Ljava/lang/Object;
.source "CameraBridgeViewBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;


# direct methods
.method constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase$1;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 253
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase$1;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 254
    return-void
.end method
