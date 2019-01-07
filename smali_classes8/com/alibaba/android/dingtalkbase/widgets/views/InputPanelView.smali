.class public Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
.super Landroid/widget/RelativeLayout;
.source "InputPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

.field private F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

.field private G:Landroid/view/ViewStub;

.field private H:Landroid/view/ViewStub;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Z

.field private N:Landroid/view/ViewStub;

.field private O:Landroid/widget/TextView;

.field private P:Z

.field private Q:Landroid/view/ViewStub;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/widget/ImageView;

.field private T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field public a:Landroid/view/View;

.field private aA:Ljava/lang/Runnable;

.field private aB:J

.field private aC:J

.field private aD:Z

.field private aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Z

.field private ad:Landroid/animation/ObjectAnimator;

.field private ae:Z

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Landroid/view/ViewGroup;

.field private ar:Lcjz;

.field private as:Lcjz;

.field private at:Lcjz;

.field private au:Lcjz;

.field private av:Landroid/graphics/drawable/Drawable;

.field private aw:Lcom/alibaba/doraemon/image/ImageMagician;

.field private ax:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

.field private ay:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

.field private az:Landroid/os/Handler;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Z

.field public g:Landroid/view/ViewGroup;

.field public h:Ljava/lang/String;

.field public i:Lcjg;

.field public j:J

.field public k:J

