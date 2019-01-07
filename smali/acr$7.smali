.class final Lacr$7;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
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
        "Labx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcma;

.field final synthetic c:Lacr;


# direct methods
.method constructor <init>(Lacr;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 1015
    iput-object p1, p0, Lacr$7;->c:Lacr;

    iput p2, p0, Lacr$7;->a:I

    iput-object p3, p0, Lacr$7;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1015
    check-cast p1, Labx;

    .line 2018
    if-eqz p1, :cond_0

    iget-object v0, p1, Labx;->a:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2019
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v0, p0, Lacr$7;->c:Lacr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lacr;->a(Lacr;Z)Z

    .line 2022
    iget-object v0, p1, Labx;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2023
    iget v1, p0, Lacr$7;->a:I

    if-eq v0, v1, :cond_2

    .line 2024
    iget-object v0, p0, Lacr$7;->c:Lacr;

    invoke-virtual {v0}, Lacr;->p()V

    .line 2025
    iget-object v0, p0, Lacr$7;->c:Lacr;

    invoke-virtual {v0, p1}, Lacr;->a(Labx;)V

    .line 2026
    iget-object v0, p0, Lacr$7;->b:Lcma;

    if-eqz v0, :cond_2

    .line 2027
    iget-object v0, p0, Lacr$7;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2031
    :cond_2
    iget-object v0, p0, Lacr$7;->c:Lacr;

    iget-object v1, p0, Lacr$7;->c:Lacr;

    invoke-virtual {v1}, Lacr;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacr;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1040
    const-string/jumbo v0, "tryLoginModeChanged, getDingTalkMailLoginMode"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lacr$7;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lacr$7;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1036
    return-void
.end method
