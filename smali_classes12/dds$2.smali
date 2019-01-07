.class final Ldds$2;
.super Ljava/lang/Object;
.source "LinkSpannableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/Spannable;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Ldds$a;

.field final synthetic d:Ljava/lang/CharSequence;

.field final synthetic e:Ldds;


# direct methods
.method constructor <init>(Ldds;Landroid/text/Spannable;Landroid/widget/TextView;Ldds$a;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Ldds;

    .prologue
    .line 130
    iput-object p1, p0, Ldds$2;->e:Ldds;

    iput-object p2, p0, Ldds$2;->a:Landroid/text/Spannable;

    iput-object p3, p0, Ldds$2;->b:Landroid/widget/TextView;

    iput-object p4, p0, Ldds$2;->c:Ldds$a;

    iput-object p5, p0, Ldds$2;->d:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Ldds$2;->a:Landroid/text/Spannable;

    iget-object v1, p0, Ldds$2;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Ldds$2;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    iget-object v0, p0, Ldds$2;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ldds$2;->a:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Ldds$2;->c:Ldds$a;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Ldds$2;->e:Ldds;

    invoke-static {v0}, Ldds;->a(Ldds;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Ldds$2;->d:Ljava/lang/CharSequence;

    iget-object v2, p0, Ldds$2;->a:Landroid/text/Spannable;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Ldds$2;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ldds$2;->a:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
