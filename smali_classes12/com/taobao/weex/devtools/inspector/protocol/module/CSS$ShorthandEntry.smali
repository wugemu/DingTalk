.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$ShorthandEntry;
.super Ljava/lang/Object;
.source "CSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShorthandEntry"
.end annotation


# instance fields
.field public important:Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
