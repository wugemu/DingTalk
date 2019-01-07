.class public final Lro$11;
.super Lcmi;
.source "MailRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Labp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lro;


# direct methods
.method public constructor <init>(Lro;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lro;

    .prologue
    .line 517
    iput-object p1, p0, Lro$11;->b:Lro;

    iput-object p2, p0, Lro$11;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 527
    const-string/jumbo v0, "createConversationEmails"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    iget-object v0, p0, Lro$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lro$11;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 517
    check-cast p1, Labp;

    .line 1520
    iget-object v0, p0, Lro$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lro$11;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 517
    :cond_0
    return-void
.end method
