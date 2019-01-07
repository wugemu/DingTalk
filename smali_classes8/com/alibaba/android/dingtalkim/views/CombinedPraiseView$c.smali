.class public final Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;
.super Ljava/lang/Object;
.source "CombinedPraiseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->g:Landroid/content/Context;

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->g:Landroid/content/Context;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->b:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->e:I

    .line 288
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    .line 289
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->d:I

    .line 290
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;-><init>(Landroid/content/Context;)V

    return-void
.end method
