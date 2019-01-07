.class final Ldei$4;
.super Ljava/lang/Object;
.source "FaceToFaceCreatePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldei;->a(Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldei;


# direct methods
.method constructor <init>(Ldei;)V
    .locals 0
    .param p1, "this$0"    # Ldei;

    .prologue
    .line 131
    iput-object p1, p0, Ldei$4;->a:Ldei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 131
    check-cast p1, Ljava/util/List;

    .line 2134
    iget-object v0, p0, Ldei$4;->a:Ldei;

    .line 3019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 2134
    invoke-interface {v0}, Ldeg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Ldei$4;->a:Ldei;

    .line 4019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 2135
    invoke-interface {v0, p1}, Ldeg$b;->a(Ljava/util/List;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Ldei$4;->a:Ldei;

    .line 1019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 146
    invoke-interface {v0}, Ldeg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Ldei$4;->a:Ldei;

    .line 2019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 147
    invoke-interface {v0, p1, p2}, Ldeg$b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 142
    return-void
.end method
