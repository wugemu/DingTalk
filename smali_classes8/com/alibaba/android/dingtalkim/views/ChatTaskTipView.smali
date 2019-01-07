.class public Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
.super Landroid/widget/FrameLayout;
.source "ChatTaskTipView.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Layv$b;

.field public g:Layv$c;

.field public h:Layv$d;

.field public i:Layv$f;

.field public j:Layv$i;

.field public k:Layv$a;

.field public l:Layv$g;

.field public m:Layv$e;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    .line 287
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->q:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f:Layv$b;

    .line 309
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g:Layv$c;

    .line 316
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h:Layv$d;

    .line 331
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->i:Layv$f;

    .line 349
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->j:Layv$i;

    .line 361
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->k:Layv$a;

    .line 382
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->l:Layv$g;

    .line 390
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->m:Layv$e;

    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    .line 287
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->q:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f:Layv$b;

    .line 309
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g:Layv$c;

    .line 316
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h:Layv$d;

    .line 331
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->i:Layv$f;

    .line 349
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->j:Layv$i;

    .line 361
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->k:Layv$a;

    .line 382
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->l:Layv$g;

    .line 390
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->m:Layv$e;

    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    .line 287
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->q:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f:Layv$b;

    .line 309
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g:Layv$c;

    .line 316
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h:Layv$d;

    .line 331
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->i:Layv$f;

    .line 349
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->j:Layv$i;

    .line 361
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->k:Layv$a;

    .line 382
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->l:Layv$g;

    .line 390
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->m:Layv$e;

    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    .line 287
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$5;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->q:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$6;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f:Layv$b;

    .line 309
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$7;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g:Layv$c;

    .line 316
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$8;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h:Layv$d;

    .line 331
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$9;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->i:Layv$f;

    .line 349
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$10;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->j:Layv$i;

    .line 361
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$11;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->k:Layv$a;

    .line 382
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->l:Layv$g;

    .line 390
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->m:Layv$e;

    .line 87
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b()V

    .line 214
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c()V

    .line 215
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d()V

    .line 216
    return-void
.end method

.method private a(J)V
    .locals 3
    .param p1, "dingId"    # J

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c()V

    .line 425
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b()V

    .line 427
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f()V

    .line 429
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->im_chat_task:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    sget v0, Lctk$f;->iv_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 95
    sget v0, Lctk$f;->iv_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->p:Landroid/widget/ImageView;

    .line 96
    sget v0, Lctk$f;->tv_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->n:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_page_bg_color:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;JLcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    .prologue
    .line 51
    .line 3399
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    if-ne p3, v0, :cond_0

    .line 3400
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(J)V

    :goto_0
    return-void

    .line 3402
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;JZ)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 51
    .line 2408
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2409
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    if-eqz p3, :cond_0

    .line 2411
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 2414
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e()V

    .line 2415
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a()V

    .line 2417
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f()V

    .line 51
    :cond_1
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-static {p0}, Lddq;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {p0}, Lddq;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-static {p0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {}, Ldjs;->a()Ldjs;

    move-result-object v1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldjs;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_orange_icon_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_level1_icon_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private b(J)V
    .locals 3
    .param p1, "dingId"    # J

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e()V

    .line 437
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a()V

    .line 439
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f()V

    .line 441
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(J)V

    return-void
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->n:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$i;->dt_im_todo_tasks_pannel_hasdata_title:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setVisibility(I)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->n:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_todo_tasks_pannel_nodata_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    .line 2247
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 2250
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2254
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$4;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 2280
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 2281
    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2284
    :cond_2
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/util/List;Lcma;)V

    .line 51
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 238
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b:J

    return-wide v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 449
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 453
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    if-gez v0, :cond_2

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 456
    :cond_2
    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 460
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    .line 1266
    if-eqz v1, :cond_0

    .line 1270
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Layv$9;

    invoke-direct {v3, v0, v1}, Layv$9;-><init>(Layv;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f()V

    return-void
.end method
