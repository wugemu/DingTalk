.class final Lcom/sina/weibo/sdk/auth/WeiboDialog$1;
.super Ljava/lang/Object;
.source "WeiboDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/auth/WeiboDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/auth/WeiboDialog;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->a:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->a:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->a:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Ljha;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->a:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Ljha;

    move-result-object v0

    invoke-interface {v0}, Ljha;->onCancel()V

    .line 261
    :cond_0
    return-void
.end method
