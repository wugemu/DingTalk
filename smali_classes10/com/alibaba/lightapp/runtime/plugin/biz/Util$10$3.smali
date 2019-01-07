.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

.field final synthetic val$selectedValues:[Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;[Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;->val$selectedValues:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1753
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1754
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;->val$selectedValues:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1755
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;->val$selectedValues:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 1756
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1754
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1759
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$2800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 1760
    return-void
.end method
