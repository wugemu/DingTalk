.class final Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder$1;
.super Ljava/lang/Object;
.source "UploadPostRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder$1;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->a(Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;Z)V

    .line 54
    return-void
.end method
