.class public Lcom/alipay/mobile/nebulacore/view/H5FontBar;
.super Lipd;
.source "H5FontBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIDE_FONT_BAR:Ljava/lang/String; = "hideFontBar"

.field public static final SHOW_FONT_BAR:Ljava/lang/String; = "showFontBar"

.field public static final TAG:Ljava/lang/String; = "H5FontBar"


# instance fields
.field private contentView:Landroid/view/View;

.field private fontBarClose:Landroid/view/View;

.field private fontBlankView:Landroid/view/View;

.field private fontSize1:Landroid/view/View;

.field private fontSize2:Landroid/view/View;

.field private fontSize3:Landroid/view/View;

.field private fontSize4:Landroid/view/View;

.field private fontVisible:Z

.field private h5Page:Liop;

.field private ivSize1:Landroid/widget/ImageView;

.field private ivSize2:Landroid/widget/ImageView;

.field private ivSize3:Landroid/widget/ImageView;

.field private ivSize4:Landroid/widget/ImageView;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Liop;)V
    .locals 1
    .param p1, "page"    # Liop;

    .prologue
    .line 58
    invoke-direct {p0}, Lipd;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontVisible:Z

    .line 61
    return-void
.end method

.method private ensureRootView()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->initContentView()V

    .line 220
    :cond_0
    return-void
.end method

.method private hideFontBar()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ensureRootView()V

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontVisible:Z

    .line 176
    return-void
.end method

.method private initContentView()V
    .locals 9

    .prologue
    .line 65
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    if-nez v6, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    invoke-interface {v6}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 69
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 71
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020002

    .line 72
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->rootView:Landroid/view/ViewGroup;

    .line 73
    sget v6, Lcom/alipay/mobile/nebula/R$layout;->h5_font_bar:I

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->rootView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    .line 75
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_blank:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontBlankView:Landroid/view/View;

    .line 76
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontBlankView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_bar:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "fontToolBar":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size1:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize1:Landroid/widget/ImageView;

    .line 82
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize2:Landroid/widget/ImageView;

    .line 83
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size3:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize3:Landroid/widget/ImageView;

    .line 84
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size4:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize4:Landroid/widget/ImageView;

    .line 85
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_close:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontBarClose:Landroid/view/View;

    .line 87
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_size1:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize1:Landroid/view/View;

    .line 88
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_size2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize2:Landroid/view/View;

    .line 89
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_size3:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize3:Landroid/view/View;

    .line 90
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_font_size4:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize4:Landroid/view/View;

    .line 92
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize1:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize2:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize3:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize4:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontBarClose:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/16 v1, 0x64

    .line 100
    .local v1, "fontSize":I
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    invoke-interface {v6}, Liop;->getSession()Lipc;

    move-result-object v6

    invoke-interface {v6}, Lipc;->getScenario()Lipa;

    move-result-object v5

    .line 101
    .local v5, "scenario":Lipa;
    if-eqz v5, :cond_0

    .line 102
    invoke-interface {v5}, Lipa;->getData()Lioc;

    move-result-object v6

    const-string/jumbo v7, "h5_font_size"

    invoke-interface {v6, v7}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "fontStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    :cond_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->updateFontBar(I)V

    goto/16 :goto_0
.end method

.method private onFontSizeChanged(I)V
    .locals 3
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 136
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    const-string/jumbo v2, "h5PageFontSize"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->updateFontBar(I)V

    .line 140
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private showFontBar()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ensureRootView()V

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontVisible:Z

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5FontBar"

    const-string/jumbo v2, "fatal view state error "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateFontBar(I)V
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize1:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size1_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize2:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size2_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize3:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size3_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize4:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size4_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize1:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size1_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize2:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size2_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 151
    :cond_2
    const/16 v0, 0x96

    if-ne p1, v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize3:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size3_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_3
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->ivSize4:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size4_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "showFontBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->showFontBar()V

    .line 205
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 200
    :cond_0
    const-string/jumbo v1, "hideFontBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->hideFontBar()V

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5PageBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontVisible:Z

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->hideFontBar()V

    .line 189
    const/4 v1, 0x1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, "targetFontSize":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontBlankView:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontBarClose:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->hideFontBar()V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize1:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    const/16 v0, 0x4b

    .line 126
    :cond_3
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 130
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->onFontSizeChanged(I)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize2:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    const/16 v0, 0x64

    goto :goto_1

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize3:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    const/16 v0, 0x96

    goto :goto_1

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->fontSize4:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const/16 v0, 0xc8

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 210
    const-string/jumbo v0, "showFontBar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "hideFontBar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h5Page:Liop;

    .line 181
    return-void
.end method
