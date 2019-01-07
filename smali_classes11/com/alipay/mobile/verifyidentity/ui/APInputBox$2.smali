.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V
    .locals 1

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v3, v3, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->hasFocus()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->onInputTextStatusChanged(ZZ)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 324
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    .line 329
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    .line 330
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 331
    instance-of v0, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 335
    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 336
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "InputFilter"

    .line 337
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 339
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v8, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 320
    goto :goto_0

    .line 335
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 349
    :cond_3
    new-array v0, v1, [Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;->format(Landroid/text/Editable;)V

    .line 351
    invoke-interface {p1, v3}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 353
    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method
