.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 470
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Long click delete"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->o(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$12;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->l(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;->a()V

    .line 477
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
