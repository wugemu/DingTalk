.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$18;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$18;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$18;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getRenderer()Low;

    move-result-object v0

    .line 1289
    iget-object v0, v0, Low;->l:Loz;

    .line 2289
    const/4 v1, 0x1

    iput-boolean v1, v0, Loz;->b:Z

    .line 309
    return-void
.end method
