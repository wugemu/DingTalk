.class Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 587
    .local v0, "px":F
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-static {v2}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    .line 588
    const-string/jumbo v1, "BoxShadowUtil"

    const-string/jumbo v2, "Experimental box-shadow attribute: spread"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .end local v0    # "px":F
    :cond_0
    return-void
.end method
