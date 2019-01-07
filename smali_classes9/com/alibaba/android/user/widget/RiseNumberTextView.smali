.class public Lcom/alibaba/android/user/widget/RiseNumberTextView;
.super Landroid/widget/TextView;
.source "RiseNumberTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/widget/RiseNumberTextView$a;
    }
.end annotation


# static fields
.field static final f:[I


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:J

.field public e:I

.field private g:Ljava/text/DecimalFormat;

.field private h:Lcom/alibaba/android/user/widget/RiseNumberTextView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->f:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a:I

    .line 36
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->d:J

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->e:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->h:Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a:I

    .line 36
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->d:J

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->e:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->h:Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a:I

    .line 36
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->d:J

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->e:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->h:Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    .line 60
    return-void
.end method

.method public static a(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/android/user/widget/RiseNumberTextView;->f:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 112
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/RiseNumberTextView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/RiseNumberTextView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/RiseNumberTextView;)Ljava/text/DecimalFormat;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/RiseNumberTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->g:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/widget/RiseNumberTextView;)Lcom/alibaba/android/user/widget/RiseNumberTextView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/RiseNumberTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->h:Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 118
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->g:Ljava/text/DecimalFormat;

    .line 119
    return-void
.end method

.method public setOnEnd(Lcom/alibaba/android/user/widget/RiseNumberTextView$a;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/android/user/widget/RiseNumberTextView;->h:Lcom/alibaba/android/user/widget/RiseNumberTextView$a;

    .line 171
    return-void
.end method
