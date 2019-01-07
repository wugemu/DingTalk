.class Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;
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
    .line 83
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)I

    move-result v3

    aget-object v0, v2, v3

    .line 86
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$2;->val$onItemSelectedListener:Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;->onItemSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method
