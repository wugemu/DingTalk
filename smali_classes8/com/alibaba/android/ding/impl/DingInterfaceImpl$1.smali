.class final Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;
.super Ljava/lang/Object;
.source "DingInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->onApplicationCreate()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/impl/DingInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/impl/DingInterfaceImpl;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;->a:Lcom/alibaba/android/ding/impl/DingInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1$1;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;)V

    invoke-virtual {v0, v1}, Lbbp;->b(Lcma;)V

    .line 173
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    .line 1145
    invoke-direct {p0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;->a()V

    .line 142
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;->a()V

    .line 155
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 150
    return-void
.end method
