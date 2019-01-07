.class final Lfoa$3;
.super Ljava/lang/Object;
.source "ScreenShotFeedBackDialog.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 103
    iput-object p1, p0, Lfoa$3;->a:Lfoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 106
    invoke-static {}, Lfnz;->a()Lfnz;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfnz;->a:Z

    .line 107
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "try_show_delay_token"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "finish_delay_token"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
