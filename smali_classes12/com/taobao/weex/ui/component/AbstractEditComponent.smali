.class public abstract Lcom/taobao/weex/ui/component/AbstractEditComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;,
        Lcom/taobao/weex/ui/component/AbstractEditComponent$ReturnTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<",
        "Lcom/taobao/weex/ui/view/WXEditText;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEXT_FORMAT_REPEAT:I = 0x3


# instance fields
.field private mAutoFocus:Z

.field private mBeforeText:Ljava/lang/String;

.field private mEditorAction:I

.field private mEditorActionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView$OnEditorActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatRepeatCount:I

.field private mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeepSelectionIndex:Z

.field private mLastValue:Ljava/lang/String;

.field private mLineHeight:I

.field private mListeningKeyboard:Z

.field private mMax:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mReturnKeyType:Ljava/lang/String;

.field private mTextChangedEventDispatcher:Landroid/text/TextWatcher;

.field private mTextChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "text"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    .line 84
    const/4 v0, 0x6

    iput v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    .line 85
    iput-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    .line 89
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 90
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    .line 91
    iput-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    .line 94
    iput v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    .line 97
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    .line 198
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 103
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$1;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLastValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    return v0
.end method

.method static synthetic access$1300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/taobao/weex/ui/component/AbstractEditComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 75
    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatRepeatCount:I

    return p1
.end method

.method private addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 2
    .param p1, "host"    # Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 889
    if-nez p1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 893
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 894
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    goto :goto_0
.end method

.method private applyOnClickListener()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mOnClickListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    .line 222
    return-void
.end method

.method private decideSoftKeyboard()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    .local v1, "hostView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 792
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 793
    new-instance v2, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$11;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x10

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 394
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "value"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v0, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v6, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v0, "attrs"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 404
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 660
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 696
    const/4 v0, 0x1

    .line 698
    .local v0, "inputType":I
    :cond_1
    :goto_1
    return v0

    .line 660
    .end local v0    # "inputType":I
    :sswitch_0
    const-string/jumbo v3, "text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "date"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "datetime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "email"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "password"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "tel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "number"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 662
    :pswitch_0
    const/4 v0, 0x1

    .line 663
    .restart local v0    # "inputType":I
    goto :goto_1

    .line 665
    .end local v0    # "inputType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 666
    .restart local v0    # "inputType":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    goto/16 :goto_1

    .line 669
    .end local v0    # "inputType":I
    :pswitch_2
    const/4 v0, 0x4

    .line 670
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 672
    .end local v0    # "inputType":I
    :pswitch_3
    const/16 v0, 0x21

    .line 673
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 675
    .end local v0    # "inputType":I
    :pswitch_4
    const/16 v0, 0x81

    .line 676
    .restart local v0    # "inputType":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_1

    .line 681
    .end local v0    # "inputType":I
    :pswitch_5
    const/4 v0, 0x3

    .line 682
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 684
    .end local v0    # "inputType":I
    :pswitch_6
    const/4 v0, 0x0

    .line 685
    .restart local v0    # "inputType":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    goto/16 :goto_1

    .line 690
    .end local v0    # "inputType":I
    :pswitch_7
    const/16 v0, 0x11

    .line 691
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 693
    .end local v0    # "inputType":I
    :pswitch_8
    const/4 v0, 0x2

    .line 694
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        0x1c01b -> :sswitch_5
        0x1c56f -> :sswitch_7
        0x2eefae -> :sswitch_1
        0x36452d -> :sswitch_0
        0x3652cd -> :sswitch_6
        0x5c24b9c -> :sswitch_3
        0x4889ba9b -> :sswitch_4
        0x6ae9bb7b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .locals 2
    .param p1, "textAlign"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 737
    const v0, 0x800003

    .line 738
    .local v0, "align":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    const v1, 0x800003

    .line 748
    :goto_0
    return v1

    .line 741
    :cond_0
    const-string/jumbo v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    const v0, 0x800003

    :cond_1
    :goto_1
    move v1, v0

    .line 748
    goto :goto_0

    .line 743
    :cond_2
    const-string/jumbo v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 744
    const/16 v0, 0x11

    goto :goto_1

    .line 745
    :cond_3
    const-string/jumbo v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    const v0, 0x800005

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$10;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 734
    :cond_0
    return-void
