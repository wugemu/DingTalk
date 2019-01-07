.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;
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
    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.camera.flash"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    sget v2, Lov$d;->ar_toast_no_flash:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->f(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->a(Z)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->i(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->f(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->g(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    iget-object v3, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->f(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Z)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 217
    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$13;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->h(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v1, v2

    .line 219
    goto :goto_3
.end method
