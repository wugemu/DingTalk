.class Lcom/taobao/weex/ui/component/list/BasicListComponent$1;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/EventTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->onHostViewInitialized(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 196
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$1;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$1;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public triggerEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent$1;, "Lcom/taobao/weex/ui/component/list/BasicListComponent$1;"
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    return-void
.end method
