.class final Lbbp$81$1;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp$81;->run()V
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbp$81;


# direct methods
.method constructor <init>(Lbbp$81;)V
    .locals 0
    .param p1, "this$1"    # Lbbp$81;

    .prologue
    .line 712
    iput-object p1, p0, Lbbp$81$1;->a:Lbbp$81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 712
    check-cast p1, Ljava/util/List;

    .line 1715
    iget-object v0, p0, Lbbp$81$1;->a:Lbbp$81;

    iget-object v0, v0, Lbbp$81;->b:Lcma;

    invoke-static {v0, p1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 712
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lbbp$81$1;->a:Lbbp$81;

    iget-object v0, v0, Lbbp$81;->b:Lcma;

    invoke-static {v0, p1, p2}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 720
    return-void
.end method