.field private m:I

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/ViewGroup;

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    .line 126
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    .line 127
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aj:Z

    .line 128
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    .line 274
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->az:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aA:Ljava/lang/Runnable;

    .line 1241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aD:Z

    .line 1246
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j:J

    .line 1247
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k:J

    .line 156
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    .line 126
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    .line 127
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aj:Z

    .line 128
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    .line 274
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->az:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aA:Ljava/lang/Runnable;

    .line 1241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aD:Z

    .line 1246
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j:J

    .line 1247
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k:J

    .line 161
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    .line 126
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    .line 127
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aj:Z

    .line 128
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    .line 274
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->az:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aA:Ljava/lang/Runnable;

    .line 1241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aD:Z

    .line 1246
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j:J

    .line 1247
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k:J

    .line 166
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aC:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ah:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ax:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo p0, "cn"

    .line 373
    .end local p0    # "language":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 170
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->layout_input_panel:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    sget v0, Lcig$f;->rl_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->o:Landroid/view/ViewGroup;

    .line 173
    sget v0, Lcig$f;->view_increased:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p:Landroid/view/View;

    .line 174
    sget v0, Lcig$f;->input_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    .line 175
    sget v0, Lcig$f;->fl_sendmessage_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->s:Landroid/view/ViewGroup;

    .line 177
    sget v0, Lcig$f;->et_sendmessage:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 178
    sget v0, Lcig$f;->tv_sendmessage_single_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->u:Landroid/widget/TextView;

    .line 179
    sget v0, Lcig$f;->iv_quick_praise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->v:Landroid/widget/TextView;

    .line 180
    sget v0, Lcig$f;->fl_quick_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aq:Landroid/view/ViewGroup;

    .line 181
    sget v0, Lcig$f;->iv_quick_celebrate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->w:Landroid/widget/ImageView;

    .line 182
    sget v0, Lcig$f;->safe_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->x:Landroid/widget/ImageView;

    .line 183
    sget v0, Lcig$f;->et_sendmessage_banned:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->y:Landroid/widget/TextView;

    .line 184
    sget v0, Lcig$f;->btn_voice_switcher:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    .line 185
    new-instance v0, Lcjz;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->icon_im_keyboard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$c;->icon_im_keyboard_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->as:Lcjz;

    .line 187
    new-instance v0, Lcjz;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->icon_im_voice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$c;->icon_im_voice_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ar:Lcjz;

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ar:Lcjz;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    sget v0, Lcig$f;->btn_face:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    .line 191
    new-instance v0, Lcjz;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->icon_im_face:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$c;->icon_im_face_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->at:Lcjz;

    .line 193
    sget v0, Lcig$f;->ll_middle_operation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q:Landroid/widget/LinearLayout;

    .line 194
    sget v0, Lcig$f;->add_app:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    .line 195
    new-instance v0, Lcjz;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->icon_im_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$c;->ui_common_level1_plus_icon_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->au:Lcjz;

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->au:Lcjz;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    sget v0, Lcig$f;->btn_send:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    .line 199
    sget v0, Lcig$f;->btn_voice_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->B:Landroid/widget/Button;

    .line 200
    sget v0, Lcig$f;->switch_to_menu:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a:Landroid/view/View;

    .line 201
    sget v0, Lcig$f;->switch_to_menu_diver:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b:Landroid/view/View;

    .line 202
    const-string/jumbo v0, "pref_key_emotion_store_new_install"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->al:Z

    .line 2221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 206
    sget v0, Lcig$f;->input_footer_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    .line 207
    sget v0, Lcig$f;->emotion_footer_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setInputPanelView(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    .line 209
    sget v0, Lcig$f;->chat_add_app_footer_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    .line 211
    sget v0, Lcig$f;->vs_dynamic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->G:Landroid/view/ViewStub;

    .line 212
    sget v0, Lcig$f;->vs_comment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->H:Landroid/view/ViewStub;

    .line 213
    sget v0, Lcig$f;->fl_response_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    .line 214
    sget v0, Lcig$f;->vs_send_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->N:Landroid/view/ViewStub;

    .line 216
    sget v0, Lcig$f;->vs_translate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->Q:Landroid/view/ViewStub;

    .line 217
    sget v0, Lcig$f;->input_divider_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c:Landroid/view/View;

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "multipleLineMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->u:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->u:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ab:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 420
    .end local p3    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local p3    # "errorMsg":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    const-string/jumbo v0, "101001"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "440001"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "440002"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "440003"

    .line 413
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ab:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .end local p3    # "errorMsg":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local p3    # "errorMsg":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->dt_conversation_translate_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ab:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->dt_conversation_translate_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ae:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aB:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aD:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ac:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->R:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aC:J

    return-wide v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j:J

    return-wide v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aB:J

    return-wide v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k:J

    return-wide v0
.end method

.method private l()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/16 v11, 0x8

    const/4 v2, 0x0

    .line 465
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    .line 466
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    if-eqz v3, :cond_4

    .line 467
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ar:Lcjz;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcig$j;->dt_accessibility_conversation_switch_to_audio:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 473
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->s:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 474
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->B:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 3803
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 475
    :goto_1
    if-eqz v3, :cond_6

    .line 476
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 477
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    if-eqz v3, :cond_3

    .line 513
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-ne v3, v12, :cond_b

    move v0, v1

    .line 514
    .local v0, "showIncreased":Z
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p:Landroid/view/View;

    .line 4090
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v3, v7, :cond_3

    .line 4093
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_c

    .line 517
    .end local v0    # "showIncreased":Z
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m()V

    .line 518
    return-void

    .line 471
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v3, v2

    .line 3803
    goto :goto_1

    .line 480
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    if-eqz v3, :cond_7

    .line 483
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 485
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ap:Z

    if-eqz v3, :cond_2

    .line 487
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 491
    :cond_8
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-ne v3, v12, :cond_2

    .line 492
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    if-eqz v3, :cond_9

    .line 493
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->as:Lcjz;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcig$j;->dt_accessbility_conversation_keyboard:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 499
    :goto_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->s:Landroid/view/ViewGroup;

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 500
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    if-eqz v3, :cond_a

    .line 501
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->B:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 505
    :goto_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 497
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 503
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->B:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_b
    move v0, v2

    .line 513
    goto/16 :goto_3

    .line 4096
    .restart local v0    # "showIncreased":Z
    :cond_c
    iget-boolean v3, v5, Lcjg;->b:Z

    if-nez v3, :cond_d

    .line 4098
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 4102
    :cond_d
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 5072
    iget-object v3, v3, Lcid;->b:Lckd;

    .line 4103
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lckd;->d()Z

    move-result v3

    if-nez v3, :cond_e

    .line 4105
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 4108
    :catch_0
    move-exception v3

    .line 4110
    const-string/jumbo v7, "dingtalkbase"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "failed to get key isInputPanelCompatEnabled, error="

    aput-object v9, v8, v2

    .line 4111
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4110
    invoke-static {v7, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4116
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "navigationbar_hide_bar_enabled"

    invoke-static {v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 4118
    if-eq v3, v1, :cond_f

    .line 4120
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    .line 4125
    :catch_1
    move-exception v3

    iput-boolean v2, v5, Lcjg;->b:Z

    .line 4126
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v8, "Do not need compat InputPanel"

    invoke-static {v3, v4, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    :cond_f
    :goto_7
    iget-boolean v3, v5, Lcjg;->b:Z

    if-nez v3, :cond_10

    .line 4133
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 4127
    :catch_2
    move-exception v3

    .line 4128
    const-string/jumbo v8, "dingtalkbase"

    new-array v9, v12, [Ljava/lang/String;

    const-string/jumbo v10, "failed to get key navigationbar_hide_bar_enabled value, error="

    aput-object v10, v9, v2

    .line 4129
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4128
    invoke-static {v8, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 4138
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_11

    .line 4139
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcig$d;->input_panel_view_increased_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4140
    new-array v4, v12, [I

    aput v1, v4, v2

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4144
    :goto_8
    if-eqz v1, :cond_3

    .line 4147
    new-instance v2, Lcjg$2;

    invoke-direct {v2, v5, v6}, Lcjg$2;-><init>(Lcjg;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4154
    new-instance v2, Lcjg$3;

    invoke-direct {v2, v5, v0, v6}, Lcjg$3;-><init>(Lcjg;ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4168
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4169
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4170
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4171
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_4

    .line 4141
    :cond_11
    if-nez v0, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_12

    .line 4142
    new-array v3, v12, [I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v3, v2

    aput v1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_8

    :cond_12
    move-object v1, v4

    goto :goto_8
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aA:Ljava/lang/Runnable;

    return-object v0
.end method

.method private m()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 521
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aj:Z

    if-eqz v0, :cond_d

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 525
    const/4 v10, 0x0

    .line 526
    .local v10, "isGif":Z
    const/4 v2, 0x0

    .line 528
    .local v2, "faceUrl":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v11

    .line 529
    .local v11, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 530
    const/4 v10, 0x1

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 536
    .end local v11    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aw:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_1

    .line 538
    const-string/jumbo v0, "IMAGE"

    .line 539
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aw:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aw:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    :goto_1
    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 578
    .end local v2    # "faceUrl":Ljava/lang/String;
    .end local v10    # "isGif":Z
    :cond_2
    :goto_2
    return-void

    .line 533
    .restart local v2    # "faceUrl":Ljava/lang/String;
    .restart local v10    # "isGif":Z
    :catch_0
    move-exception v9

    .line 534
    .local v9, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v9}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v9    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    move v4, v5

    .line 541
    goto :goto_1

    .line 545
    .end local v2    # "faceUrl":Ljava/lang/String;
    .end local v10    # "isGif":Z
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f:Z

    if-eqz v0, :cond_9

    .line 547
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->av:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 548
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$e;->topic_gif:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->av:Landroid/graphics/drawable/Drawable;

    .line 550
    :cond_5
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-eq v0, v6, :cond_6

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-ne v0, v4, :cond_8

    .line 551
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcig$j;->dt_chatbox_toolbar_emotion:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 555
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->av:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->av:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->av:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    .line 552
    :cond_8
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-ne v0, v7, :cond_7

    .line 553
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcig$j;->dt_accessbility_conversation_keyboard:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 560
    :cond_9
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->al:Z

    if-eqz v0, :cond_a

    .line 561
    new-instance v8, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;-><init>(Landroid/content/Context;)V

    .line 562
    .local v8, "drawableBuilder":Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->at:Lcjz;

    .line 6038
    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    .line 6063
    iput-boolean v6, v8, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->d:Z

    .line 563
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcig$j;->dt_chatbox_toolbar_emotion:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 566
    .end local v8    # "drawableBuilder":Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;
    :cond_a
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-eq v0, v6, :cond_b

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-ne v0, v4, :cond_c

    .line 567
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->at:Lcjz;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcig$j;->dt_chatbox_toolbar_emotion:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 569
    :cond_c
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    if-ne v0, v7, :cond_2

    .line 570
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->as:Lcjz;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcig$j;->dt_accessbility_conversation_keyboard:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 576
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->az:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ae:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ay:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ah:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 588
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 622
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c()V

    goto :goto_0

    .line 626
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d()V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 5
    .param p1, "packageId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 10515
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    .line 10516
    :goto_0
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 10517
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckk;

    .line 10518
    if-eqz v0, :cond_1

    iget-object v4, v0, Lckk;->h:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lckk;->h:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10519
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 10520
    :cond_0
    return-void

    .line 10516
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/text/SpannableString;)V
    .locals 1
    .param p1, "content"    # Landroid/text/SpannableString;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->append(Ljava/lang/CharSequence;)V

    .line 843
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 358
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->af:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ag:Ljava/lang/String;

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->V:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->W:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 361
    const-string/jumbo v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v3

    .line 362
    .local v0, "srcStr":Ljava/lang/String;
    const-string/jumbo v2, "_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    .line 363
    .local v1, "targetStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->V:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->W:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .end local v0    # "srcStr":Ljava/lang/String;
    .end local v1    # "targetStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lckk;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 846
    .local p1, "emotionTabModels":Ljava/util/List;, "Ljava/util/List<Lckk;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 6140
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6141
    if-eqz p1, :cond_0

    .line 6142
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6144
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n:Lgl;

    invoke-virtual {v1}, Lgl;->notifyDataSetChanged()V

    .line 6145
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 849
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1022
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->an:Z

    if-nez v1, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->am:Z

    if-eqz v1, :cond_0

    .line 1027
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->am:Z

    .line 1028
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 1029
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ao:Z

    if-nez v1, :cond_2

    .line 1030
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ao:Z

    .line 1031
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->G:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1032
    .local v0, "view":Landroid/view/View;
    sget v1, Lcig$f;->dy_emotion_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .line 1034
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    if-eqz v1, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1044
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setVisibility(I)V

    .line 1045
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "sendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1102
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->P:Z

    if-nez v1, :cond_0

    .line 1103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->P:Z

    .line 1104
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->N:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1105
    .local v0, "view":Landroid/view/View;
    sget v1, Lcig$f;->rl_send_request:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e:Landroid/widget/RelativeLayout;

    .line 1106
    sget v1, Lcig$f;->tv_send_request:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->O:Landroid/widget/TextView;

    .line 1108
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 1124
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1113
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->O:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->O:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1118
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "content"    # Landroid/text/SpannableString;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ae:Z

    .line 378
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    move-result v0

    .line 379
    .local v0, "updateView":Z
    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    .line 393
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 388
    :cond_3
    if-eqz p1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1, p4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "typeTip"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 1071
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    .line 1076
    :goto_0
    return-void

    .line 1074
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    goto :goto_0
.end method

.method public final a(ZZ)Z
    .locals 6
    .param p1, "show"    # Z
    .param p2, "translating"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 301
    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ae:Z

    .line 302
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ac:Z

    if-nez v1, :cond_0

    .line 303
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ac:Z

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->Q:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, "view":Landroid/view/View;
    sget v1, Lcig$f;->ll_translate_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->R:Landroid/widget/LinearLayout;

    .line 306
    sget v1, Lcig$f;->img_translate_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    .line 307
    sget v1, Lcig$f;->edt_translate_result:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 308
    sget v1, Lcig$f;->btn_translate_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->U:Landroid/view/View;

    .line 309
    sget v1, Lcig$f;->btn_translate_setting_from:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->V:Landroid/widget/TextView;

    .line 310
    sget v1, Lcig$f;->btn_translate_setting_to:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->W:Landroid/widget/TextView;

    .line 311
    sget v1, Lcig$f;->tv_translate_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ab:Landroid/widget/TextView;

    .line 312
    sget v1, Lcig$f;->icon_translate_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->U:Landroid/view/View;

    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->R:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 354
    :goto_0
    return v2

    .line 350
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->R:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_5

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->af:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ag:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2426
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    sget v2, Lcig$e;->ui_translate_loading:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2427
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_2

    .line 2428
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->S:Landroid/widget/ImageView;

    const-string/jumbo v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    .line 2429
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2430
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2431
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2433
    :cond_2
    if-eqz p2, :cond_6

    .line 2434
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_3
    move v2, v4

    .line 354
    goto :goto_0

    :cond_4
    move v1, v3

    .line 350
    goto :goto_1

    :cond_5
    move v3, v2

    .line 351
    goto :goto_2

    .line 2436
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ad:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_3

    .line 2428
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 598
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    .line 599
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 600
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 601
    return-void
.end method

.method public final b(I)V
    .locals 4
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    .line 10041
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    if-eqz v1, :cond_1

    .line 10042
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .line 10077
    iget v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->e:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x3

    iget v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->f:I

    add-int/2addr v0, v1

    .line 10078
    iget v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->f:I

    if-ge v0, v1, :cond_2

    .line 10079
    iget v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->f:I

    move v1, v0

    .line 10081
    :goto_0
    iget v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g:I

    if-eq v0, v1, :cond_1

    .line 10084
    iput v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g:I

    .line 10085
    iget-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;

    .line 10086
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->b:Landroid/widget/GridView;

    if-eqz v3, :cond_0

    .line 10087
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    goto :goto_1

    .line 1018
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "addAppViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v11, -0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 973
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    if-eqz v0, :cond_8

    .line 974
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    .line 7037
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->b:Landroid/widget/LinearLayout;

    .line 7070
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b:Landroid/widget/LinearLayout;

    .line 7071
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7072
    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7073
    iget-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a:Ljava/util/List;

    .line 7101
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7102
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7104
    :cond_0
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7105
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7107
    :cond_1
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7108
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7110
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 7111
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    :goto_0
    iput v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    move v1, v2

    .line 7112
    :goto_1
    iget v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    if-ge v1, v0, :cond_5

    .line 7113
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcig$h;->layout_chat_app_pager:I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 7114
    sget v0, Lcig$f;->chat_app_grid:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 7115
    mul-int/lit8 v7, v1, 0x8

    .line 7116
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-le v3, v8, :cond_4

    .line 7117
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 7118
    :goto_2
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;

    iget-object v9, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-interface {v5, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    const/16 v7, 0x8

    invoke-direct {v8, v9, v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;Ljava/util/List;I)V

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7119
    iget-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 7120
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;

    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-direct {v3, v7, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;Landroid/view/View;Landroid/widget/GridView;)V

    .line 7121
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 7111
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7117
    :cond_4
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x8

    goto :goto_2

    .line 7124
    :cond_5
    iget v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    move v0, v2

    .line 7125
    :goto_3
    iget v1, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    if-ge v0, v1, :cond_6

    .line 7126
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7127
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7129
    iget-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 7130
    iget-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 7131
    iget-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7132
    iget-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7125
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7135
    :cond_6
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->notifyDataSetChanged()V

    .line 7136
    iget v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    if-eqz v0, :cond_8

    .line 7139
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)I

    move-result v0

    iget v1, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a:I

    if-lt v0, v1, :cond_7

    .line 7140
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;I)I

    .line 7142
    :cond_7
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    iget-object v1, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->setCurrentItem(I)V

    .line 7143
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a(I)V

    .line 976
    :cond_8
    return-void
.end method

.method public final b(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "typeTip"    # Ljava/lang/String;
    .param p4, "content"    # Landroid/text/SpannableString;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1079
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->M:Z

    if-nez v1, :cond_0

    .line 1080
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->M:Z

    .line 1081
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->H:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1082
    .local v0, "view":Landroid/view/View;
    sget v1, Lcig$f;->rl_comment_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->I:Landroid/widget/RelativeLayout;

    .line 1083
    sget v1, Lcig$f;->tv_comment_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->J:Landroid/widget/TextView;

    .line 1084
    sget v1, Lcig$f;->tv_comment_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->K:Landroid/widget/TextView;

    .line 1085
    sget v1, Lcig$f;->tv_comment_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->L:Landroid/widget/TextView;

    .line 1087
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->I:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 1099
    :goto_0
    return-void

    .line 1090
    :cond_1
    if-eqz p1, :cond_3

    .line 1091
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->J:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->L:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->K:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->I:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1097
    goto :goto_1

    :cond_5
    move v2, v3

    .line 1098
    goto :goto_2
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    .line 608
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 609
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->B:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 610
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    .line 617
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 619
    return-void
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 683
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->al:Z

    if-eqz v0, :cond_0

    .line 770
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->al:Z

    .line 771
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_key_emotion_store_new_install"

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 772
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m()V

    .line 774
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 979
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    return-void
.end method

.method public getAddApp()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    return v0
.end method

.method public getAddAppButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m:I

    return v0
.end method

.method public getExtendFootContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getExtendContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFace()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aj:Z

    return v0
.end method

.method public getFaceButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessageEditContent()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 807
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 808
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "trans":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    .end local v0    # "trans":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 813
    .restart local v0    # "trans":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$-$+$+$-$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 816
    .end local v0    # "trans":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQuickCelebrateView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickPraiseView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getRootView()Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    return-object v0
.end method

.method public getSafeIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSendButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSendMessageBannedView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    return-object v0
.end method

.method public getSwitchMenuButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getTranslateEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVoiceRecord()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    return v0
.end method

.method public getVoiceRecordButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->B:Landroid/widget/Button;

    return-object v0
.end method

.method public getVoiceSwitcherButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final h()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 7491
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setVisibility(I)V

    .line 7492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7493
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->i:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->i:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 7494
    :cond_0
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->i:J

    .line 7495
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;

    if-eqz v1, :cond_1

    .line 7496
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;->a()V

    .line 7499
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a()V

    .line 7506
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v1

    .line 8075
    iget v1, v1, Lcrc;->a:I

    .line 7506
    iget v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->m:I

    if-le v1, v2, :cond_2

    .line 7507
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v1

    .line 9075
    iget v1, v1, Lcrc;->a:I

    .line 7507
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->m:I

    .line 7508
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;

    if-eqz v1, :cond_2

    .line 7509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;->a()V

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->setVisibility(I)V

    .line 986
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 995
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setVisibility(I)V

    .line 998
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b()V

    .line 1263
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->isShown()Z

    move-result v0

    .line 1309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 442
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 443
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p:Landroid/view/View;

    .line 3037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 3040
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3041
    :cond_0
    :goto_0
    return-void

    .line 3043
    :cond_1
    iget-object v0, v1, Lcjg;->a:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 3044
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3045
    new-instance v0, Lcjg$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcjg$1;-><init>(Lcjg;Landroid/os/Handler;Landroid/content/Context;Landroid/view/View;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, v1, Lcjg;->a:Landroid/database/ContentObserver;

    .line 3070
    const-string/jumbo v0, "navigationbar_hide_bar_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3071
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v1, v1, Lcjg;->a:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 451
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 452
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->az:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3076
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 3079
    iget-object v2, v0, Lcjg;->a:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 3080
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcjg;->a:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3081
    const/4 v1, 0x0

    iput-object v1, v0, Lcjg;->a:Landroid/database/ContentObserver;

    .line 456
    :cond_0
    return-void
.end method

.method public setAddApp(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ai:Z

    .line 640
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 641
    return-void
.end method

.method public setAddAppButtonOnClicker(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    return-void
.end method

.method public setAutoTransEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aD:Z

    .line 1244
    return-void
.end method

.method public setBgColor(I)V
    .locals 2
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setBackgroundColor(I)V

    .line 1255
    sget v1, Lcig$f;->input_divider_top:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1256
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1257
    return-void
.end method

.method public setCustomEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;)V
    .locals 1
    .param p1, "customEmotionSyncDelegate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setCustomEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;)V

    .line 873
    :cond_0
    return-void
.end method

.method public setDynamicDefaultImage(I)V
    .locals 1
    .param p1, "defaultImage"    # I

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setDefaultImage(I)V

    .line 1144
    :cond_0
    return-void
.end method

.method public setDynamicEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;)V
    .locals 1
    .param p1, "dynamicEmotionClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setDynamicEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;)V

    .line 918
    :cond_0
    return-void
.end method

.method public setDynamicEmotionSearchEmpty(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setEmotionResultEmpty(Ljava/lang/String;)V

    .line 964
    :cond_0
    return-void
.end method

.method public setDynamicEmotionSearchHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setSearchHint(Ljava/lang/String;)V

    .line 970
    :cond_0
    return-void
.end method

.method public setDynamicEmotionSearchListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;)V
    .locals 1
    .param p1, "dynamicEmotionSearchListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setEmotionSearchListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;)V

    .line 945
    :cond_0
    return-void
.end method

.method public setDynamicEmotionVisible(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->an:Z

    .line 895
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Z)V

    .line 898
    :cond_0
    return-void
.end method

.method public setEmotionBottomBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 989
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setBottomBarVisible(Z)V

    .line 992
    :cond_0
    return-void
.end method

.method public setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 885
    :cond_0
    return-void
.end method

.method public setEmotionDeleteClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;)V
    .locals 1
    .param p1, "emotionDeleteClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setEmotionDeleteClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;)V

    .line 924
    :cond_0
    return-void
.end method

.method public setEmotionFooterViewVisibilityListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setVisibilityListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;)V

    .line 855
    :cond_0
    return-void
.end method

.method public setEmotionSettingClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;)V
    .locals 1
    .param p1, "emotionSettingClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setEmotionSettingClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;)V

    .line 867
    :cond_0
    return-void
.end method

.method public setEmotionStoreClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;)V
    .locals 1
    .param p1, "emotionStoreClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setEmotionStoreClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;)V

    .line 861
    :cond_0
    return-void
.end method

.method public setEmotionStoreVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 909
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->c(Z)V

    .line 912
    :cond_0
    return-void
.end method

.method public setFace(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aj:Z

    .line 645
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 646
    return-void
.end method

.method public setFaceEventIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h:Ljava/lang/String;

    .line 650
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m()V

    .line 651
    return-void
.end method

.method public setForceShowSend(Z)V
    .locals 0
    .param p1, "forceShowSend"    # Z

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ap:Z

    .line 675
    return-void
.end method

.method public setHasFaceGifTips(Z)V
    .locals 1
    .param p1, "faceHasGif"    # Z

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f:Z

    if-eq v0, p1, :cond_0

    .line 782
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->f:Z

    .line 783
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m()V

    .line 785
    :cond_0
    return-void
.end method

.method public setHotDynamicEmotionListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;)V
    .locals 1
    .param p1, "hotDynamicEmotionListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->F:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setHotEmotionListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;)V

    .line 951
    :cond_0
    return-void
.end method

.method public setIconColor(I)V
    .locals 14
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1202
    .line 11094
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 11095
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 11096
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 11098
    const v10, 0x106000c

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 11099
    const v11, 0x106000c

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 11100
    const v12, 0x106000c

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 11102
    const v13, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v10, v13}, Lcpz;->a(IIF)I

    move-result v7

    .line 11103
    const v10, 0x3e4ccccd    # 0.2f

    invoke-static {v8, v11, v10}, Lcpz;->a(IIF)I

    move-result v8

    .line 11104
    const v10, 0x3e4ccccd    # 0.2f

    invoke-static {v9, v12, v10}, Lcpz;->a(IIF)I

    move-result v9

    .line 11105
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-static {v10, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 1203
    .local v5, "pressedColor":I
    const v7, 0x3ecccccd    # 0.4f

    invoke-static {p1, v7}, Lcpz;->a(IF)I

    move-result v1

    .line 12032
    .local v1, "disabledColor":I
    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v8, 0x2

    aput p1, v7, v8

    .line 12033
    const/4 v8, 0x3

    new-array v8, v8, [[I

    .line 12034
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, -0x101009e

    aput v12, v10, v11

    aput-object v10, v8, v9

    .line 12035
    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    aput-object v10, v8, v9

    .line 12036
    const/4 v9, 0x2

    const/4 v10, 0x0

    new-array v10, v10, [I

    aput-object v10, v8, v9

    .line 12037
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v8, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1206
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->z:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1207
    .local v6, "voiceDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v6, Lcjz;

    if-eqz v7, :cond_3

    .line 1208
    check-cast v6, Lcjz;

    .line 12041
    .end local v6    # "voiceDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, v6, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1215
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->A:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1216
    .local v2, "faceDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Lcjz;

    if-eqz v7, :cond_4

    .line 1217
    check-cast v2, Lcjz;

    .line 14041
    .end local v2    # "faceDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, v2, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1224
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1225
    .local v4, "moreDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v4, Lcjz;

    if-eqz v7, :cond_5

    .line 1226
    check-cast v4, Lcjz;

    .line 16041
    .end local v4    # "moreDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, v4, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1233
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->at:Lcjz;

    .line 18041
    iput-object v0, v7, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1234
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ar:Lcjz;

    .line 19041
    iput-object v0, v7, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1235
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->as:Lcjz;

    .line 20041
    iput-object v0, v7, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1236
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->au:Lcjz;

    .line 21041
    iput-object v0, v7, Lcjz;->a:Landroid/content/res/ColorStateList;

    .line 1237
    return-void

    .line 1209
    .restart local v6    # "voiceDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v7, v6, Lcqw;

    if-eqz v7, :cond_0

    .line 1210
    check-cast v6, Lcqw;

    .line 12077
    .end local v6    # "voiceDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v6, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 1211
    .local v3, "mainDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v3, Lcjz;

    if-eqz v7, :cond_0

    .line 1212
    check-cast v3, Lcjz;

    .line 13041
    .end local v3    # "mainDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, v3, Lcjz;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1218
    .restart local v2    # "faceDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v7, v2, Lcqw;

    if-eqz v7, :cond_1

    .line 1219
    check-cast v2, Lcqw;

    .line 14077
    .end local v2    # "faceDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v2, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 1220
    .restart local v3    # "mainDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v3, Lcjz;

    if-eqz v7, :cond_1

    .line 1221
    check-cast v3, Lcjz;

    .line 15041
    .end local v3    # "mainDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, v3, Lcjz;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 1227
    .restart local v4    # "moreDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v7, v4, Lcqw;

    if-eqz v7, :cond_2

    .line 1228
    check-cast v4, Lcqw;

    .line 16077
    .end local v4    # "moreDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v4, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 1229
    .restart local v3    # "mainDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v3, Lcjz;

    if-eqz v7, :cond_2

    .line 1230
    check-cast v3, Lcjz;

    .line 17041
    .end local v3    # "mainDrawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, v3, Lcjz;->a:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 12035
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public setLayoutParamsOfFooterView(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->D:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public setMessageEditContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 833
    return-void
.end method

.method public setMessageEditCursorVisible(Z)V
    .locals 1
    .param p1, "isVislible"    # Z

    .prologue
    .line 790
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setCursorVisible(Z)V

    .line 791
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->requestFocus()Z

    .line 792
    return-void
.end method

.method public setMiddleOperationPaddingLeft(I)V
    .locals 4
    .param p1, "paddingLeft"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 632
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q:Landroid/widget/LinearLayout;

    .line 633
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q:Landroid/widget/LinearLayout;

    .line 634
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q:Landroid/widget/LinearLayout;

    .line 635
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 632
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 636
    return-void
.end method

.method public setOnTranslateListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ay:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    .line 758
    return-void
.end method

.method public setQuickParentVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 735
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 736
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->aq:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 738
    :cond_0
    return-void

    .line 736
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setQuickPraiseVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 729
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 730
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->v:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    :cond_0
    return-void

    .line 730
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setQuickPriaseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    :cond_0
    return-void
.end method

.method public setRecentInnerEmotionSynDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;)V
    .locals 1
    .param p1, "recentInnerEmotionSynDelegate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->setRecentEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;)V

    .line 879
    :cond_0
    return-void
.end method

.method public setSafeIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 741
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    :cond_0
    return-void

    .line 742
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSendButtonOnClicker(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    return-void
.end method

.method public setSendRequestOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->O:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->O:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    :cond_0
    return-void
.end method

.method public setTextChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;)V
    .locals 0
    .param p1, "textChangeListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ax:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;

    .line 754
    return-void
.end method

.method public setTexthint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "texthint"    # Ljava/lang/CharSequence;

    .prologue
    .line 799
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/CharSequence;Z)V

    .line 800
    return-void
.end method

.method public setTexthint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 795
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/CharSequence;Z)V

    .line 796
    return-void
.end method

.method public setTopDividerVisible(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 888
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 889
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 891
    :cond_0
    return-void

    .line 889
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTranslateEditText(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "content":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :cond_1
    return-void
.end method

.method public setVoiceRecord(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->ak:Z

    .line 679
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->l()V

    .line 680
    return-void
.end method
