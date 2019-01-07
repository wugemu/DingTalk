.class final Lcrn$4;
.super Ljava/lang/Object;
.source "GeneralRemindV3AsyncPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

.field final synthetic b:Lcrn;


# direct methods
.method constructor <init>(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V
    .locals 0
    .param p1, "this$0"    # Lcrn;

    .prologue
    .line 289
    iput-object p1, p0, Lcrn$4;->b:Lcrn;

    iput-object p2, p0, Lcrn$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcrn$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    .line 1156
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcrn$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    .line 2156
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 293
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcrn$4;->b:Lcrn;

    invoke-virtual {v0}, Lcrn;->dismiss()V

    .line 296
    return-void
.end method
