.class Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;
.super Ljava/lang/Object;
.source "ConfirmAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetDialogContext"
.end annotation


# instance fields
.field private negativeEnable:Z

.field private positiveEnable:Z

.field final synthetic this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

.field private tvMessage:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    .line 223
    return-void
.end method

.method private initSubView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 4
    .param p1, "tvConfirm"    # Landroid/widget/TextView;
    .param p2, "tvCancel"    # Landroid/widget/TextView;
    .param p3, "tvMessage2"    # Landroid/widget/TextView;
    .param p4, "tvTitle"    # Landroid/widget/TextView;
    .param p5, "splitLine"    # Landroid/view/View;
    .param p6, "hideButtonContainer"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 283
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$700(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v1}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$700(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iput-boolean v3, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->positiveEnable:Z

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$800(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v1}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$800(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$200(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iput-boolean v3, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->negativeEnable:Z

    .line 305
    :goto_1
    if-eqz p6, :cond_2

    .line 306
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$400(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->tvMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v1}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$900(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$1000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_2
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$1100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :goto_3
    return-void

    .line 289
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$700(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const/4 p6, 0x0

    goto :goto_0

    .line 300
    :cond_4
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$800(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const/4 p6, 0x0

    goto :goto_1

    .line 313
    :cond_5
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$1000(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 320
    :cond_6
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$1100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public getTvMessage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->tvMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public invoke()Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 238
    iput-boolean v6, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->positiveEnable:Z

    .line 239
    iput-boolean v6, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->negativeEnable:Z

    .line 240
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    sget v7, Lige$c;->dialog_ok_text:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, "tvConfirm":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    sget v7, Lige$c;->dialog_cancel_text:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 242
    .local v2, "tvCancel":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    sget v7, Lige$c;->dialog_msg:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->tvMessage:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    sget v7, Lige$c;->dialog_msg_2:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, "tvMessage2":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    sget v7, Lige$c;->dialog_title:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 246
    .local v4, "tvTitle":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->view:Landroid/view/View;

    sget v7, Lige$c;->dialog_split:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 247
    .local v5, "splitLine":Landroid/view/View;
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    iget-object v7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    sget v8, Lige$c;->dialog_ok:I

    invoke-virtual {v7, v8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$102(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    iget-object v7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    sget v8, Lige$c;->dialog_cancel:I

    invoke-virtual {v7, v8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$202(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    iget-object v7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    sget v8, Lige$c;->dialog_msg_icons:I

    invoke-virtual {v7, v8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$302(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    iget-object v7, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    sget v8, Lige$c;->dialog_button_container:I

    invoke-virtual {v7, v8}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$402(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;Landroid/view/View;)Landroid/view/View;

    move-object v0, p0

    .line 255
    invoke-direct/range {v0 .. v6}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->initSubView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V

    .line 257
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$100(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;

    invoke-direct {v6, p0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$1;-><init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->this$0:Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;

    invoke-static {v0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;->access$200(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog;)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$2;

    invoke-direct {v6, p0}, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext$2;-><init>(Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-object p0
.end method

.method public isNegativeEnable()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->negativeEnable:Z

    return v0
.end method

.method public isPositiveEnable()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/ConfirmAlertDialog$SetDialogContext;->positiveEnable:Z

    return v0
.end method
