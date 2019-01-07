.class Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;
.super Ljava/lang/Object;
.source "WeexURLConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# instance fields
.field private final impl:Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "friendlyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    invoke-direct {v0, p1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->impl:Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;)Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager$Holder;->impl:Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;

    return-object v0
.end method
