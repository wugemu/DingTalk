.class Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;
.super Lhae;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;
    .param p2, "x0"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    invoke-direct {p0, p2}, Lhae;-><init>(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    return-void
.end method


# virtual methods
.method public exec(Lhac;)V
    .locals 6
    .param p1, "compressEvent"    # Lhac;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 1035
    iget-object v2, p1, Lhac;->a:Lhag;

    .line 1043
    .local v2, "object":Lhag;
    iget-object v3, p1, Lhac;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 104
    .local v3, "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    move-object v1, p0

    .line 106
    .local v1, "finalEventListener":Lhae;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->val$path:Ljava/lang/String;

    .line 1071
    iget-object v5, v2, Lhag;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    sget-object v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$3;->$SwitchMap$com$alibaba$laiwang$photokit$compress$CompressEventType:[I

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 127
    .end local v1    # "finalEventListener":Lhae;
    .end local v2    # "object":Lhag;
    .end local v3    # "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    :cond_0
    :goto_0
    return-void

    .line 1083
    .restart local v1    # "finalEventListener":Lhae;
    .restart local v2    # "object":Lhag;
    .restart local v3    # "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    :pswitch_0
    iget-object v0, v2, Lhag;->c:Ljava/lang/String;

    .line 110
    .local v0, "compressUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v4, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Ljava/lang/String;)V

    .line 116
    :goto_1
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v4

    invoke-virtual {v4, v1}, Lhad;->b(Lhae;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->val$path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v0    # "compressUrl":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->val$path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v4

    invoke-virtual {v4, v1}, Lhad;->b(Lhae;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
