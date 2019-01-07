.class final Lcom/alibaba/android/user/connection/upload/CircleUploadService$1;
.super Ljava/lang/Object;
.source "CircleUploadService.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/upload/CircleUploadService;
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/upload/CircleUploadService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/upload/CircleUploadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/upload/CircleUploadService;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadService$1;->a:Lcom/alibaba/android/user/connection/upload/CircleUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 21
    .line 1024
    invoke-static {}, Lfdy;->a()Lfdy;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/upload/CircleUploadService$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/upload/CircleUploadService$1$1;-><init>(Lcom/alibaba/android/user/connection/upload/CircleUploadService$1;)V

    invoke-virtual {v0, v1}, Lfdy;->a(Lcou;)V

    .line 21
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/connection/upload/CircleUploadService$1;->a:Lcom/alibaba/android/user/connection/upload/CircleUploadService;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/upload/CircleUploadService;->a()V

    .line 41
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 35
    return-void
.end method
