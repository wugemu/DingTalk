.class public Lcom/alibaba/android/user/connection/ui/CommentListView;
.super Landroid/widget/LinearLayout;
.source "CommentListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/ui/CommentListView$b;,
        Lcom/alibaba/android/user/connection/ui/CommentListView$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field private d:I

.field private e:I

.field private f:Lcom/alibaba/android/user/connection/ui/CommentListView$a;

.field private g:Lcom/alibaba/android/user/connection/ui/CommentListView$b;

.field private h:Landroid/view/LayoutInflater;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/connection/ui/CommentListView;->a(Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/connection/ui/CommentListView;->a(Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method private a(Ljava/lang/String;J)Landroid/text/SpannableString;
    .locals 6
    .param p1, "textStr"    # Ljava/lang/String;
    .param p2, "id"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 169
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v0, "subjectSpanText":Landroid/text/SpannableString;
    new-instance v1, Lcom/alibaba/android/user/connection/ui/CommentListView$3;

    iget v2, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->d:I

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/alibaba/android/user/connection/ui/CommentListView$3;-><init>(Lcom/alibaba/android/user/connection/ui/CommentListView;IJ)V

    .line 175
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 170
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 177
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->i:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 178
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/ui/CommentListView;)Lcom/alibaba/android/user/connection/ui/CommentListView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/CommentListView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->f:Lcom/alibaba/android/user/connection/ui/CommentListView$a;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lezg$n;->CommentListView:[I

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lezg$n;->CommentListView_item_color:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->comment_item_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->d:I

    .line 73
    sget v1, Lezg$n;->CommentListView_item_selector_color:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->comment_item_selector_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_link_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->i:I

    .line 80
    return-void

    .line 76
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/ui/CommentListView;)Lcom/alibaba/android/user/connection/ui/CommentListView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/CommentListView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->g:Lcom/alibaba/android/user/connection/ui/CommentListView$b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->removeAllViews()V

    .line 85
    iget-object v3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 96
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->h:Landroid/view/LayoutInflater;

    if-nez v3, :cond_2

    .line 1100
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->h:Landroid/view/LayoutInflater;

    .line 1102
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->h:Landroid/view/LayoutInflater;

    sget v4, Lezg$j;->item_connection_comment:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1104
    sget v3, Lezg$h;->item_circle_cmts_detail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1105
    sget v4, Lezg$h;->item_circle_cmts_prefix:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1106
    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->b:Z

    if-eqz v5, :cond_6

    .line 1107
    invoke-virtual {v4, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1111
    :goto_1
    new-instance v6, Lffc;

    iget v4, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->e:I

    iget v5, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->e:I

    invoke-direct {v6, v4, v5}, Lffc;-><init>(II)V

    .line 1113
    iget-object v4, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 1114
    iget-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-object v7, v5, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    .line 1116
    const-string/jumbo v5, ""

    .line 1117
    iget-object v8, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v8, :cond_3

    .line 1118
    iget-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    .line 1122
    :cond_3
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1124
    iget-object v9, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v10, v9, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-direct {p0, v7, v10, v11}, Lcom/alibaba/android/user/connection/ui/CommentListView;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1126
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1127
    const-string/jumbo v7, " "

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lezg$l;->dt_circle_comment_reply2:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1129
    const-string/jumbo v7, " "

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1130
    iget-object v7, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v10, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-direct {p0, v5, v10, v11}, Lcom/alibaba/android/user/connection/ui/CommentListView;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1132
    :cond_4
    const-string/jumbo v5, ": "

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1134
    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    .line 1135
    invoke-static {}, Lfcn;->a()Lfcn;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CommentListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-static {v7, v9}, Lcms;->a(Landroid/content/Context;F)F

    move-result v7

    invoke-static {v5, v4, v7}, Lfcn;->b(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 1137
    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1138
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1141
    new-instance v4, Lcom/alibaba/android/user/connection/ui/CommentListView$1;

    invoke-direct {v4, p0, v6, v0}, Lcom/alibaba/android/user/connection/ui/CommentListView$1;-><init>(Lcom/alibaba/android/user/connection/ui/CommentListView;Lffc;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    new-instance v4, Lcom/alibaba/android/user/connection/ui/CommentListView$2;

    invoke-direct {v4, p0, v6, v0}, Lcom/alibaba/android/user/connection/ui/CommentListView$2;-><init>(Lcom/alibaba/android/user/connection/ui/CommentListView;Lffc;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 92
    invoke-virtual {p0, v2, v0, v1}, Lcom/alibaba/android/user/connection/ui/CommentListView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1109
    .end local v2    # "view":Landroid/view/View;
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->a:Ljava/util/List;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/alibaba/android/user/connection/ui/CommentListView$a;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->f:Lcom/alibaba/android/user/connection/ui/CommentListView$a;

    return-object v0
.end method

.method public getOnItemLongClickListener()Lcom/alibaba/android/user/connection/ui/CommentListView$b;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->g:Lcom/alibaba/android/user/connection/ui/CommentListView$b;

    return-object v0
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/user/connection/ui/CommentListView$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alibaba/android/user/connection/ui/CommentListView$a;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->f:Lcom/alibaba/android/user/connection/ui/CommentListView$a;

    .line 188
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/alibaba/android/user/connection/ui/CommentListView$b;)V
    .locals 0
    .param p1, "onItemLongClickListener"    # Lcom/alibaba/android/user/connection/ui/CommentListView$b;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/CommentListView;->g:Lcom/alibaba/android/user/connection/ui/CommentListView$b;

    .line 196
    return-void
.end method
