.class final Lcrn$7;
.super Ljava/lang/Object;
.source "GeneralRemindV3AsyncPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

.field final synthetic b:Lcrn;


# direct methods
.method constructor <init>(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V
    .locals 0
    .param p1, "this$0"    # Lcrn;

    .prologue
    .line 436
    iput-object p1, p0, Lcrn$7;->b:Lcrn;

    iput-object p2, p0, Lcrn$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 439
    iget-object v0, p0, Lcrn$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    .line 1200
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 439
    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcrn$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    .line 2200
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 440
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcrn$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    .line 2216
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->d:Z

    .line 442
    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcrn$7;->b:Lcrn;

    invoke-virtual {v0}, Lcrn;->dismiss()V

    .line 445
    :cond_1
    return-void
.end method
