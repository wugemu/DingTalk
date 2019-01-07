.class final Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$9;
.super Ljava/lang/Object;
.source "AlipayLoginProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$9;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    const-string/jumbo v2, "tel:95188"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$9;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-virtual {v1, v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$9;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    invoke-virtual {v1}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    .line 209
    return-void
.end method
