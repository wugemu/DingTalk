.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$options:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/support/v7/app/AlertDialog;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$dialog:Landroid/support/v7/app/AlertDialog;

    iput-object p3, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 258
    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 259
    .local v3, "confirm":Landroid/widget/Button;
    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 261
    .local v0, "cancel":Landroid/widget/Button;
    if-eqz v3, :cond_1

    .line 262
    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v7, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "confirmTitle"

    invoke-static {v6, v7, v8, v10}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$100(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 263
    .local v5, "confirmTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v7, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "confirmTitleColor"

    invoke-static {v6, v7, v8, v9}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$200(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 265
    .local v4, "confirmColor":I
    if-eqz v5, :cond_0

    .line 266
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 270
    :cond_0
    if-eqz v4, :cond_1

    .line 271
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 272
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 276
    .end local v4    # "confirmColor":I
    .end local v5    # "confirmTitle":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 277
    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v7, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "cancelTitle"

    invoke-static {v6, v7, v8, v10}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$100(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 278
    .local v2, "cancelTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iget-object v7, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$7;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "cancelTitleColor"

    invoke-static {v6, v7, v8, v9}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$200(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "cancelColor":I
    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_2
    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 288
    .end local v1    # "cancelColor":I
    .end local v2    # "cancelTitle":Ljava/lang/String;
    :cond_3
    return-void
.end method
