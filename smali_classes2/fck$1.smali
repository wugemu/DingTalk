.class public final Lfck$1;
.super Ljava/lang/Object;
.source "CirclePostPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

.field final synthetic b:Lfck;


# direct methods
.method public constructor <init>(Lfck;Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;)V
    .locals 0
    .param p1, "this$0"    # Lfck;

    .prologue
    .line 29
    iput-object p1, p0, Lfck$1;->b:Lfck;

    iput-object p2, p0, Lfck$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

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
    .line 29
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1043
    iget-object v0, p0, Lfck$1;->b:Lfck;

    invoke-static {v0}, Lfck;->a(Lfck;)Lcli;

    move-result-object v0

    check-cast v0, Lfdr$b;

    iget-object v1, p0, Lfck$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-interface {v0, p1, v1}, Lfdr$b;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)V

    .line 29
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "code:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 33
    return-void
.end method
