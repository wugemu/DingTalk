.class final Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;
.super Ljava/lang/Object;
.source "OAInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;->b:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 254
    check-cast p1, Ljava/lang/String;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 254
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 265
    return-void
.end method
