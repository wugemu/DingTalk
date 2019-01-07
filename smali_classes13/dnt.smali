.class public final Ldnt;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# static fields
.field public static final a:I

.field public static final b:Landroid/graphics/drawable/Drawable;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 28
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->m:I

    .line 29
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->a:I

    .line 30
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->n:I

    .line 33
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->o:I

    .line 34
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x43630000    # 227.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->p:I

    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->q:I

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->markdown_default_img_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Ldnt;->b:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Ldnt;->c:I

    .line 42
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Ldnt;->d:I

    .line 43
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Ldnt;->e:I

    .line 45
    sget v0, Lctk$c;->border:I

    sput v0, Ldnt;->f:I

    .line 53
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->gif_tip_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Ldnt;->g:I

    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->gif_tip_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Ldnt;->h:I

    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->gif_tip_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Ldnt;->i:I

    .line 56
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->gif_tip_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Ldnt;->j:I

    .line 57
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->gif_tip_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Ldnt;->k:I

    .line 58
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->gif_tip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Ldnt;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Ldnx;)Landroid/widget/TextView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .param p2, "textColorProvider"    # Ldnx;

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    const/4 v3, 0x0

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "textView":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;
    if-nez p2, :cond_1

    .line 75
    new-instance p2, Ldnr;

    .end local p2    # "textColorProvider":Ldnx;
    invoke-direct {p2}, Ldnr;-><init>()V

    .line 77
    .restart local p2    # "textColorProvider":Ldnx;
    :cond_1
    invoke-interface {p2}, Ldnx;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setTextColor(I)V

    .line 78
    invoke-interface {p2}, Ldnx;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setLinkTextColor(I)V

    .line 79
    sget-object v1, Ldnt$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setTextSize(F)V

    .line 90
    sget v1, Ldnt;->a:I

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setPadding(IIII)V

    .line 94
    :goto_1
    sget v1, Ldnt;->o:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setLineSpacing(FF)V

    .line 96
    invoke-static {}, Lcwc;->a()Lcwc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 81
    :pswitch_0
    sget v1, Ldnt;->a:I

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setPadding(IIII)V

    .line 82
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setTextSize(F)V

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setPadding(IIII)V

    .line 86
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setTextSize(F)V

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 144
    :goto_0
    return-object v1

    .line 132
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 133
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-nez v0, :cond_1

    .line 134
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x4b1

    if-ne v1, v2, :cond_2

    .line 137
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->EXTEND:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x4b2

    if-eq v1, v2, :cond_3

    .line 139
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x4b4

    if-ne v1, v2, :cond_4

    .line 140
    :cond_3
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL_WHITE:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    goto :goto_0

    .line 141
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x4b3

    if-ne v1, v2, :cond_5

    .line 142
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->MINI_APP:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    goto :goto_0

    .line 144
    :cond_5
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Ldnx;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;
    .param p2, "textColorProvider"    # Ldnx;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_0
    if-nez p1, :cond_1

    .line 105
    sget-object p1, Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;

    .line 107
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "frameLayout":Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
    invoke-static {p0, p1, p2}, Ldnt;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/mdrender/layout/TextStyle;Ldnx;)Landroid/widget/TextView;

    move-result-object v1

    .line 109
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
