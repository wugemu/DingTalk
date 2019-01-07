.class public Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText;
.super Lcom/taobao/weex/ui/component/WXText;
.source "WXRichText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$Creator;,
        Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 260
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;

    invoke-direct {v0, p0}, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText$RichTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/alibaba/aliweex/adapter/component/richtext/WXRichTextView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/alibaba/aliweex/adapter/component/richtext/WXRichTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 265
    new-instance v0, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichTextView;

    invoke-direct {v0, p1}, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/alibaba/aliweex/adapter/component/richtext/WXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/alibaba/aliweex/adapter/component/richtext/WXRichTextView;

    move-result-object v0

    return-object v0
.end method
