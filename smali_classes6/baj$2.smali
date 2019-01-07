.class public final Lbaj$2;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaj;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbaj;


# direct methods
.method public constructor <init>(Lbaj;)V
    .locals 0
    .param p1, "this$0"    # Lbaj;

    .prologue
    .line 128
    iput-object p1, p0, Lbaj$2;->a:Lbaj;

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
    .line 128
    .line 1131
    iget-object v0, p0, Lbaj$2;->a:Lbaj;

    .line 2030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 1131
    invoke-interface {v0}, Lbai$b;->H_()V

    .line 1132
    iget-object v0, p0, Lbaj$2;->a:Lbaj;

    .line 3030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 1132
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbai$b;->a(Z)V

    .line 128
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lbaj$2;->a:Lbaj;

    .line 1030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 141
    invoke-interface {v0}, Lbai$b;->H_()V

    .line 142
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 137
    return-void
.end method
