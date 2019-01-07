.class public Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "MoneyKeyListener.java"


# static fields
.field private static final MONEY_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){0,2})?$"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;->MONEY_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;-><init>()V

    .line 23
    .local v0, "dim":Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;
    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "target":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "original":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2, v6, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "header":Ljava/lang/String;
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-virtual {v2, p6, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "tail":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "toCheck":Ljava/lang/String;
    sget-object v6, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyListener;->MONEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 64
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_0

    .line 65
    const-string/jumbo v4, ""

    .line 67
    .end local v4    # "target":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data
.end method

.method public getInputType()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v0, 0x80

    const/16 v2, 0xe

    .line 27
    const-string/jumbo v1, "samsung"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/TaoHelper;->isSpecialManuFacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/NumberKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
