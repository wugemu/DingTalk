.class Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;
.super Landroid/widget/FrameLayout;
.source "EventDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/toolbox/EventDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventView"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field duration:Landroid/widget/TextView;

.field indicator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->init()V

    .line 130
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    .line 134
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->desc:Landroid/widget/TextView;

    .line 135
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->duration:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->duration:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->indicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->desc:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->addView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->duration:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/toolbox/EventDetailFragment$EventView;->addView(Landroid/view/View;)V

    .line 141
    return-void
.end method
