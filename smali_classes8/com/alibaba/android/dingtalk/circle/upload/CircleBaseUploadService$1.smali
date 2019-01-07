.class final Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;
.super Ljava/lang/Object;
.source "CircleBaseUploadService.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;

    .prologue
    .line 97
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;->a:Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;, "Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService$1;->a:Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleBaseUploadService;->a()V

    .line 106
    return-void
.end method
