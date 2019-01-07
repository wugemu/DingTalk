.class final Ldaa$6;
.super Ljava/lang/Object;
.source "UserTextViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/text/SpannableString;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldaa;

    .prologue
    .line 384
    iput-object p1, p0, Ldaa$6;->d:Ldaa;

    iput-object p2, p0, Ldaa$6;->a:Landroid/widget/TextView;

    iput-object p3, p0, Ldaa$6;->b:Landroid/text/SpannableString;

    iput-object p4, p0, Ldaa$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Ldaa$6;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldaa$6;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ldaa$6;->b:Landroid/text/SpannableString;

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Ldaa$6;->a:Landroid/widget/TextView;

    iget-object v1, p0, Ldaa$6;->b:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Ldaa$6;->d:Ldaa;

    iget-object v1, p0, Ldaa$6;->a:Landroid/widget/TextView;

    iget-object v2, p0, Ldaa$6;->c:Ljava/lang/String;

    iget-object v3, p0, Ldaa$6;->d:Ldaa;

    iget-object v3, v3, Ldaa;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Ldaa;->a(Ldaa;Landroid/widget/TextView;Ljava/lang/String;Landroid/app/Activity;)Z

    .line 390
    iget-object v0, p0, Ldaa$6;->a:Landroid/widget/TextView;

    invoke-static {}, Lcwc;->a()Lcwc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 392
    :cond_0
    return-void
.end method
