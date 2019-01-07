.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;
.super Ljava/lang/Object;
.source "FCPopupWindowHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    .line 1409
    iget-boolean v0, v0, Lhhd;->h:Z

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    invoke-virtual {v0}, Lhhd;->b()V

    .line 195
    :cond_0
    return-void
.end method
