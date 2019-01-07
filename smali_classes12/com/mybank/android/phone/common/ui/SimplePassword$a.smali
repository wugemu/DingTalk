.class public final Lcom/mybank/android/phone/common/ui/SimplePassword$a;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/ui/SimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/ui/SimplePassword;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/mybank/android/phone/common/ui/SimplePassword;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->b:Z

    .line 116
    iput-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->c:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 122
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 123
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->b:Z

    .line 125
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    iget-object v3, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->b(Lcom/mybank/android/phone/common/ui/SimplePassword;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->a(Lcom/mybank/android/phone/common/ui/SimplePassword;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    iget-object v3, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->c(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->a(Lcom/mybank/android/phone/common/ui/SimplePassword;I)V

    .line 131
    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v2}, Lcom/mybank/android/phone/common/ui/SimplePassword;->c(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 132
    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v2}, Lcom/mybank/android/phone/common/ui/SimplePassword;->d(Lcom/mybank/android/phone/common/ui/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->c:Z

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v2}, Lcom/mybank/android/phone/common/ui/SimplePassword;->d(Lcom/mybank/android/phone/common/ui/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v3}, Lcom/mybank/android/phone/common/ui/SimplePassword;->i(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljfp;

    move-result-object v3

    iget-object v4, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v4}, Lcom/mybank/android/phone/common/ui/SimplePassword;->e(Lcom/mybank/android/phone/common/ui/SimplePassword;)I

    move-result v4

    iget-object v5, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v5}, Lcom/mybank/android/phone/common/ui/SimplePassword;->f(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;

    iget-object v5, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v5}, Lcom/mybank/android/phone/common/ui/SimplePassword;->g(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v6}, Lcom/mybank/android/phone/common/ui/SimplePassword;->h(Lcom/mybank/android/phone/common/ui/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljfp;->a(ILjava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/app/safepaybase/OnConfirmListener;->onUserConfirm(Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->c:Z

    if-nez v2, :cond_3

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->c:Z

    .line 147
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3
    :goto_1
    return-void

    .line 142
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "len":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 153
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->b:Z

    if-nez v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SimplePassword;->i(Lcom/mybank/android/phone/common/ui/SimplePassword;)Ljfp;

    move-result-object v0

    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-static {v1}, Lcom/mybank/android/phone/common/ui/SimplePassword;->e(Lcom/mybank/android/phone/common/ui/SimplePassword;)I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljfp;->a(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$a;->b:Z

    .line 166
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
