.class public Lcom/taobao/weex/dom/TextDecorationSpan;
.super Landroid/text/style/CharacterStyle;
.source "TextDecorationSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V
    .locals 0
    .param p1, "wxTextDecoration"    # Lcom/taobao/weex/ui/component/WXTextDecoration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/weex/dom/TextDecorationSpan;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 36
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "tp"    # Landroid/text/TextPaint;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    sget-object v0, Lcom/taobao/weex/dom/TextDecorationSpan$1;->$SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I

    iget-object v1, p0, Lcom/taobao/weex/dom/TextDecorationSpan;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXTextDecoration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 42
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 43
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
