.class final Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;
.super Ljava/lang/Object;
.source "JSPluginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->a:Z

    iput p3, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->b:I

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
    .line 242
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->a:Z

    iput-boolean v1, v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b:Z

    .line 243
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->b:I

    sparse-switch v0, :sswitch_data_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    sget v1, Lhdn$g;->attendance_detail_help:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;I)I

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->c(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)V

    .line 263
    :cond_0
    return-void

    .line 245
    :sswitch_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    sget v1, Lhdn$g;->attendance_detail_help:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;I)I

    goto :goto_0

    .line 248
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    sget v1, Lhdn$g;->ic_actbar_help_new:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;I)I

    goto :goto_0

    .line 251
    :sswitch_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    sget v1, Lhdn$g;->ic_actbar_help_hot:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;I)I

    goto :goto_0

    .line 254
    :sswitch_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    sget v1, Lhdn$g;->ic_actbar_guide:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;I)I

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
