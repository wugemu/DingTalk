.class public abstract Lcom/taobao/weex/devtools/WeexInspector$Initializer;
.super Ljava/lang/Object;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/WeexInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initializer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$Initializer;->mContext:Landroid/content/Context;

    .line 297
    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/WeexInspector$Initializer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/WeexInspector$Initializer;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$Initializer;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected abstract getInspectorModules()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
