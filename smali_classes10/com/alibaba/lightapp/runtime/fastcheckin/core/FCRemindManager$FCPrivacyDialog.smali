.class Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "FCRemindManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FCPrivacyDialog"
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fromH5"    # Z

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .line 325
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 326
    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->a:Z

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Landroid/content/Context;ZB)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Z

    .prologue
    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lhdn$h;->cancel:I

    if-ne v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lhdn$h;->sure:I

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 335
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 336
    sget v0, Lhdn$i;->dialog_checkin_privacy_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->setContentView(I)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->setCanceledOnTouchOutside(Z)V

    .line 1345
    sget v0, Lhdn$h;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->e:Landroid/widget/TextView;

    .line 1346
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1347
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    sget v0, Lhdn$h;->sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->f:Landroid/widget/TextView;

    .line 1349
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1350
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void
.end method
