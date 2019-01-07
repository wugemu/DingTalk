.class Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;
.super Ljava/lang/Object;
.source "PullWidgetUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->showPullWidget(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

.field final synthetic val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;->val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;->val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$3;->val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;->onCancel()V

    .line 102
    :cond_0
    return-void
.end method
