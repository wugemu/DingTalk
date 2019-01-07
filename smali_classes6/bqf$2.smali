.class final Lbqf$2;
.super Ljava/lang/Object;
.source "ShieldModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqf;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field final synthetic b:Lcma;

.field final synthetic c:Lbqf;


# direct methods
.method constructor <init>(Lbqf;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbqf;

    .prologue
    .line 72
    iput-object p1, p0, Lbqf$2;->c:Lbqf;

    iput-object p2, p0, Lbqf$2;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object p3, p0, Lbqf$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    .line 1075
    invoke-static {}, Lbpe;->e()Lbpe;

    move-result-object v0

    iget-object v1, p0, Lbqf$2;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpe;->a(Ljava/util/Collection;)V

    .line 1076
    iget-object v0, p0, Lbqf$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lbqf$2;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lbqf$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lbqf$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lbqf$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lbqf$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 86
    :cond_0
    return-void
.end method
