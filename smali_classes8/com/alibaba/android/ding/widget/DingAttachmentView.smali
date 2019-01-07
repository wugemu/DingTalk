.class public Lcom/alibaba/android/ding/widget/DingAttachmentView;
.super Landroid/widget/RelativeLayout;
.source "DingAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingAttachmentView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

.field private p:Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.workapp.ding.send.space.attachment"

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b:Ljava/lang/String;

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "from_album_"

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c:Ljava/lang/String;

    .line 68
    iput v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->d:I

    .line 69
    const/16 v0, 0x48

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->e:I

    .line 70
    iput v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f:I

    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.workapp.ding.send.space.attachment"

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b:Ljava/lang/String;

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "from_album_"

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c:Ljava/lang/String;

    .line 68
    iput v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->d:I

    .line 69
    const/16 v0, 0x48

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->e:I

    .line 70
    iput v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f:I

    .line 99
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.workapp.ding.send.space.attachment"

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b:Ljava/lang/String;

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "from_album_"

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c:Ljava/lang/String;

    .line 68
    iput v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->d:I

    .line 69
    const/16 v0, 0x48

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->e:I

    .line 70
    iput v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f:I

    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->n:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 21199
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 21200
    sget v1, Laxp$g;->ding_layout_ding_upload:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21201
    sget v0, Laxp$f;->iv_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    .line 21202
    sget v0, Laxp$f;->layout_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    .line 21203
    sget v0, Laxp$f;->ding_attachment_iv_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 21204
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setCurrentDrawable(I)V

    .line 21205
    sget v0, Laxp$f;->ding_attachment_file_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    .line 21206
    sget v0, Laxp$f;->ding_attachment_uploading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    .line 21207
    sget v0, Laxp$f;->iv_attachment_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 21208
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21209
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21213
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;-><init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21228
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;-><init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21239
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;-><init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21297
    new-instance v1, Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$4;-><init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    const-class v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 21347
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 21297
    invoke-static {v1, v2, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 21351
    new-instance v0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;-><init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->q:Landroid/content/BroadcastReceiver;

    .line 21384
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21385
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21386
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21388
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 4
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    .line 22326
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 533
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    .line 23326
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 534
    iget-wide v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v2, v3}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 536
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 24326
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 536
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-static {v1}, Lcow;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    .line 537
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    .line 27406
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$i;->ding_text_is_uoloading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v2, 0x0

    .line 62
    .line 28694
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28695
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28697
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28698
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28700
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28701
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v2, v3}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28703
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28704
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v1}, Lcow;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    invoke-static {v2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(II)V

    .line 28706
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 28707
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 29176
    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/io/File;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 62
    .line 25397
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 25398
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25399
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$i;->ding_text_is_uoloading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25400
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 25420
    if-eqz p1, :cond_0

    .line 25421
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25423
    :cond_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25424
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25469
    :goto_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25471
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26431
    invoke-direct {p0, v5, v5}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 25501
    :cond_1
    :goto_1
    return-void

    .line 25426
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 25473
    :cond_3
    if-eqz p1, :cond_1

    .line 25474
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25475
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 25477
    :cond_4
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->TEXT:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25478
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$e;->file_doc:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25479
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25480
    if-eqz v0, :cond_1

    .line 25481
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 25483
    :cond_5
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->AUDIO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25484
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$e;->file_audio:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25485
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25486
    if-eqz v0, :cond_1

    .line 25487
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 25489
    :cond_6
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25490
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$e;->file_unkonwn:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25491
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25492
    if-eqz v0, :cond_1

    .line 25493
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 25495
    :cond_7
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->OTHERS:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25496
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$e;->file_unkonwn:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25497
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25498
    if-eqz v0, :cond_1

    .line 25499
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 25502
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$e;->file_unkonwn:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25503
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25504
    if-eqz v0, :cond_1

    .line 25505
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 62
    .line 27689
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 27690
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 28176
    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 10
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxp$e;->file_unkonwn:I

    invoke-static {v1, v3}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 437
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 438
    if-eqz v6, :cond_0

    .line 439
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    move-object v2, p1

    .line 444
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 451
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 453
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v8

    .line 454
    .local v8, "strategy":Lhcj;
    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v8, v2, v1, v5}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 455
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 457
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/4 v4, 0x0

    .line 458
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 459
    const-string/jumbo v1, "DING"

    .line 22168
    iget-object v5, p2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->f:Ljava/lang/String;

    .line 459
    const-string/jumbo v9, ""

    invoke-static {v5, v9}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 461
    :cond_3
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 447
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "strategy":Lhcj;
    :catch_0
    move-exception v7

    .line 448
    .local v7, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v1, "[DingAttachmentView]refreshImageWithMediaId failed"

    invoke-static {v1, v7}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    .line 634
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 635
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 636
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 637
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    .line 25346
    const-string/jumbo v0, "ding_addfile_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 24649
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24650
    sget v0, Laxp$i;->ding_choose_attachment:I

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 24651
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24652
    sget v0, Laxp$i;->ding_attachment_album:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24653
    sget v0, Laxp$i;->ding_attachment_space:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24654
    sget v0, Laxp$i;->cancel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24655
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 24656
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 24657
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 24656
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 24659
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;

    invoke-direct {v0, p0, v3}, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;-><init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/util/List;)V

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 24685
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 62
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    .line 25392
    sget v0, Laxp$i;->ding_network_error_upload:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 25393
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->ding_upload_error_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    .line 27410
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->ding_upload_error_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    .line 27414
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27415
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27416
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_text_has_uploaded:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->p:Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->q:Landroid/content/BroadcastReceiver;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 1326
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 118
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 2326
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 119
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 3326
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 120
    iget-wide v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 121
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 4326
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 121
    iget-wide v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(J)V

    .line 123
    :cond_1
    return-void
