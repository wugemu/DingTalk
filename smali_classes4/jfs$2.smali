.class final Ljfs$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljfs;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljfs;


# direct methods
.method constructor <init>(Ljfs;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Ljfs;

    .prologue
    .line 106
    iput-object p1, p0, Ljfs$2;->c:Ljfs;

    iput-object p2, p0, Ljfs$2;->a:Ljava/lang/String;

    iput p3, p0, Ljfs$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v1, p0, Ljfs$2;->c:Ljfs;

    .line 1016
    iget-object v1, v1, Ljfs;->a:Landroid/app/Activity;

    .line 110
    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Ljfs$2;->c:Ljfs;

    .line 2016
    iget-object v1, v1, Ljfs;->a:Landroid/app/Activity;

    .line 111
    iget-object v2, p0, Ljfs$2;->a:Ljava/lang/String;

    iget v3, p0, Ljfs$2;->b:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 112
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
