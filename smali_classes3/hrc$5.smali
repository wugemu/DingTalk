.class final Lhrc$5;
.super Landroid/text/style/ClickableSpan;
.source "EAppExceptionTipsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhim;


# direct methods
.method constructor <init>(Landroid/content/Context;Lhim;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lhrc$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lhrc$5;->b:Lhim;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lhrc$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lhrc$5;->b:Lhim;

    iget-object v1, v1, Lhim;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lhrc;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    return-void
.end method
