.class final Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
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

.field final synthetic b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 131
    .line 1135
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .line 2034
    iget-object v0, v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    .line 1135
    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .line 3034
    iget-object v0, v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    .line 1136
    iget-object v1, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-interface {v0, v1}, Lffa;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$2;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 143
    return-void
.end method
