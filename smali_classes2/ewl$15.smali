.class final Lewl$15;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewl;


# direct methods
.method constructor <init>(Lewl;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1295
    iput-object p1, p0, Lewl$15;->a:Lewl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1298
    iget-object v0, p0, Lewl$15;->a:Lewl;

    invoke-static {v0}, Lewl;->h(Lewl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lewl$15;->a:Lewl;

    iget-object v1, p0, Lewl$15;->a:Lewl;

    invoke-static {v1}, Lewl;->h(Lewl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lewl;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
