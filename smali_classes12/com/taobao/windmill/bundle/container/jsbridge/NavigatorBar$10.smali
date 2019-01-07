.class final Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;
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
.field final synthetic a:Ljrh;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;->c:Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;

    iput-object p2, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;->a:Ljrh;

    iput-object p3, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;->a:Ljrh;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljrh;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    return-void
.end method
