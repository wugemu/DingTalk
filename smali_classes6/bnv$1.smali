.class final Lbnv$1;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnv;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbnv;


# direct methods
.method constructor <init>(Lbnv;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 279
    iput-object p1, p0, Lbnv$1;->b:Lbnv;

    iput-object p2, p0, Lbnv$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 283
    iget-object v1, p0, Lbnv$1;->b:Lbnv;

    iget-object v1, v1, Lbnv;->a:Landroid/app/Activity;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 284
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x0

    iget-object v2, p0, Lbnv$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 286
    sget v1, Lbpu$f;->and_chat_copy_is_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 289
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_0
    return-void
.end method
