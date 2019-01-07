.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$3;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Z)V
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
    .line 379
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$3;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$3;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->l(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 383
    return-void
.end method
