.class public final Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$3;
.super Ljava/lang/Object;
.source "OneBoxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 523
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcig$f;->img_guide:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 524
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 526
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 528
    :cond_0
    return-void
.end method
