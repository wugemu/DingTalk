.class public abstract Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
.super Ljava/lang/Object;
.source "Shimmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;, "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    return-void
.end method

.method private static a(FFF)F
    .locals 2
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "value"    # F

    .prologue
    .line 401
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private a(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .locals 1
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;, "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput p1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->d:I

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .locals 1
    .param p1, "shape"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;, "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput p1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->g:I

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method a(Landroid/content/res/TypedArray;)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .locals 11
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;, "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b<TT;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 154
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_clip_to_children:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_clip_to_children:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->o:Z

    .line 156
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1348
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput-boolean v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->o:Z

    .line 1349
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 159
    :cond_0
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_auto_start:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_auto_start:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->p:Z

    .line 161
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1354
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput-boolean v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->p:Z

    .line 1355
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 163
    :cond_1
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_base_alpha:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_base_alpha:I

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2331
    invoke-static {v6, v7, v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(FFF)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 2332
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    shl-int/lit8 v2, v2, 0x18

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    .line 2333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 166
    :cond_2
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_highlight_alpha:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_highlight_alpha:I

    invoke-virtual {p1, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2338
    invoke-static {v6, v7, v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(FFF)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 2339
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    shl-int/lit8 v2, v2, 0x18

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    .line 2340
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 169
    :cond_3
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_duration:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_duration:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->t:J

    long-to-int v3, v4

    .line 171
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    .line 2387
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 2388
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Given a negative duration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2390
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput-wide v2, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->t:J

    .line 2391
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 174
    :cond_5
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_repeat_count:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_repeat_count:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->r:I

    .line 176
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 3363
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->r:I

    .line 3364
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 178
    :cond_6
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_repeat_delay:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 179
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_repeat_delay:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->u:J

    long-to-int v3, v4

    .line 180
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    .line 3378
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_7

    .line 3379
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Given a negative repeat delay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3381
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput-wide v2, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->u:J

    .line 3382
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 183
    :cond_8
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_repeat_mode:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 184
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_repeat_mode:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->s:I

    .line 185
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 4372
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->s:I

    .line 4373
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 188
    :cond_9
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_direction:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 189
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_direction:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->d:I

    .line 190
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 191
    .local v0, "direction":I
    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-direct {p0, v9}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 208
    .end local v0    # "direction":I
    :cond_a
    :goto_0
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_shape:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_shape:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 210
    .local v1, "shape":I
    packed-switch v1, :pswitch_data_1

    .line 213
    invoke-direct {p0, v9}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->b(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 221
    .end local v1    # "shape":I
    :cond_b
    :goto_1
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_dropoff:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 222
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_dropoff:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->m:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 5313
    cmpg-float v3, v2, v6

    if-gez v3, :cond_c

    .line 5314
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Given invalid dropoff value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    .restart local v0    # "direction":I
    :pswitch_0
    invoke-direct {p0, v10}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    goto :goto_0

    .line 200
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    goto :goto_0

    .line 203
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    goto :goto_0

    .line 216
    .end local v0    # "direction":I
    .restart local v1    # "shape":I
    :pswitch_3
    invoke-direct {p0, v10}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->b(I)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    goto :goto_1

    .line 5316
    .end local v1    # "shape":I
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->m:F

    .line 5317
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 224
    :cond_d
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_fixed_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 225
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_fixed_width:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->h:I

    .line 226
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 6266
    if-gez v2, :cond_e

    .line 6267
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Given invalid width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6269
    :cond_e
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->h:I

    .line 6270
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 229
    :cond_f
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_fixed_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 230
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_fixed_height:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->i:I

    .line 231
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 6275
    if-gez v2, :cond_10

    .line 6276
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Given invalid height: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6278
    :cond_10
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->i:I

    .line 6279
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 234
    :cond_11
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_intensity:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 235
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_intensity:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    .line 236
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 6302
    cmpg-float v3, v2, v6

    if-gez v3, :cond_12

    .line 6303
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Given invalid intensity value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6305
    :cond_12
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    .line 6306
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 238
    :cond_13
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_width_ratio:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 239
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_width_ratio:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->j:F

    .line 240
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 7284
    cmpg-float v3, v2, v6

    if-gez v3, :cond_14

    .line 7285
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Given invalid width ratio: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7287
    :cond_14
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->j:F

    .line 7288
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 242
    :cond_15
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_height_ratio:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 243
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_height_ratio:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->k:F

    .line 244
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 7293
    cmpg-float v3, v2, v6

    if-gez v3, :cond_16

    .line 7294
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Given invalid height ratio: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7296
    :cond_16
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->k:F

    .line 7297
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 246
    :cond_17
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_tilt:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 247
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_tilt:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->n:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 7322
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iput v2, v3, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->n:F

    .line 7323
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    .line 249
    :cond_18
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    move-result-object v2

    return-object v2

    .line 191
    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public final b()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;, "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b<TT;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    .line 8098
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->g:I

    packed-switch v1, :pswitch_data_0

    .line 8101
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    aput v2, v1, v6

    .line 8102
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    aput v2, v1, v7

    .line 8103
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    aput v2, v1, v8

    .line 8104
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    const/4 v2, 0x3

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    aput v0, v1, v2

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    .line 8116
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->g:I

    packed-switch v1, :pswitch_data_1

    .line 8119
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    sub-float v2, v4, v2

    iget v3, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->m:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v6

    .line 8120
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    sub-float v2, v4, v2

    const v3, 0x3a83126f    # 0.001f

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v7

    .line 8121
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    add-float/2addr v2, v4

    const v3, 0x3a83126f    # 0.001f

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v8

    .line 8122
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    const/4 v2, 0x3

    iget v3, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    add-float/2addr v3, v4

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->m:F

    add-float/2addr v0, v3

    div-float/2addr v0, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v2

    .line 397
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    return-object v0

    .line 8107
    :pswitch_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    aput v2, v1, v6

    .line 8108
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    aput v2, v1, v7

    .line 8109
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    aput v2, v1, v8

    .line 8110
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    const/4 v2, 0x3

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    aput v0, v1, v2

    goto :goto_0

    .line 8125
    :pswitch_1
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    const/4 v2, 0x0

    aput v2, v1, v6

    .line 8126
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v7

    .line 8127
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    iget v3, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->m:F

    add-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v8

    .line 8128
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    goto :goto_1

    .line 8098
    .line 8116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
