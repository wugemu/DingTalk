.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 218
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    .line 226
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/NumberItemView;->getNumberTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 206
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 211
    return-void
.end method
