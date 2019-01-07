.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;
.super Ljava/lang/Object;
.source "FCPopupWindowHelper.java"

# interfaces
.implements Lhho$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhho;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;Lhho;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->a:Lhho;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "action"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 142
    if-eqz p2, :cond_3

    .line 143
    iget-object v0, p2, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->a:Lhho;

    sget v1, Lhdn$k;->dt_oa_attend_checkin_dialog_checkin_loading:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1253
    iget-object v2, v0, Lhho;->g:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 1254
    iget-object v2, v0, Lhho;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1256
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lhho;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1257
    iget-object v2, v0, Lhho;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1258
    iget-object v2, v0, Lhho;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lhho;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1260
    :cond_1
    iget-object v0, v0, Lhho;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->b:Landroid/app/Activity;

    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lhhd;->b(Landroid/app/Activity;Lhhd$a;)V

    .line 186
    :cond_3
    :goto_0
    return-void

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->a:Lhho;

    invoke-virtual {v0}, Lhho;->dismiss()V

    goto :goto_0
.end method
