.class public final Ljsh;
.super Ljrh;
.source "WXJSInvokeContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljrh",
        "<",
        "Lcom/taobao/weex/WXSDKInstance;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljro;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljro;)V
    .locals 0
    .param p1, "env"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "promise"    # Ljro;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljrh;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p2, p0, Ljsh;->d:Ljro;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Ljsh;->d:Ljro;

    invoke-virtual {v0, p1}, Ljro;->a(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
