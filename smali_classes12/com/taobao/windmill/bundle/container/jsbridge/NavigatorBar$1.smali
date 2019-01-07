.class final Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;
.super Ljava/lang/Object;
.source "NavigatorBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->setRightItem(Ljava/util/Map;Ljrh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;->c:Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;

    iput-object p2, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;->a:Ljqd;

    iput-object p3, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;->a:Ljqd;

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljqr;->a(Ljava/lang/String;)Z

    .line 110
    return-void
.end method
