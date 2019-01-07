.class Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    return-object v0
.end method
