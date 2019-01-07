.class final Lfhb$1$1;
.super Ljava/lang/Object;
.source "ContactItemViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhb$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhb$1;


# direct methods
.method constructor <init>(Lfhb$1;)V
    .locals 0
    .param p1, "this$1"    # Lfhb$1;

    .prologue
    .line 88
    iput-object p1, p0, Lfhb$1$1;->a:Lfhb$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 91
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfhb$1$1;->a:Lfhb$1;

    iget-object v1, v1, Lfhb$1;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->getUid()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    const-string/jumbo v0, "key_from_concern_list"

    iget-object v1, p0, Lfhb$1$1;->a:Lfhb$1;

    iget-object v1, v1, Lfhb$1;->b:Lfhm;

    .line 1023
    iget-boolean v1, v1, Lfhm;->b:Z

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    return-object p1
.end method
