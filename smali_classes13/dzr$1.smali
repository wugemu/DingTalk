.class final Ldzr$1;
.super Ljava/lang/Object;
.source "DeploymentRecordHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldzr;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldzr;


# direct methods
.method constructor <init>(Ldzr;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldzr;

    .prologue
    .line 49
    iput-object p1, p0, Ldzr$1;->b:Ldzr;

    iput-object p2, p0, Ldzr$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Ldzr$1;->b:Ldzr;

    iget-object v1, v1, Ldzr;->c:Landroid/app/Activity;

    iget-object v2, p0, Ldzr$1;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
