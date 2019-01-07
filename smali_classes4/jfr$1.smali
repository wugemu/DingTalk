.class final Ljfr$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljfr;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljfr$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ljfr$1;->b:Ljava/lang/String;

    iput p3, p0, Ljfr$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 73
    new-instance v0, Landroid/widget/Toast;

    iget-object v3, p0, Ljfr$1;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v3, p0, Ljfr$1;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Ljfw$c;->transient_notification:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Ljfr$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 78
    iget v3, p0, Ljfr$1;->c:I

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 79
    const/16 v3, 0x11

    invoke-virtual {v0, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    return-void
.end method
