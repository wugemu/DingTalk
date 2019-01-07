.class final Lfoa$1;
.super Ljava/lang/Object;
.source "ScreenShotFeedBackDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfoa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfoa;


# direct methods
.method constructor <init>(Lfoa;)V
    .locals 0
    .param p1, "this$0"    # Lfoa;

    .prologue
    .line 86
    iput-object p1, p0, Lfoa$1;->a:Lfoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 90
    const-string/jumbo v0, "click screenshot feedback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lfoa$1;->a:Lfoa;

    invoke-virtual {v0}, Lfoa;->dismiss()V

    .line 92
    iget-object v0, p0, Lfoa$1;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)V

    .line 93
    return-void
.end method
