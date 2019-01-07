.class public final Lbrv;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2
    .param p0, "colorString"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .prologue
    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    :try_start_0
    const-string/jumbo v0, "transparent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 38
    :cond_0
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    :cond_2
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5
    .param p0, "color"    # I

    .prologue
    .line 17
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 19
    .local v0, "alpha":I
    if-nez v0, :cond_0

    .line 20
    const-string/jumbo v3, "transparent"

    .line 28
    :goto_0
    return-object v3

    .line 22
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "colorString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x6

    .line 24
    .local v2, "start":I
    if-lez v2, :cond_1

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;IZ)V
    .locals 1
    .param p0, "iconFontTextView"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p1, "currentColor"    # I
    .param p2, "isSelected"    # Z

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setSelected(Z)V

    .line 53
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 55
    sget v0, Lbqt$f;->icon_realname_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 58
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 59
    sget v0, Lbqt$f;->icon_checkbox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 62
    sget v0, Lbqt$f;->icon_round_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method
