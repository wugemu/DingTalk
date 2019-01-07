.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.super Landroid/widget/PopupWindow;
.source "DDPopupWindow.java"

# interfaces
.implements Lcrh$a;


# instance fields
.field public a:Landroid/widget/PopupWindow$OnDismissListener;

.field private b:Lcrh;

.field private c:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v0, -0x1

    .line 138
    invoke-direct {p0, p1, v0, v0, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a()V

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->c:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private b()Landroid/app/Activity;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 174
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 175
    check-cast v0, Landroid/app/Activity;

    .line 179
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcrh;

    invoke-direct {v0}, Lcrh;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 154
    return-void
.end method

.method public dismiss()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 311
    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    invoke-virtual {v1}, Lcrh;->a()V

    .line 321
    :cond_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "dismiss failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 314
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onDismissRequest()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 336
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->c:Landroid/widget/PopupWindow$OnDismissListener;

    .line 163
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 229
    .line 2186
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v1

    .line 229
    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->c()V

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcrh;->a(Landroid/app/Activity;Lcrh$a;)V

    .line 240
    :cond_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "showAtLocation failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 233
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 259
    .line 3186
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 262
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->c()V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcrh;->a(Landroid/app/Activity;Lcrh$a;)V

    .line 265
    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    .line 4186
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v2

    .line 285
    if-eqz v2, :cond_2

    .line 287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 288
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 293
    .local v0, "h":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 296
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setHeight(I)V

    .line 299
    .end local v0    # "h":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 301
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->c()V

    .line 302
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcrh;->a(Landroid/app/Activity;Lcrh$a;)V

    .line 305
    :cond_2
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    .line 1186
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v1

    .line 204
    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->c()V

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b:Lcrh;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcrh;->a(Landroid/app/Activity;Lcrh$a;)V

    .line 215
    :cond_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "showAtLocation failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 208
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
