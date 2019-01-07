.class final Ldds$1;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Ldds$a;

.field final synthetic e:Ldds;


# direct methods
.method constructor <init>(Ldds;Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/widget/TextView;Ldds$a;)V
    .locals 0
    .param p1, "this$0"    # Ldds;

    .prologue
    .line 84
    iput-object p1, p0, Ldds$1;->e:Ldds;

    iput-object p2, p0, Ldds$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Ldds$1;->b:Ljava/lang/CharSequence;

    iput-object p4, p0, Ldds$1;->c:Landroid/widget/TextView;

    iput-object p5, p0, Ldds$1;->d:Ldds$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Ldds$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ldds$1;->e:Ldds;

    iget-object v1, p0, Ldds$1;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Ldds$1;->c:Landroid/widget/TextView;

    iget-object v3, p0, Ldds$1;->a:Landroid/app/Activity;

    iget-object v4, p0, Ldds$1;->d:Ldds$a;

    invoke-static {v0, v1, v2, v3, v4}, Ldds;->a(Ldds;Ljava/lang/CharSequence;Landroid/widget/TextView;Landroid/app/Activity;Ldds$a;)V

    .line 90
    :cond_0
    return-void
.end method
