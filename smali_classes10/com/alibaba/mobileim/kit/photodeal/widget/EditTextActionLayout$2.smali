.class final Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;
.super Ljava/lang/Object;
.source "EditTextActionLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/24"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 87
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 92
    return-void
.end method
