.class final Lbix$1;
.super Ljava/lang/Object;
.source "CommentRemindViewHolderV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbgi;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbix;


# direct methods
.method constructor <init>(Lbix;Lbgi;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbix;

    .prologue
    .line 77
    iput-object p1, p0, Lbix$1;->c:Lbix;

    iput-object p2, p0, Lbix$1;->a:Lbgi;

    iput-object p3, p0, Lbix$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_unread_comment_count"

    iget-object v2, p0, Lbix$1;->a:Lbgi;

    .line 1028
    iget v2, v2, Lbgi;->c:I

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object v1, p0, Lbix$1;->c:Lbix;

    invoke-static {v1}, Lbix;->a(Lbix;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lbix$1;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 83
    invoke-static {}, Lbjz;->b()V

    .line 84
    return-void
.end method
