.class public Lcom/taobao/weex/dom/WXStyle;
.super Ljava/lang/Object;
.source "WXStyle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNSET:I = -0x1

.field private static final serialVersionUID:J = 0x87b2de63f392e16L


# instance fields
.field private mBindingStyle:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPesudoResetStyleMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPesudoStyleMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStyles:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/dom/WXStyle;->processPesudoClasses(Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "mStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/taobao/weex/dom/WXStyle;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->putAll(Ljava/util/Map;Z)V

    .line 73
    return-void
.end method

.method private addBindingStyleIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 508
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->isBinding(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    .line 512
    :cond_0
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 513
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    invoke-virtual {v0, p1, p2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFontFamily(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 168
    .local v0, "fontFamily":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 170
    const-string/jumbo v2, "fontFamily"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "temp":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .end local v1    # "temp":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public static getFontSize(Ljava/util/Map;I)I
    .locals 2
    .param p1, "viewPortW"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 157
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    .line 163
    :goto_0
    return v1

    .line 159
    :cond_0
    const-string/jumbo v1, "fontSize"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 160
    .local v0, "fontSize":I
    if-gtz v0, :cond_1

    .line 161
    const/16 v0, 0x20

    .line 163
    :cond_1
    int-to-float v1, v0

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method public static getFontStyle(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "typeface":I
    if-nez p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 144
    :cond_1
    const-string/jumbo v4, "fontStyle"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "temp":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "fontWeight":Ljava/lang/String;
    const-string/jumbo v3, "italic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    const/4 v2, 0x2

    :cond_2
    move v3, v2

    .line 152
    goto :goto_0
.end method

.method public static getFontWeight(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 121
    .local v2, "typeface":I
    if-eqz p0, :cond_1

    .line 122
    const-string/jumbo v3, "fontWeight"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, "temp":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "fontWeight":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 136
    .end local v0    # "fontWeight":Ljava/lang/String;
    .end local v1    # "temp":Ljava/lang/Object;
    :cond_1
    :goto_1
    return v2

    .line 125
    .restart local v0    # "fontWeight":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v4, "600"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "700"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "800"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "900"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "bold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    .line 131
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0xd0b6 -> :sswitch_0
        0xd477 -> :sswitch_1
        0xd838 -> :sswitch_2
        0xdbf9 -> :sswitch_3
        0x2e3a85 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLineHeight(Ljava/util/Map;I)I
    .locals 3
    .param p1, "viewPortW"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, -0x1

    .line 207
    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    const-string/jumbo v2, "lineHeight"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, "lineHeight":I
    if-lez v0, :cond_0

    .line 215
    int-to-float v1, v0

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method public static getLines(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "lines"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getTextAlignment(Ljava/util/Map;)Landroid/text/Layout$Alignment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/text/Layout$Alignment;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 180
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    const-string/jumbo v2, "textAlign"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "textAlign":Ljava/lang/String;
    const-string/jumbo v2, "left"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    const-string/jumbo v2, "center"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v2, "right"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0
.end method

.method public static getTextColor(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 113
    const-string/jumbo v1, ""

    .line 116
    :goto_0
    return-object v1

    .line 115
    :cond_0
    const-string/jumbo v1, "color"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "temp":Ljava/lang/Object;
    if-nez v0, :cond_1

    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/component/WXTextDecoration;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    const-string/jumbo v3, "textDecoration"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 90
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 108
    .local v1, "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :goto_0
    return-object v1

    .line 92
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "textDecoration":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 104
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 93
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :sswitch_0
    const-string/jumbo v4, "underline"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "line-through"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    .line 95
    :pswitch_0
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 96
    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 98
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :pswitch_1
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 99
    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 101
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :pswitch_2
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 102
    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x45d81614 -> :sswitch_1
        -0x3d363934 -> :sswitch_0
        0x33af38 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/text/TextUtils$TruncateAt;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 195
    .local v1, "truncateAt":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v2, "textOverflow"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, "ellipse":Ljava/lang/String;
    const-string/jumbo v2, "ellipsis"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 199
    :cond_0
    return-object v1
.end method

.method private initPesudoMapsIfNeed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 465
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 470
    :cond_2
    return-void
.end method

.method private parseBindingStylesStatements(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "styles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 484
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 501
    :cond_0
    return-object p1

    .line 487
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 488
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 489
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 491
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/dom/WXStyle;->addBindingStyleIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 493
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_3
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 496
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 327
    return-void
.end method

.method public clone()Lcom/taobao/weex/dom/WXStyle;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    new-instance v1, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {v1}, Lcom/taobao/weex/dom/WXStyle;-><init>()V

    .line 526
    .local v1, "style":Lcom/taobao/weex/dom/WXStyle;
    iget-object v3, v1, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    iget-object v4, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 527
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    if-eqz v3, :cond_0

    .line 528
    new-instance v3, Lfk;

    iget-object v4, p0, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    invoke-direct {v3, v4}, Lfk;-><init>(Lfw;)V

    iput-object v3, v1, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    .line 530
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 531
    new-instance v3, Lfk;

    invoke-direct {v3}, Lfk;-><init>()V

    iput-object v3, v1, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    .line 532
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 533
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Lfk;

    invoke-direct {v2}, Lfk;-><init>()V

    .line 534
    .local v2, "valueClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 535
    iget-object v3, v1, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 539
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2    # "valueClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 540
    new-instance v3, Lfk;

    invoke-direct {v3}, Lfk;-><init>()V

    iput-object v3, v1, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    .line 541
    iget-object v3, v1, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 545
    :cond_2
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXStyle;->clone()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "temp":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBindingStyle()Lfk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mBindingStyle:Lfk;

    return-object v0
.end method

.method public getBlur()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBorderColor()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    const-string/jumbo v1, "borderColor"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "color":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBorderRadius()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    const-string/jumbo v1, "borderRadius"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 220
    .local v0, "temp":F
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/high16 v0, 0x7fc00000    # NaNf

    .line 223
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public getBorderStyle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    const-string/jumbo v1, "borderStyle"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "borderStyle":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBottom()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    const-string/jumbo v1, "bottom"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 278
    .local v0, "temp":F
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const/high16 v0, 0x7fc00000    # NaNf

    .line 281
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public getLeft()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    const-string/jumbo v1, "left"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 254
    .local v0, "temp":F
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/high16 v0, 0x7fc00000    # NaNf

    .line 257
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public getOpacity()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    const-string/jumbo v1, "opacity"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 304
    const/high16 v1, 0x3f800000    # 1.0f

    .line 306
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v1

    goto :goto_0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    const-string/jumbo v1, "overflow"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string/jumbo v1, "visible"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPesudoResetStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPesudoStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRight()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 262
    .local v0, "temp":F
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/high16 v0, 0x7fc00000    # NaNf

    .line 265
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public getTimeFontSize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    const-string/jumbo v1, "timeFontSize"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 294
    .local v0, "fontSize":I
    if-gtz v0, :cond_0

    .line 295
    const/16 v0, 0x20

    .line 297
    :cond_0
    return v0
.end method

.method public getTop()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    const-string/jumbo v1, "top"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 270
    .local v0, "temp":F
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/high16 v0, 0x7fc00000    # NaNf

    .line 273
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    const-string/jumbo v1, "position"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "position":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 249
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSticky()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    const-string/jumbo v1, "position"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "position":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 239
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sticky"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parseStatements()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/WXStyle;->parseBindingStylesStatements(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    .line 478
    :cond_0
    return-void
.end method

.method processPesudoClasses(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;TV;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<TT;TV;>;"
    const/4 v10, 0x0

    .line 407
    const/4 v6, 0x0

    .line 408
    .local v6, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 410
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 412
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "i":I
    if-lez v2, :cond_0

    .line 413
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/WXStyle;->initPesudoMapsIfNeed(Ljava/util/Map;)V

    .line 414
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "clzName":Ljava/lang/String;
    const-string/jumbo v8, ":enabled"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 417
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "styleKey":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 419
    new-instance v6, Lfk;

    .end local v6    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v6}, Lfk;-><init>()V

    .line 421
    .restart local v6    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v8, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    .end local v4    # "styleKey":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ":enabled"

    const-string/jumbo v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v8, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 429
    .local v5, "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v5, :cond_3

    .line 430
    new-instance v5, Lfk;

    .end local v5    # "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Lfk;-><init>()V

    .line 431
    .restart local v5    # "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/taobao/weex/dom/WXStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_3
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 437
    .end local v0    # "clzName":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 438
    iget-object v7, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 440
    :cond_5
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->addBindingStyleIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 372
    return-void
.end method

.method public putAll(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 381
    if-nez p2, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXStyle;->processPesudoClasses(Ljava/util/Map;)V

    .line 384
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public updateStyle(Ljava/util/Map;Z)V
    .locals 0
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/WXStyle;->parseBindingStylesStatements(Ljava/util/Map;)Ljava/util/Map;

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->putAll(Ljava/util/Map;Z)V

    .line 389
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/taobao/weex/dom/WXStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
