.class final Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1$1;
.super Ljava/lang/Object;
.source "DingInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1$1;->a:Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 158
    .line 1161
    const-string/jumbo v0, "biz/ding"

    invoke-static {v0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->c(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code1"    # Ljava/lang/String;
    .param p2, "reason1"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v0, "biz/ding"

    invoke-static {v0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->c(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 166
    return-void
.end method
