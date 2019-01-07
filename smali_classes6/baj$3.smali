.class final Lbaj$3;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaj;->a(Ljava/util/List;)V
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
.field final synthetic a:Lbaj;


# direct methods
.method constructor <init>(Lbaj;)V
    .locals 0
    .param p1, "this$0"    # Lbaj;

    .prologue
    .line 159
    iput-object p1, p0, Lbaj$3;->a:Lbaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 159
    .line 2162
    iget-object v0, p0, Lbaj$3;->a:Lbaj;

    .line 3030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 2162
    invoke-interface {v0}, Lbai$b;->H_()V

    .line 2163
    iget-object v0, p0, Lbaj$3;->a:Lbaj;

    .line 4030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 2163
    invoke-interface {v0}, Lbai$b;->e()V

    .line 159
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lbaj$3;->a:Lbaj;

    .line 1030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 172
    invoke-interface {v0}, Lbai$b;->H_()V

    .line 173
    iget-object v0, p0, Lbaj$3;->a:Lbaj;

    .line 2030
    iget-object v0, v0, Lbaj;->a:Lbai$b;

    .line 173
    invoke-interface {v0, p1, p2}, Lbai$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 168
    return-void
.end method
