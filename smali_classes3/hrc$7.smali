.class final Lhrc$7;
.super Ljava/lang/Object;
.source "EAppExceptionTipsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lhim;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/View;Lhim;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lhrc$7;->a:Landroid/view/View;

    iput-object p2, p0, Lhrc$7;->b:Lhim;

    iput-object p3, p0, Lhrc$7;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 366
    iget-object v0, p0, Lhrc$7;->a:Landroid/view/View;

    invoke-static {v0}, Lhrc;->a(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lhrc$7;->b:Lhim;

    iget-object v0, v0, Lhim;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lhrc$7;->c:Landroid/content/Context;

    iget-object v1, p0, Lhrc$7;->b:Lhim;

    iget-object v1, v1, Lhim;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lhrc;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method
