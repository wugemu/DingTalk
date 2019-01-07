.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setHelpIcon(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZI)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->a:Z

    iput p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)Z

    .line 1363
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->b:I

    sparse-switch v0, :sswitch_data_0

    .line 1383
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->attendance_detail_help:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    .line 1389
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->n(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    .line 1390
    return-void

    .line 1365
    :sswitch_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->attendance_detail_help:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    goto :goto_0

    .line 1368
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->ic_actbar_help_new:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    goto :goto_0

    .line 1371
    :sswitch_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->ic_actbar_help_hot:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    goto :goto_0

    .line 1374
    :sswitch_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->ic_actbar_guide:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    goto :goto_0

    .line 1377
    :sswitch_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->ic_actbar_help_new_blue:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    goto :goto_0

    .line 1380
    :sswitch_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v1, Lhdn$g;->ic_actbar_help_hot_blue:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    goto :goto_0

    .line 1363
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
    .end sparse-switch
.end method
