.class public Lcom/alibaba/android/teleconf/widget/ContactFloatView;
.super Lcom/alibaba/android/teleconf/widget/BaseFloatView;
.source "ContactFloatView.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;

.field public i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 47
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "samsung"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 52
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 54
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    return-void

    .line 50
    :cond_0
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "company"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 233
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_common_external_contact:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "extContact":Ljava/lang/String;
    invoke-static {}, Lcms;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    new-array v2, v8, [Ljava/lang/String;

    aput-object p0, v2, v4

    const-string/jumbo v3, "("

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    const-string/jumbo v3, ")"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "companyName":Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v0    # "companyName":Ljava/lang/String;
    :cond_1
    new-array v2, v8, [Ljava/lang/String;

    aput-object p0, v2, v4

    const-string/jumbo v3, "\uff08"

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    const-string/jumbo v3, "\uff09"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "companyName":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ContactFloatView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ContactFloatView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "nick"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v3

    .line 215
    :cond_1
    const-string/jumbo v4, "****"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "starIndex":I
    if-lez v2, :cond_0

    .line 217
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "prevStr":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "assStr":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 59
    sget v0, Leuj$j;->layout_conf_float_view_user_card_v3:I

    return v0
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
