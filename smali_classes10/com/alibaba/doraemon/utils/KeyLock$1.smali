.class Lcom/alibaba/doraemon/utils/KeyLock$1;
.super Ljava/lang/ThreadLocal;
.source "KeyLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/utils/KeyLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/utils/KeyLock;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/utils/KeyLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/utils/KeyLock;

    .prologue
    .line 33
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock$1;, "Lcom/alibaba/doraemon/utils/KeyLock$1;"
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/KeyLock$1;->this$0:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock$1;, "Lcom/alibaba/doraemon/utils/KeyLock$1;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/utils/KeyLock$1;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock$1;, "Lcom/alibaba/doraemon/utils/KeyLock$1;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
