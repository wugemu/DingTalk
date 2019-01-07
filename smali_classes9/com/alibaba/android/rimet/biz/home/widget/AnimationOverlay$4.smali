.class final Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;
.super Ljava/lang/Object;
.source "AnimationOverlay.java"

# interfaces
.implements Llgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->d(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->e(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V

    .line 297
    return-void
.end method
