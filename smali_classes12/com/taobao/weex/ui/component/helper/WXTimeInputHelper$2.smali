.class final Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;
.super Ljava/lang/Object;
.source "WXTimeInputHelper.java"

# interfaces
.implements Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$target:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$target:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPick(ZLjava/lang/String;)V
    .locals 1
    .param p1, "set"    # Z
    .param p2, "result"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$target:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->performOnChange(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
