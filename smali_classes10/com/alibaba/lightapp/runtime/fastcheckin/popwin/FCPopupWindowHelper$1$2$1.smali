.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;
.super Ljava/lang/Object;
.source "FCPopupWindowHelper.java"

# interfaces
.implements Lhhd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->a:Lhho;

    invoke-virtual {v0}, Lhho;->b()Lhho;

    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;->a:Lhho;

    invoke-virtual {v0}, Lhho;->dismiss()V

    .line 175
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->d()V

    .line 155
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->d()V

    .line 160
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2$1;->d()V

    .line 165
    return-void
.end method
