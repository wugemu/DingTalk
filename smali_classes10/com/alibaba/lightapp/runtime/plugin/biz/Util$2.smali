.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;
.super Lbzd;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->nav2Camera(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$fromImage:Z

.field final synthetic val$imageObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;->val$imageObj:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;->val$fromImage:Z

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public grant()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 768
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;->val$imageObj:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$2;->val$fromImage:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Z)V

    .line 769
    return-void
.end method
