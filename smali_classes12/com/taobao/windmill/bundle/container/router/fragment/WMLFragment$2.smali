.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$2;
.super Lcom/taobao/windmill/rt/runtime/WMLPageObject;
.source "WMLFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$2;->b:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    iput-object p2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/windmill/rt/runtime/WMLPageObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$2;->a:Ljava/lang/String;

    return-object v0
.end method
