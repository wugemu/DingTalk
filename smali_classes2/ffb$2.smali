.class final Lffb$2;
.super Ljava/lang/Object;
.source "ShieldModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffb;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V
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
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field final synthetic b:Lcma;

.field final synthetic c:Lffb;


# direct methods
.method constructor <init>(Lffb;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lffb;

    .prologue
    .line 71
    iput-object p1, p0, Lffb$2;->c:Lffb;

    iput-object p2, p0, Lffb$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object p3, p0, Lffb$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Void;

    .line 1074
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v0

    iget-object v1, p0, Lffb$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdw;->a(Ljava/util/Collection;)V

    .line 1075
    iget-object v0, p0, Lffb$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lffb$2;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lffb$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lffb$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lffb$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lffb$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 85
    :cond_0
    return-void
.end method
