.class final Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
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

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 2032
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    .line 1159
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 3032
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    .line 1160
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 4032
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    .line 1162
    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 5032
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    .line 1163
    invoke-interface {v0}, Lbqe;->b()V

    .line 156
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$3;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 170
    return-void
.end method