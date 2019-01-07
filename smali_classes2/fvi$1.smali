.class final Lfvi$1;
.super Ljava/lang/Object;
.source "ClipboardMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfvi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfvi;


# direct methods
.method constructor <init>(Lfvi;)V
    .locals 0
    .param p1, "this$0"    # Lfvi;

    .prologue
    .line 28
    iput-object p1, p0, Lfvi$1;->a:Lfvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lfvi$1;->a:Lfvi;

    invoke-static {v0}, Lfvi;->a(Lfvi;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfvi$1;->a:Lfvi;

    invoke-static {v0}, Lfvi;->a(Lfvi;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lfvi$1;->a:Lfvi;

    invoke-static {v0}, Lfvi;->b(Lfvi;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfvi$1;->a:Lfvi;

    invoke-static {v1}, Lfvi;->a(Lfvi;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    iget-object v2, p0, Lfvi$1;->a:Lfvi;

    invoke-static {v2}, Lfvi;->b(Lfvi;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$l;->chat_copy_is_success:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 33
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 35
    :cond_0
    return-void
.end method
