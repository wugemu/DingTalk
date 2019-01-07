.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {v0, p3}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$002(Lcom/taobao/weex/appfram/pickers/WXPickersModule;I)I

    .line 251
    iget-object v0, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 252
    return-void
.end method
