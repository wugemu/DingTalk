.class final Lbbp$80$1;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp$80;->run()V
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbp$80;


# direct methods
.method constructor <init>(Lbbp$80;)V
    .locals 0
    .param p1, "this$1"    # Lbbp$80;

    .prologue
    .line 689
    iput-object p1, p0, Lbbp$80$1;->a:Lbbp$80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 689
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1692
    iget-object v0, p0, Lbbp$80$1;->a:Lbbp$80;

    iget-object v0, v0, Lbbp$80;->b:Lcma;

    invoke-static {v0, p1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 689
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lbbp$80$1;->a:Lbbp$80;

    iget-object v0, v0, Lbbp$80;->b:Lcma;

    invoke-static {v0, p1, p2}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 697
    return-void
.end method
