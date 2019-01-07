.class public Lcom/taobao/weex/appfram/pickers/WXPickersModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXPickersModule.java"


# static fields
.field private static final CANCEL:Ljava/lang/String; = "cancel"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final KEY_CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field private static final KEY_CANCEL_TITLE_COLOR:Ljava/lang/String; = "cancelTitleColor"

.field private static final KEY_CONFIRM_TITLE:Ljava/lang/String; = "confirmTitle"

.field private static final KEY_CONFIRM_TITLE_COLOR:Ljava/lang/String; = "confirmTitleColor"

.field private static final KEY_INDEX:Ljava/lang/String; = "index"

.field private static final KEY_ITEMS:Ljava/lang/String; = "items"

.field private static final KEY_MAX:Ljava/lang/String; = "max"

.field private static final KEY_MIN:Ljava/lang/String; = "min"

.field private static final KEY_SELECTION_COLOR:Ljava/lang/String; = "selectionColor"

.field private static final KEY_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TITLE_BACKGROUND_COLOR:Ljava/lang/String; = "titleBackgroundColor"

.field private static final KEY_TITLE_COLOR:Ljava/lang/String; = "titleColor"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/appfram/pickers/WXPickersModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    .prologue
    .line 54
    iget v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->selected:I

    return v0
.end method

.method static synthetic access$002(Lcom/taobao/weex/appfram/pickers/WXPickersModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->selected:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getColor(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 2
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 128
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .restart local p3    # "defValue":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0
.end method

.method private getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "defValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 115
    .end local p3    # "defValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p3

    .restart local p3    # "defValue":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method private makeTitleView(Landroid/content/Context;Ljava/util/Map;)Landroid/widget/TextView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/widget/TextView;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 295
    const-string/jumbo v3, "title"

    invoke-direct {p0, p2, v3, v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-object v2

    .line 299
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    const/4 v3, 0x2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    .line 303
    .local v0, "padding":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 305
    const-string/jumbo v3, "titleBackgroundColor"

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 306
    const-string/jumbo v3, "titleColor"

    const/high16 v4, -0x1000000

    invoke-direct {p0, p2, v3, v4}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private performPickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 6
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "value"

    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v0, v4}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v0, "max"

    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v0, v4}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "max":Ljava/lang/String;
    const-string/jumbo v0, "min"

    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v0, v4}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "min":Ljava/lang/String;
    iget-object v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 160
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;

    invoke-direct {v4, p0, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$2;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    move-object v5, p1

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    .line 182
    return-void
.end method

.method private performPickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 3
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "value"

    const-string/jumbo v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 134
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;

    invoke-direct {v2, p0, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$1;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 133
    invoke-static {v1, v0, v2, p1}, Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->pickTime(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;Ljava/util/Map;)V

    .line 153
    return-void
.end method

.method private performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 9
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 185
    const-string/jumbo v1, "index"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->selected:I

    .line 186
    const-string/jumbo v1, "textColor"

    invoke-direct {p0, p2, v1, v3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    .line 187
    .local v6, "textColor":I
    const-string/jumbo v1, "selectionColor"

    invoke-direct {p0, p2, v1, v3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getColor(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    .line 188
    .local v5, "selectionColor":I
    new-instance v0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;

    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 189
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109000f

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/content/Context;ILjava/util/List;II)V

    .line 215
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;

    invoke-direct {v3, p0, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 217
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;

    invoke-direct {v3, p0, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$4;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 237
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->makeTitleView(Landroid/content/Context;Ljava/util/Map;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 240
    .local v7, "dialog":Landroid/support/v7/app/AlertDialog;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 243
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->create()V

    .line 246
    :cond_0
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 247
    .local v8, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;

    invoke-direct {v2, p0, v7, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;-><init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/support/v7/app/AlertDialog;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 291
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 292
    return-void
.end method

.method private safeConvert(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "src"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "obj":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public pick(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "items"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v2, v3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->getOption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->safeConvert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public pickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performPickDate(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 94
    return-void
.end method

.method public pickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performPickTime(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 99
    return-void
.end method
