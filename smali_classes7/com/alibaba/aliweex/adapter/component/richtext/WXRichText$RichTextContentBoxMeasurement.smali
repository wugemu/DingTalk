.class Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.source "WXRichText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RichTextContentBoxMeasurement"
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 237
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 239
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 240
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 241
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v1, v2, v4, p1}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 243
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-static {v3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    .line 246
    .end local v0    # "spannable":Landroid/text/Spannable;
    :goto_2
    return-object v0

    :cond_0
    move v1, v3

    .line 236
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 246
    :cond_2
    new-instance v0, Landroid/text/SpannedString;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
