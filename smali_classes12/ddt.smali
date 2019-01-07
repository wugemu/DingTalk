.class public final Lddt;
.super Ljava/lang/Object;
.source "BanWordPresenter.java"

# interfaces
.implements Lddv$a;


# instance fields
.field private a:Lddv$b;


# direct methods
.method public constructor <init>(Lddv$b;)V
    .locals 2
    .param p1, "view"    # Lddv$b;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lddt;->a:Lddv$b;

    .line 15
    iget-object v0, p0, Lddt;->a:Lddv$b;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iget-object v0, p0, Lddt;->a:Lddv$b;

    invoke-interface {v0, p0}, Lddv$b;->setPresenter(Lcjd;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 1
    .param p1, "bannedInfo"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .prologue
    .line 23
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lddt;->a:Lddv$b;

    invoke-interface {v0, p1}, Lddv$b;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    .line 32
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lddt;->a:Lddv$b;

    invoke-interface {v0}, Lddv$b;->e()V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lddt;->a:Lddv$b;

    invoke-interface {v0}, Lddv$b;->e()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
