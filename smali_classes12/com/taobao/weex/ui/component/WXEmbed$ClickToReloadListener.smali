.class public Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickToReloadListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "comp"    # Lcom/taobao/weex/ui/component/NestedContainer;
    .param p2, "nestedInstance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 152
    return-void
.end method

.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "container"    # Lcom/taobao/weex/ui/component/NestedContainer;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 115
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/taobao/weex/ui/component/WXEmbed;

    .line 117
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXEmbed;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXEmbed;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v4, Lcom/taobao/weex/R$drawable;->error:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/taobao/weex/ui/component/WXEmbed;->access$100()I

    move-result v4

    invoke-static {}, Lcom/taobao/weex/ui/component/WXEmbed;->access$200()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 124
    new-instance v4, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;-><init>(Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;Landroid/widget/ImageView;Lcom/taobao/weex/ui/component/WXEmbed;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXEmbed;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 133
    .local v1, "hostView":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    const-string/jumbo v4, "WXEmbed"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NetWork failure :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\n error message :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "comp":Lcom/taobao/weex/ui/component/WXEmbed;
    .end local v1    # "hostView":Landroid/widget/FrameLayout;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z
    .locals 1
    .param p1, "comp"    # Lcom/taobao/weex/ui/component/NestedContainer;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public transformUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 146
    return-object p1
.end method
