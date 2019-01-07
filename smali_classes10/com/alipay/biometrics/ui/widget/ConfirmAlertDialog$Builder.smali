.class public Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
.super Ljava/lang/Object;
.source "ConfirmAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field _isShow:Z

.field b_context:Landroid/content/Context;

.field b_message:Ljava/lang/String;

.field b_message2:Ljava/lang/String;

.field b_negative:Ljava/lang/String;

.field b_negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field b_positive:Ljava/lang/String;

.field b_positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field b_title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->_isShow:Z

    .line 166
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_context:Landroid/content/Context;

    .line 167
    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_message:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setMessage2(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_message2:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .locals 0
    .param p1, "negative"    # Ljava/lang/String;
    .param p2, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_negative:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 199
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .locals 0
    .param p1, "positive"    # Ljava/lang/String;
    .param p2, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_positive:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_title:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public show()Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    new-instance v0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_message:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_message2:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_positive:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_negative:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v8, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->_isShow:Z

    iget-object v9, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->b_title:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    .line 207
    .local v0, "confirmDialog":Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public showIcons(Z)Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$Builder;->_isShow:Z

    .line 193
    return-object p0
.end method
