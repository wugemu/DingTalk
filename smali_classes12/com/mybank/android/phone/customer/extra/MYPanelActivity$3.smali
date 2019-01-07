.class final Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;
.super Ljava/lang/Object;
.source "MYPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/customer/extra/MYPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->e(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->a(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    .line 228
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->b(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$3;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->c(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V

    .line 234
    return-void
.end method
