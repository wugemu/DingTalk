.class public Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWatcherImpl"
.end annotation


# instance fields
.field private isSendSubmit:Z

.field private skipTextChanged:Z

.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    .line 116
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 122
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 123
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    .line 125
    add-int/lit8 v3, v1, 0x1

    const-string/jumbo v4, "0"

    invoke-interface {p1, v1, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$200(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$102(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$100(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$300(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;I)V

    .line 131
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$100(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 132
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$400(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    if-nez v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$400(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$900(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v5}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$500(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v6}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$600(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v7}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$700(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v8}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$800(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->getText(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/android/app/safepaybase/OnConfirmListener;->onUserConfirm(Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    if-nez v3, :cond_3

    .line 138
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    .line 147
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    :goto_1
    return-void

    .line 142
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    if-nez v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$900(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$500(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->OnTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    .line 166
    return-void

    .line 161
    :catch_0
    move-exception v6

    .line 162
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