.end method

.method public getDingAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    return-object v0
.end method

.method public setAttachmentSelectListener(Lcom/alibaba/android/ding/widget/DingAttachmentView$a;)V
    .locals 0
    .param p1, "attachmentSelectListener"    # Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->p:Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    .line 127
    return-void
.end method

.method public setDingAttachmentModule(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 9
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 134
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    if-nez v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 5314
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 138
    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    if-ne v2, v4, :cond_19

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 5326
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 139
    if-eqz v2, :cond_0

    .line 6326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 142
    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v1

    .line 143
    .local v1, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 6511
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6512
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    .line 6513
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v2, ""

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6514
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6515
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    .line 8326
    iget-object v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6515
    iget-wide v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6516
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 10326
    iget-object v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6516
    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .line 21144
    iget-boolean v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->g:Z

    .line 183
    if-eqz v2, :cond_18

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10641
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 10642
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42900000    # 72.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10643
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10644
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11520
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11521
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 11522
    iget-wide v4, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    .line 11523
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    sget v4, Laxp$i;->ding_text_has_uploaded:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 14326
    :goto_3
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 11527
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 15326
    iget-object v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 11527
    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto :goto_1

    .line 11525
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    .line 13326
    iget-object v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 11525
    iget-wide v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 151
    :cond_5
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 16326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 152
    iget-object v0, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 153
    .local v0, "dingLinkObject":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    iget v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Mail:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 155
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 17326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 16540
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 16541
    if-nez v2, :cond_6

    .line 16542
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16543
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16550
    :goto_4
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16551
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget v4, Laxp$e;->ding_mail_btn_normal:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 16545
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16546
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16547
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16548
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 157
    :cond_7
    iget v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_OA:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v4

    if-ne v2, v4, :cond_b

    .line 159
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 18326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 17555
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 17556
    if-nez v2, :cond_9

    .line 17557
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17558
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17565
    :goto_5
    if-eqz v2, :cond_8

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 17567
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 17569
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 17570
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget v4, Laxp$e;->file_web:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 17560
    :cond_9
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17561
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17562
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17563
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 17572
    :cond_a
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 18431
    invoke-direct {p0, v2, v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_1

    .line 161
    :cond_b
    iget v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v4

    if-eq v2, v4, :cond_c

    iget v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_Personal_Space:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    .line 162
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v4

    if-ne v2, v4, :cond_d

    .line 164
    :cond_c
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 165
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_1

    .line 168
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 19326
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 18577
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 18578
    if-nez v2, :cond_f

    .line 18579
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18580
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18587
    :goto_6
    if-eqz v2, :cond_e

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 18589
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 18591
    :cond_e
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18592
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget v4, Laxp$e;->file_web:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 18582
    :cond_f
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18583
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18584
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18585
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 18594
    :cond_10
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 19431
    invoke-direct {p0, v2, v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_1

    .line 171
    .end local v0    # "dingLinkObject":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    :cond_11
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 173
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_1

    .line 174
    :cond_12
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 175
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    .line 19599
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19600
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget v4, Laxp$e;->ding_attachment_forward_combine:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    .line 19602
    if-nez p1, :cond_14

    .line 19603
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19629
    :cond_13
    :goto_7
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 20326
    :cond_14
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 19609
    if-nez v2, :cond_15

    .line 19610
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 19615
    :cond_15
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionTitle()Ljava/lang/String;

    move-result-object v4

    .line 19616
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionContent(I)Ljava/lang/String;

    move-result-object v2

    .line 19618
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19619
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 19620
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19625
    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 19626
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19627
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 19622
    :cond_16
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->j:Landroid/widget/TextView;

    sget v5, Laxp$i;->dt_default_forward_combine_msg:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 178
    :cond_17
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b()V

    goto/16 :goto_1

    .line 183
    :cond_18
    const/4 v2, 0x4

    goto/16 :goto_2

    .line 185
    .end local v1    # "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    :cond_19
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->m:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView;->o:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 21176
    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    goto/16 :goto_0
.end method
