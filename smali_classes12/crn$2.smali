.class final Lcrn$2;
.super Ljava/lang/Object;
.source "GeneralRemindV3AsyncPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrn;


# direct methods
.method constructor <init>(Lcrn;)V
    .locals 0
    .param p1, "this$0"    # Lcrn;

    .prologue
    .line 209
    iput-object p1, p0, Lcrn$2;->a:Lcrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcrn$2;->a:Lcrn;

    invoke-virtual {v0}, Lcrn;->dismiss()V

    .line 213
    const-string/jumbo v0, "ding_bluepop_cancel_click"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 214
    return-void
.end method
