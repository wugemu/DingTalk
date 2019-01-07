.class public final Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;
.super Lcom/alipay/mobile/verifyidentity/ui/APEditText;
.source "APSafeEditText.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View$OnTouchListener;

.field private c:Landroid/view/View$OnFocusChangeListener;

.field private d:Landroid/view/View$OnFocusChangeListener;

.field private e:Landroid/view/View$OnFocusChangeListener;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/app/Dialog;

.field protected isAutoShowSafeKeyboard:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;-><init>(Landroid/content/Context;)V

    .line 40
    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    .line 48
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 52
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 53
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->m:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a()V

    .line 65
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    .line 48
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 52
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 53
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->m:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    .line 48
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 52
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 53
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->m:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a()V

    .line 75
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setInputType(I)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_0

    .line 1371
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_0

    .line 1375
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    .line 1397
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 226
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz v1, :cond_0

    .line 227
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    .line 229
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    .line 248
    :goto_1
    return v0

    .line 240
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0

    .line 245
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V
    .locals 2

    .prologue
    .line 39
    .line 5447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->n:J

    .line 5448
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    .line 5449
    if-nez v0, :cond_1

    .line 5451
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    :cond_0
    :goto_0
    return-void

    .line 5454
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5459
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public static final hideNormalKeyboard(Landroid/widget/EditText;)V
    .locals 3

    .prologue
    .line 428
    if-nez p0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 434
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    .line 438
    if-nez v1, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static final l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public static final showNormalKeyboard(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 402
    if-nez p0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 408
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    .line 410
    if-nez v1, :cond_0

    .line 411
    const-string/jumbo v1, "first show fail"

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    .line 414
    if-nez v1, :cond_0

    .line 415
    const-string/jumbo v1, "second show fail"

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 418
    if-nez v0, :cond_0

    .line 420
    const-string/jumbo v0, "thrid show fail"

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final closeSafeKeyboard()V
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    goto :goto_0
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->i:Landroid/app/Dialog;

    return-object v0
.end method

.method public final getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    .line 682
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSafeText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Landroid/text/Editable;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    if-eqz v1, :cond_3

    .line 99
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 102
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 104
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 115
    const-string/jumbo v0, ""

    .line 116
    const/4 v1, 0x0

    :goto_1
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    .line 125
    :cond_2
    :goto_2
    return-object v0

    .line 123
    :cond_3
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final isAutoShowSafeKeyboard()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    return v0
.end method

.method public final isOnShowEnableOk()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    return v0
.end method

.method public final isPasswordType()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    return v0
.end method

.method public final isTextSelectable()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 281
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->isTextSelectable()Z

    move-result v0

    goto :goto_0

    .line 285
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->isTextSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public final isUseSafePassKeyboard()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    return v0
.end method

.method public final onCheckIsTextEditor()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_2

    .line 2264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 2265
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_0

    .line 2266
    const/4 v0, 0x0

    .line 2269
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0

    .line 2273
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onDetachedFromWindow()V

    .line 292
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ondetached focusLoseTime:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2463
    iget-wide v2, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    iget-wide v4, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->n:J

    sub-long/2addr v2, v4

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "focusLoseTime:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->o:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "focusGetTime :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->n:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "timeUse:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2467
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 2471
    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 2476
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_4

    .line 2480
    const/4 v0, 0x1

    .line 2482
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isUseSafeKeyboard:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    .line 2484
    if-nez v0, :cond_2

    .line 2486
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 297
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->closeSafeKeyboard()V

    .line 299
    :cond_1
    return-void

    .line 2489
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2492
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    goto :goto_1

    .line 2495
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "focusGetTxtLen:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2496
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    sub-int/2addr v4, v5

    .line 2497
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->p:I

    .line 2498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pstrLen:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "pstr:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 2499
    if-lez v4, :cond_0

    .line 2503
    long-to-float v0, v2

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 2504
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "aovct:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 213
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAutoShowSafeKeyboard(Z)V
    .locals 0

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    .line 677
    return-void
.end method

.method public final setDialog(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->i:Landroid/app/Dialog;

    .line 599
    return-void
.end method

.method public final setGreatWall(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l:Z

    .line 93
    return-void
.end method

.method public final setInputType(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    and-int/lit16 v4, p1, 0xfff

    .line 137
    const/16 v0, 0x81

    if-ne v4, v0, :cond_2

    move v0, v1

    .line 140
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_5

    .line 141
    const/16 v3, 0xe1

    if-ne v4, v3, :cond_3

    move v3, v1

    .line 142
    :goto_1
    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    :goto_2
    move v2, v3

    .line 144
    :goto_3
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setSafeKeyboard()V

    .line 147
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setInputType(I)V

    .line 148
    return-void

    :cond_2
    move v0, v2

    .line 137
    goto :goto_0

    :cond_3
    move v3, v2

    .line 141
    goto :goto_1

    :cond_4
    move v1, v2

    .line 142
    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public final setOKText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-nez v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 631
    :cond_0
    return-void
.end method

.method public final setOkEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isUseSafeKeyboard:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 637
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-nez v0, :cond_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    if-eqz p1, :cond_2

    .line 647
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public final setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .prologue
    .line 532
    if-nez p1, :cond_1

    .line 3545
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_3

    .line 3543
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_2

    .line 3544
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3545
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0

    .line 3549
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 538
    :cond_3
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public final setOnShowEnableOk(Z)V
    .locals 0

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->j:Z

    .line 669
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 3524
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_3

    .line 3521
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    .line 3522
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3523
    :goto_1
    if-eqz v0, :cond_2

    .line 3524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 3522
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3526
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 516
    :cond_3
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final setSafeKeyboard()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 3158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 3162
    const/4 v0, 0x0

    .line 3165
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setSoftInputShownOnFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3174
    :goto_0
    if-eqz v0, :cond_0

    .line 3175
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3176
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3314
    :cond_0
    :goto_1
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    .line 3337
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3347
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    .line 3364
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 306
    return-void

    :catch_0
    move-exception v1

    .line 3169
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setShowSoftInputOnFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public final setShowing(Z)V
    .locals 0

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 661
    return-void
.end method

.method public final setUseSafePassKeyboard(ZI)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-nez v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 610
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->h:Z

    .line 611
    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setSafeKeyboard()V

    goto :goto_0

    .line 3621
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    .line 4342
    invoke-super {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4343
    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    .line 5309
    invoke-super {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5310
    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0
.end method

.method public final showSafeKeyboard()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_1

    .line 556
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->f:Z

    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->k:Z

    .line 558
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 567
    :cond_1
    const-string/jumbo v0, "call show normal"

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$5;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
