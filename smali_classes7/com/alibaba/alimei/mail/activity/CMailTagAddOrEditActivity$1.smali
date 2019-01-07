.class final Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$1;
.super Ljava/lang/Object;
.source "CMailTagAddOrEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 106
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 95
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 100
    .local v0, "isEmpty":Z
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/view/View;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