.end method

.method private parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .locals 11
    .param p1, "jsPattern"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 924
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v6, v7

    .line 965
    :goto_0
    return-object v6

    .line 928
    :cond_1
    const-string/jumbo v0, "/[\\S]+/[i]?[m]?[g]?"

    .line 929
    .local v0, "checker":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2

    .line 930
    const-string/jumbo v8, "WXInput"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Illegal js pattern syntax: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 931
    goto :goto_0

    .line 934
    :cond_2
    const/4 v1, 0x0

    .line 935
    .local v1, "flags":I
    const/4 v3, 0x0

    .line 936
    .local v3, "global":Z
    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "flagsStr":Ljava/lang/String;
    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string/jumbo v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 939
    .local v5, "regExp":Ljava/lang/String;
    const-string/jumbo v8, "i"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 940
    const/4 v1, 0x2

    .line 943
    :cond_3
    const-string/jumbo v8, "m"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 944
    or-int/lit8 v1, v1, 0x20

    .line 947
    :cond_4
    const-string/jumbo v8, "g"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 948
    const/4 v3, 0x1

    .line 951
    :cond_5
    const/4 v4, 0x0

    .line 953
    .local v4, "pattern":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 957
    :goto_1
    if-nez v4, :cond_6

    move-object v6, v7

    .line 958
    goto :goto_0

    .line 955
    :catch_0
    move-exception v8

    const-string/jumbo v8, "WXInput"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Pattern syntax error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 961
    :cond_6
    new-instance v6, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-direct {v6, v7}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    .line 962
    .local v6, "wrapper":Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    invoke-static {v6, v3}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z

    .line 963
    invoke-static {v6, v4}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 964
    invoke-static {v6, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private showSoftKeyboard()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$9;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 722
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/TextView$OnEditorActionListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 860
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "view":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 861
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 862
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    .line 863
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$12;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 304
    .local v0, "text":Landroid/widget/TextView;
    const-string/jumbo v1, "change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 305
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$5;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 321
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 370
    :cond_2
    :goto_1
    const-string/jumbo v1, "return"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 386
    :cond_3
    const-string/jumbo v1, "keyboard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mListeningKeyboard:Z

    goto :goto_0

    .line 340
    :cond_4
    const-string/jumbo v1, "input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    new-instance v1, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$7;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    return-void
.end method

.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 6
    .param p1, "editText"    # Lcom/taobao/weex/ui/view/WXEditText;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string/jumbo v4, "textAlign"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "alignStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result v2

    .line 237
    .local v2, "textAlign":I
    if-gtz v2, :cond_0

    .line 238
    const v2, 0x800003

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v3

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    .line 241
    const-string/jumbo v3, "#999999"

    invoke-static {v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "colorInt":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    .line 243
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    .line 246
    :cond_1
    new-instance v3, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;

    invoke-direct {v3, p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    .line 290
    iget-object v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mTextChangedEventDispatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v3}, Lcom/taobao/weex/ui/view/WXEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    .line 293
    return-void
.end method

.method public blur()V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    .line 754
    .local v0, "host":Lcom/taobao/weex/ui/view/WXEditText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 758
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->clearFocus()V

    .line 759
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    .line 761
    :cond_1
    return-void
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "originalValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 779
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 785
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 779
    :sswitch_0
    const-string/jumbo v1, "fontSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 781
    :pswitch_0
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 783
    :pswitch_1
    const-string/jumbo v0, "black"

    goto :goto_1

    .line 779
    :sswitch_data_0
    .sparse-switch
        0x5a72f63 -> :sswitch_1
        0x15caa0f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 912
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 913
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-eqz v1, :cond_0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;->execute()V

    .line 916
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "Unregister throw "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public focus()V
    .locals 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 765
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    .line 766
    .local v0, "host":Lcom/taobao/weex/ui/view/WXEditText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->ignoreFocus()V

    .line 770
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->requestFocus()Z

    .line 771
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusable(Z)V

    .line 772
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setFocusableInTouchMode(Z)V

    .line 773
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    .line 775
    :cond_1
    return-void
.end method

.method protected getMeasureHeight()F
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getMeasuredLineHeight()F

    move-result v0

    return v0
.end method

.method protected final getMeasuredLineHeight()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    goto :goto_0
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .locals 7
    .param p1, "callbackId"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 822
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 823
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .local v1, "hostView":Landroid/widget/EditText;
    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 825
    .local v3, "start":I
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 827
    .local v0, "end":I
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_0

    .line 829
    const/4 v3, 0x0

    .line 830
    const/4 v0, 0x0

    .line 833
    :cond_0
    const-string/jumbo v4, "selectionStart"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string/jumbo v4, "selectionEnd"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v2, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 837
    return-void
.end method

.method protected getVerticalGravity()I
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0x10

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXEditText;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    new-instance v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "inputView":Lcom/taobao/weex/ui/view/WXEditText;
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 173
    return-object v0
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 1
    .param p1, "host"    # Lcom/taobao/weex/ui/view/WXEditText;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 179
    new-instance v0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 190
    return-void
.end method

.method public performOnChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "change"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "change"

    .line 409
    .local v0, "event":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    return-void

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutofocus(Z)V
    .locals 3
    .param p1, "autofocus"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autofocus"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 564
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 567
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    .line 568
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 569
    .local v0, "inputView":Landroid/widget/EditText;
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mAutoFocus:Z

    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 571
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 572
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 573
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->showSoftKeyboard()Z

    goto :goto_0

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 597
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setTextColor(I)V

    .line 601
    .end local v0    # "colorInt":I
    :cond_0
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "fontSize"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fontSize"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 606
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 607
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "fontSize"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setTextSize(IF)V

    .line 610
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "lines"
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    goto :goto_0
.end method

.method public setMax(Ljava/lang/String;)V
    .locals 0
    .param p1, "max"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "max"
    .end annotation

    .prologue
    .line 703
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMax:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxLength"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxLength"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setMaxlength(I)V
    .locals 0
    .param p1, "maxLength"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "maxlength"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    .line 656
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "min"
    .end annotation

    .prologue
    .line 708
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mMin:Ljava/lang/String;

    .line 709
    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 1
    .param p1, "placeholder"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholder"
    .end annotation

    .prologue
    .line 530
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPlaceholderColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "placeholderColor"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 540
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setHintTextColor(I)V

    .line 544
    .end local v0    # "colorInt":I
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    const/4 v14, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v14, :pswitch_data_0

    .line 491
    invoke-super/range {p0 .. p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v14

    :goto_1
    return v14

    .line 415
    :sswitch_0
    const-string/jumbo v15, "placeholder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v15, "placeholderColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v15, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v15, "autofocus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v15, "color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v15, "fontSize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v15, "textAlign"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v15, "singleline"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v14, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v15, "lines"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v15, "maxLength"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v15, "maxlength"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v15, "max"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v15, "min"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v15, "returnKeyType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v15, "keepSelectionIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v15, "allowCopyPaste"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0xf

    goto/16 :goto_0

    .line 417
    :pswitch_0
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, "placeholder":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 419
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholder(Ljava/lang/String;)V

    .line 420
    :cond_1
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 422
    .end local v9    # "placeholder":Ljava/lang/String;
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, "placeholder_color":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 424
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPlaceholderColor(Ljava/lang/String;)V

    .line 425
    :cond_2
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 427
    .end local v10    # "placeholder_color":Ljava/lang/String;
    :pswitch_2
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "input_type":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setType(Ljava/lang/String;)V

    .line 430
    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 432
    .end local v4    # "input_type":Ljava/lang/String;
    :pswitch_3
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    .line 433
    .local v11, "result":Ljava/lang/Boolean;
    if-eqz v11, :cond_4

    .line 434
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setAutofocus(Z)V

    .line 435
    :cond_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 437
    .end local v11    # "result":Ljava/lang/Boolean;
    :pswitch_4
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "color":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 439
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setColor(Ljava/lang/String;)V

    .line 440
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 442
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_5
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "fontsize":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setFontSize(Ljava/lang/String;)V

    .line 445
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 447
    .end local v3    # "fontsize":Ljava/lang/String;
    :pswitch_6
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 448
    .local v13, "text_align":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 449
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setTextAlign(Ljava/lang/String;)V

    .line 450
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 452
    .end local v13    # "text_align":Ljava/lang/String;
    :pswitch_7
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v12

    .line 453
    .local v12, "singLineResult":Ljava/lang/Boolean;
    if-eqz v12, :cond_8

    .line 454
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setSingleLine(Z)V

    .line 455
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 457
    .end local v12    # "singLineResult":Ljava/lang/Boolean;
    :pswitch_8
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    .line 458
    .local v6, "lines":Ljava/lang/Integer;
    if-eqz v6, :cond_9

    .line 459
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setLines(I)V

    .line 460
    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 462
    .end local v6    # "lines":Ljava/lang/Integer;
    :pswitch_9
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    .line 463
    .local v8, "maxlength":Ljava/lang/Integer;
    if-eqz v8, :cond_a

    .line 464
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    .line 465
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 467
    .end local v8    # "maxlength":Ljava/lang/Integer;
    :pswitch_a
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    .line 468
    .local v7, "maxLength":Ljava/lang/Integer;
    if-eqz v7, :cond_b

    .line 469
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMaxLength(I)V

    .line 470
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 472
    .end local v7    # "maxLength":Ljava/lang/Integer;
    :pswitch_b
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMax(Ljava/lang/String;)V

    .line 473
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 475
    :pswitch_c
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setMin(Ljava/lang/String;)V

    .line 476
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 478
    :pswitch_d
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setReturnKeyType(Ljava/lang/String;)V

    .line 479
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 481
    :pswitch_e
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 482
    .local v5, "keepIndex":Z
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    .line 483
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 485
    .end local v5    # "keepIndex":Z
    :pswitch_f
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 486
    .local v1, "allowCopyPaste":Z
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v14, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V

    .line 489
    :cond_c
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        -0x712b3675 -> :sswitch_e
        -0x5dfbd650 -> :sswitch_1
        -0x3f826a28 -> :sswitch_6
        -0x2f2bce96 -> :sswitch_9
        0x1a564 -> :sswitch_b
        0x1a652 -> :sswitch_c
        0x368f3a -> :sswitch_2
        0x5a72f63 -> :sswitch_4
        0x6234eff -> :sswitch_8
        0x76f454a -> :sswitch_a
        0x15caa0f0 -> :sswitch_5
        0x23a88573 -> :sswitch_0
        0x367fd03c -> :sswitch_7
        0x38797ee9 -> :sswitch_d
        0x60e3fed5 -> :sswitch_f
        0x6365ac89 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "returnKeyType"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 499
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mReturnKeyType:Ljava/lang/String;

    .line 500
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 524
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    .line 525
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    iget v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setImeOptions(I)V

    goto :goto_0

    .line 500
    :sswitch_0
    const-string/jumbo v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "go"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "next"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "search"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "send"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "done"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    goto :goto_1

    .line 502
    :pswitch_0
    iput v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_2

    .line 505
    :pswitch_1
    iput v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_2

    .line 508
    :pswitch_2
    iput v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_2

    .line 511
    :pswitch_3
    iput v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_2

    .line 514
    :pswitch_4
    iput v4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_2

    .line 517
    :pswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mEditorAction:I

    goto :goto_2

    .line 500
    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_3
        0xce8 -> :sswitch_1
        0x2f2382 -> :sswitch_5
        0x338af3 -> :sswitch_2
        0x35cf88 -> :sswitch_4
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSelectionRange(II)V
    .locals 3
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .local v0, "hostView":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXEditText;->length()I

    move-result v1

    .line 811
    .local v1, "length":I
    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 817
    .end local v1    # "length":I
    :cond_0
    :goto_0
    return-void

    .line 814
    .restart local v1    # "length":I
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->focus()V

    .line 815
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "singleline"
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    goto :goto_0
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 3
    .param p1, "textAlign"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "textAlign"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    .line 615
    .local v0, "align":I
    if-lez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getVerticalGravity()I

    move-result v2

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXEditText;->setGravity(I)V

    .line 618
    :cond_0
    return-void
.end method

.method public setTextFormatter(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 842
    :try_start_0
    const-string/jumbo v7, "formatRule"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "formatRule":Ljava/lang/String;
    const-string/jumbo v7, "formatReplace"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "formatReplace":Ljava/lang/String;
    const-string/jumbo v7, "recoverRule"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, "recoverRule":Ljava/lang/String;
    const-string/jumbo v7, "recoverReplace"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 847
    .local v4, "recoverReplace":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object v0

    .line 848
    .local v0, "format":Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    invoke-direct {p0, v5, v4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->parseToPattern(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    move-result-object v3

    .line 850
    .local v3, "recover":Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 851
    new-instance v7, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v3, v8}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V

    iput-object v7, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mFormatter:Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v0    # "format":Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .end local v1    # "formatReplace":Ljava/lang/String;
    .end local v2    # "formatRule":Ljava/lang/String;
    .end local v3    # "recover":Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .end local v4    # "recoverReplace":Ljava/lang/String;
    .end local v5    # "recoverRule":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v6

    .line 854
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "type"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 548
    const-string/jumbo v0, "weex"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    .line 553
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getInputType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 554
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 557
    :pswitch_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->applyOnClickListener()V

    goto :goto_0

    .line 554
    :sswitch_0
    const-string/jumbo v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefae -> :sswitch_0
        0x3652cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/WXEditText;

    .local v2, "view":Lcom/taobao/weex/ui/view/WXEditText;
    if-nez v2, :cond_0

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mIgnoreNextOnInputEvent:Z

    .line 587
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result v1

    .line 588
    .local v1, "oldIndex":I
    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-boolean v3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mKeepSelectionIndex:Z

    if-eqz v3, :cond_2

    move v0, v1

    .line 590
    .local v0, "index":I
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .end local v0    # "index":I
    :cond_1
    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method protected updateStyleAndAttrs()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x1

    .line 137
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 138
    const/4 v1, -0x1

    .local v1, "fontSize":I
    const/4 v2, -0x1

    .local v2, "fontStyle":I
    const/4 v3, -0x1

    .line 139
    .local v3, "fontWeight":I
    const/4 v0, 0x0

    .line 140
    .local v0, "fontFamily":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    const-string/jumbo v6, "fontSize"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;I)I

    move-result v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    const-string/jumbo v6, "fontFamily"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    const-string/jumbo v6, "fontStyle"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v2

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    const-string/jumbo v6, "fontWeight"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v3

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;I)I

    move-result v4

    .line 157
    .local v4, "lineHeight":I
    if-eq v4, v7, :cond_4

    .line 158
    iput v4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mLineHeight:I

    .line 160
    :cond_4
    if-eq v1, v7, :cond_5

    .line 161
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 163
    :cond_5
    if-eqz v0, :cond_6

    .line 164
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent;->mPaint:Landroid/text/TextPaint;

    invoke-static {v5, v2, v3, v0}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    .line 167
    .end local v0    # "fontFamily":Ljava/lang/String;
    .end local v1    # "fontSize":I
    .end local v2    # "fontStyle":I
    .end local v3    # "fontWeight":I
    .end local v4    # "lineHeight":I
    :cond_6
    return-void
.end method
