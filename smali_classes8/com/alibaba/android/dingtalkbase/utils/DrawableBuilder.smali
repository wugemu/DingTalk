.class public Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;
.super Ljava/lang/Object;
.source "DrawableBuilder.java"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:F

.field public d:Z

.field public e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->f:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 110
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->b:I

    if-lez v1, :cond_0

    .line 111
    new-instance v1, Lcjz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->f:Landroid/content/Context;

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->b:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->e:Landroid/content/res/ColorStateList;

    invoke-direct {v1, v2, v3}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 115
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 118
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcjz;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcjz;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->c:F

    .line 1045
    iput v2, v1, Lcjz;->b:F

    .line 121
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->d:Z

    if-nez v1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Lcqw;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcqw;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 1070
    .local v0, "dotDrawable":Lcqw;
    iput v4, v0, Lcqw;->b:I

    .line 1071
    iput v4, v0, Lcqw;->c:I

    .line 1072
    iput v4, v0, Lcqw;->d:I

    .line 1073
    iput v4, v0, Lcqw;->e:I

    goto :goto_0
.end method
