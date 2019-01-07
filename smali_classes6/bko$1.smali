.class final Lbko$1;
.super Ljava/lang/Object;
.source "RepeatMeetingOperationConfirmDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbko$a;


# direct methods
.method constructor <init>(Ljava/util/List;Lbko$a;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lbko$1;->a:Ljava/util/List;

    iput-object p2, p0, Lbko$1;->b:Lbko$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lbko$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 38
    iget-object v0, p0, Lbko$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->dt_meeting_repeat_confirm_dialog_only_one:I

    if-ne v0, v1, :cond_1

    .line 39
    iget-object v0, p0, Lbko$1;->b:Lbko$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lbko$1;->b:Lbko$a;

    invoke-interface {v0}, Lbko$a;->a()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lbko$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->dt_meeting_repeat_confirm_dialog_follow_all:I

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lbko$1;->b:Lbko$a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lbko$1;->b:Lbko$a;

    invoke-interface {v0}, Lbko$a;->b()V

    goto :goto_0
.end method
