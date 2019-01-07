.class public final Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;
.super Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
.source "Shimmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b",
        "<",
        "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;-><init>()V

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->q:Z

    .line 419
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .locals 0

    .prologue
    .line 416
    return-object p0
.end method

.method final synthetic a(Landroid/content/res/TypedArray;)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 416
    .line 1435
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(Landroid/content/res/TypedArray;)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 1436
    sget v0, Lcig$l;->ShimmerFrameLayout_shimmer_base_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    sget v0, Lcig$l;->ShimmerFrameLayout_shimmer_base_color:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    .line 1438
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2429
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    const v3, 0xffffff

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    .line 1440
    :cond_0
    sget v0, Lcig$l;->ShimmerFrameLayout_shimmer_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1441
    sget v0, Lcig$l;->ShimmerFrameLayout_shimmer_highlight_color:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    .line 1442
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 3423
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v0, v1, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    .line 416
    :cond_1
    return-object p0
.end method
