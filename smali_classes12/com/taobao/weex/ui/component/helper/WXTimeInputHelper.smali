.class public Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;
.super Ljava/lang/Object;
.source "WXTimeInputHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pickDate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 7
    .param p0, "max"    # Ljava/lang/String;
    .param p1, "min"    # Ljava/lang/String;
    .param p2, "component"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 36
    .local v6, "target":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;

    invoke-direct {v4, v6, p2}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$1;-><init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method public static pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 5
    .param p0, "component"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "target":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;

    invoke-direct {v3, v0, p0}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;-><init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 v4, 0x0

    .line 55
    invoke-static {v1, v2, v3, v4}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickTime(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    .line 69
    return-void
.end method
