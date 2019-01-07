.class public Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;
.super Lipd;
.source "H5ToastPlugin.java"


# static fields
.field private static final HIDE_TOAST:Ljava/lang/String; = "hideToast"

.field public static final TAG:Ljava/lang/String; = "H5ToastPlugin"

.field private static final toast_exception:I

.field private static final toast_fail:I

.field private static final toast_ok:I


# instance fields
.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_toast_ok:I

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast_ok:I

    .line 36
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_toast_false:I

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast_fail:I

    .line 37
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_toast_exception:I

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast_exception:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lipd;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->hideToast()V

    return-void
.end method

.method private getImageId(Ljava/lang/String;)I
    .locals 1
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast_ok:I

    .line 68
    :goto_0
    return v0

    .line 63
    :cond_0
    const-string/jumbo v0, "fail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast_fail:I

    goto :goto_0

    .line 65
    :cond_1
    const-string/jumbo v0, "exception"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast_exception:I

    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideToast()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 150
    :cond_0
    return-void
.end method

.method private showToast(Landroid/content/Context;ILjava/lang/String;IIII)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconRes"    # I
    .param p3, "textRes"    # Ljava/lang/String;
    .param p4, "gravity"    # I
    .param p5, "xOffset"    # I
    .param p6, "yOffset"    # I
    .param p7, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 111
    instance-of v4, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v4, :cond_3

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 114
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/alipay/mobile/nebula/R$layout;->h5_toast:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_mini_toast_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :goto_0
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_mini_toast_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "text":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xc0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 128
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    if-nez v4, :cond_0

    .line 129
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    .line 130
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, p4, p5, p6}, Landroid/widget/Toast;->setGravity(III)V

    .line 132
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 133
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 142
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 144
    return-void

    .line 119
    .restart local v0    # "image":Landroid/widget/ImageView;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 125
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    if-nez v4, :cond_4

    .line 137
    invoke-static {p1, p3, p7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    goto :goto_2

    .line 139
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, p3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_2
.end method

.method private toast(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 78
    .line 1121
    iget-object v8, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 79
    .local v8, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v0, "content"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v0, "type"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v0, "duration"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 86
    .local v7, "duration":I
    if-nez v7, :cond_2

    .line 87
    const/16 v7, 0x7d0

    .line 89
    :cond_2
    invoke-direct {p0, v9}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->getImageId(Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, "iconId":I
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    const/16 v4, 0x11

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->showToast(Landroid/content/Context;ILjava/lang/String;IIII)V

    .line 93
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;Liny;)V

    int-to-long v4, v7

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 104
    const-string/jumbo v0, "H5ToastPlugin"

    const-string/jumbo v1, "toast show"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgecontext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "toast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 56
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 53
    :cond_1
    const-string/jumbo v1, "hideToast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->hideToast()V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 44
    const-string/jumbo v0, "toast"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "hideToast"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lipd;->onRelease()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast:Landroid/widget/Toast;

    .line 75
    return-void
.end method
