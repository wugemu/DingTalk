.class final Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$1;
.super Ljava/lang/Object;
.source "DdFullMediaPlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$1;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$1;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$1;->a:Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 65
    return-void
.end method
