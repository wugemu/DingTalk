.class final Lddb$2;
.super Ljava/lang/Object;
.source "CategoryManagerPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddb;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddb;


# direct methods
.method constructor <init>(Lddb;)V
    .locals 0
    .param p1, "this$0"    # Lddb;

    .prologue
    .line 114
    iput-object p1, p0, Lddb$2;->a:Lddb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lddb$2;->a:Lddb;

    .line 1024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 125
    invoke-interface {v0}, Ldda$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lddb$2;->a:Lddb;

    .line 2024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 126
    invoke-interface {v0}, Ldda$b;->H_()V

    .line 127
    iget-object v0, p0, Lddb$2;->a:Lddb;

    .line 3024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 127
    invoke-interface {v0, p1, p2}, Ldda$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 114
    .line 3117
    iget-object v0, p0, Lddb$2;->a:Lddb;

    .line 4024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 3117
    invoke-interface {v0}, Ldda$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    iget-object v0, p0, Lddb$2;->a:Lddb;

    .line 5024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 3118
    invoke-interface {v0}, Ldda$b;->H_()V

    .line 3119
    iget-object v0, p0, Lddb$2;->a:Lddb;

    .line 6024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 3119
    invoke-interface {v0}, Ldda$b;->a()V

    .line 114
    :cond_0
    return-void
.end method
