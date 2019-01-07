.class Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;
.super Ljava/lang/Object;
.source "JsLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/adapter/JsLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogItem"
.end annotation


# instance fields
.field level:I

.field msg:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
